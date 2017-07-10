<?php 
  include("actions.php"); 
  include("services/loadProfile.php");
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>User DashBoard</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/dash.css" rel="stylesheet">
    <link rel="stylesheet" href="css/chartist.min.css">
  </head>

  <body>
    <?php if(isset($_SESSION['id'])){ ?> 
    <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">Dashboard</a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Settings</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Help</a>
          </li>
        </ul>
        <div class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="#">Overview <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Chat Graph</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Recent Activities</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" href="teamSignUp.php">Create a new team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="dissolveTeam" href="dissolveTeam.php">Dissolve one of your teams</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="teamSignIn.php">Join an existing team</a>
            </li>
            <!-- <li class="nav-item">
              <a class="nav-link" href="#">Team Members</a>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" href="#">Save Chat Data</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" href="#">Chat to a friend</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Send Invite link to a friend</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Find Friends</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Block Users</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" id="logOut" href="?function=logout" style="color: red;">Log Out</a>
            </li>
          </ul>
        </nav>

        <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
          <h1><?php echo $currentUsername; ?>'s Dashboard</h1>

          <section>
            <h2 class="heading" id="teamAdminInfo"></h2>
            <h5 id="sub-heading">Want to create one? <a class="noDecoration" href="teamSignUp.php">Click here.</a></h5>
          </section>

          <section class="activities">
            <h2 class="activitiesHeading">Activities of your team</h2>
            <h5 class="activitiesDetails"></h5>
          </section>

          <section class="dc-chart">
            <div class="row">
              <div class="col">
                <h5>Below shown Information is about each of your team's total chat share. </h5>
                <div class="ct-chart-dc ct-series-a ct-slice-donut"></div>
              </div>
              <div class="col dc-info">
                <h5 id="ownMessages"></h5>
              </div>
            </div>
          </section>

          <section class="lg-chart">
            <h5>Below shown Information is about each of your team's chat history.</h5>
            <div class="ct-chart-lg"></div>
          </section>

        </main>
      </div>
    </div>
    <?php }else{
      header('Location: signIn.php');
      }?>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jQuery320.min.js"></script>
    <script src="js/chartist.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <script type="text/javascript">

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

    </script>

  </body>
</html>
