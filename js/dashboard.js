var currentUsername = "<?php echo $currentUsername?>";
var teamNames = [];
var numbersOfMessages = [];

$(document).ready(function(){

  $.ajax({
    type: "POST",
    url: "services/loadDashBoardComponents.php",
    data:"username=" + currentUsername,
    dataType: "json",
    success: function(result){
      //console.log(result);

      if(result === 0){
        $('#teamAdminInfo').html("You have not created any teams yet.");
        $('#sub-heading').show();
      }else{

        showTeamMessagesOnDashBoard();

        var names = "";

        if(result.length == 1){
          teamNames.push(result[0].teamname);
          $('#teamAdminInfo').html("Your team is " + result[0].teamname + ".");
        }else{
          $.each(result, function(index, item){

            teamNames.push(item.teamname);

            if(index == (result.length - 1)){
              names += item.teamname + ".";
            }else{
              names += item.teamname + ", ";
            }
          });
          $('#teamAdminInfo').html("Your teams are " + names);
        }

        $(".activities").show();
        $(".dc-chart").show();
        $(".lg-chart").show();

      }
    }
  });
});

function showTeamMessagesOnDashBoard(){
  $.ajax({
    type: "POST",
    url: "services/showTeamMessagesOnDashBoard.php",
    data:"username=" + currentUsername,
    dataType: "json",
    success: function(result){
      console.log(result);
      var stringToShow = "";
      $.each(result, function(index, item){

        numbersOfMessages.push(item.numbers);
        stringToShow += "Number of Messages in " + teamNames[index] + " : " + item.numbers + "<br>";

      });

      $(".activitiesDetails").html(stringToShow);

      showTheDonutChart();
      showPerTeamMessagesByCurrentUser();

      getDistinctTimeValuesForMessages();

    }
  });
}

console.log(numbersOfMessages);

function showTheDonutChart(){

  var chart = new Chartist.Pie('.ct-chart-dc', {
    series: numbersOfMessages,
    labels: teamNames
  }, {
    donut: true,
    showLabel: true
  });

  chart.on('draw', function(data) {
    if(data.type === 'slice') {
      // Get the total path length in order to use for dash array animation
      var pathLength = data.element._node.getTotalLength();

      // Set a dasharray that matches the path length as prerequisite to animate dashoffset
      data.element.attr({
        'stroke-dasharray': pathLength + 'px ' + pathLength + 'px'
      });

      // Create animation definition while also assigning an ID to the animation for later sync usage
      var animationDefinition = {
        'stroke-dashoffset': {
          id: 'anim' + data.index,
          dur: 1000,
          from: -pathLength + 'px',
          to:  '0px',
          easing: Chartist.Svg.Easing.easeOutQuint,
          // We need to use `fill: 'freeze'` otherwise our animation will fall back to initial (not visible)
          fill: 'freeze'
        }
      };

      // If this was not the first slice, we need to time the animation so that it uses the end sync event of the previous animation
      if(data.index !== 0) {
        animationDefinition['stroke-dashoffset'].begin = 'anim' + (data.index - 1) + '.end';
      }

      // We need to set an initial value before the animation starts as we are not in guided mode which would do that for us
      data.element.attr({
        'stroke-dashoffset': -pathLength + 'px'
      });

      // We can't use guided mode as the animations need to rely on setting begin manually
      // See http://gionkunz.github.io/chartist-js/api-documentation.html#chartistsvg-function-animate
      data.element.animate(animationDefinition, false);
    }
  });

  // For the sake of the example we update the chart every time it's created with a delay of 8 seconds
  chart.on('created', function() {
    if(window.__anim21278907124) {
      clearTimeout(window.__anim21278907124);
      window.__anim21278907124 = null;
    }
    window.__anim21278907124 = setTimeout(chart.update.bind(chart), 10000);
  });
}

function showPerTeamMessagesByCurrentUser(){

  $.ajax({
    type: "POST",
    url: "services/getMessagesSentByThisUser.php",
    data:"username=" + currentUsername,
    dataType: "json",
    success: function(result){
      console.log(result);

      var stringToShow = "";
      $.each(result, function(index, item){
        stringToShow += "Number of Messages that you have sent in " + teamNames[index] + " : " + item.numbers + "<br>";
      });

      $("#ownMessages").html(stringToShow);

    }
  });


}

function onlyUnique(value, index, self) { 
    return self.indexOf(value) === index;
}

function getDistinctTimeValuesForMessages(){

  var dates = [];
  var chats = [];

  var custom = {};

  $.each(teamNames, function(index, item){

    //console.log(item, index);

    $.ajax({
      type: "POST",
      url: "services/getDistinctTimeValuesForMessages.php",
      data:"tableName=" + item,
      dataType: "json",
      async: false,
      success: function(result){
        //console.log("R",result.numbers);
        //console.log(result.values);

        $.each(result.numbers, function(index1, item1){                
          chats.push(item1.count);
        });

        $.each(result.values, function(index1, item1){
          var year = item1.datetime.substr(2, 2);
          var month = item1.datetime.substr(5, 2);
          
          if(month == "01"){
            month = "Jan";
          }else if(month == "02"){
            month = "Feb";
          }else if(month == "03"){
            month = "Mar";
          }else if(month == "04"){
            month = "Apr";
          }else if(month == "05"){
            month = "May";
          }else if(month == "06"){
            month = "Jun";
          }else if(month == "07"){
            month = "Jul";
          }else if(month == "08"){
            month = "Aug";
          }else if(month == "09"){
            month = "Sept";
          }else if(month == "10"){
            month = "Oct";
          }else if(month == "11"){
            month = "Nov";
          }else if(month == "12"){
            month = "Dec";
          }

          dates.push(month + " " + year);
        });

        eval("custom." + item + "= chats;");
        chats = [];

      }
    });
  });

  var uniqueDates = dates.filter(onlyUnique);
  //uniqueDates.push("Future");
  uniqueDates.push(" ");
  //console.log(uniqueDates);

  var chart = new Chartist.Line('.ct-chart-lg', {
    labels: [],
    series: []
  }, {
    // Remove this configuration to see that chart rendered with cardinal spline interpolation
    // Sometimes, on large jumps in data values, it's better to use simple smoothing.
    lineSmooth: Chartist.Interpolation.simple({
      divisor: 2
    }),
    fullWidth: true,
    chartPadding: {
      right: 20
    },
    low: 0
  });

  //console.log(chart);
  var temp;
  $.each(teamNames, function(index, item){
    eval("temp = chart.data.series;");
    eval("temp.push(custom." + item + ");");
  });

  chart.data.labels = uniqueDates;

}