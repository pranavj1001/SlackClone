<?php

	include("actions.php"); 
  	include("services/loadProfile.php");
  	include("services/getTeamName.php");
  	include("services/createTableForTeam.php");
  	include("services/loadPreviousMessagesForTeam.php");

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

	<title>Chat Window</title>

	<!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/chatWindow.css" rel="stylesheet">

<style type="text/css">
  .main{
    overflow-y: auto;
    height: 385px;
/*    width: 88%;
*/    /*border: 1px solid black;*/
    border: 1px solid rgba(0,0,0,.15);
    border-radius: .25rem;
    margin-top: 12px;
    margin-right: auto;
    margin-left: auto;
    /*position: absolute;*/
}
.left{
    position: relative;
    color:red;
    border:1px solid transparent;
    padding: 10px;
    margin: 10px;
    float: left;
    width: 60%;
    border-radius: 10px;
    background-color: #C0C0C0;
    color: white;
    border-top-left-radius:0px;
}

.right{
/*  text-align: right;*/
    position: relative;  
    border:1px solid transparent;
    padding: 10px;
    margin: 10px;
    float: right;
    width: 60%;
    background-color: #00b359;
    border-radius: 10px;
    color: white;
    border-top-right-radius:0px;
}
.timePos{
      position: absolute;
      bottom: 3px;
      right: 10px;
      color: rgba(0,0,0,0.45);
      font-size: 0.75em;
}
.chat{
  margin-bottom: 20px;
}

.mg-t-20{
        margin-top:20px;
}
.mg-t-16{
  margin-top: 16px;
}
.width-100{
  width: 100%;
  border:1px solid rgba(0,0,0,.15);
}

</style>
</head>
<body>

	<?php if (isset($_SESSION['teamid'])) { ?>

	<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse">
      <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#"><?php echo $TeamName; ?>'s ChatWindow</a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Chats <span class="sr-only">(current)</span></a>
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
          <a class="btn btn-outline-danger my-2 my-sm-0" href="?function=teamLogout">Logout</a>
        </div>
      </div>
    </nav>

        <!-- <div class="container chatsContainer">
        	<textarea class="form-control" id="messageBox" readonly="on"></textarea>
        </div> -->
                <!-- <div class="container">
                  <div class="row">
                  <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
                  </nav>
                  <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
                    <div class="main">
                    </div>
                  </main>
                  </div> -->
          <!-- <div class="row">
            <div class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
            <input class="form-control" type="text" id="newMessage" name="newMessage">
            <button class="btn btn-primary" id="sendMessageButton">Send</button>
            </div>
          </div> -->
                  <!-- </div>

                  <div class="container">
                    <div class="row newMessageContainer">
                    <div class="col-md-8 offset-md-2">
                    	<input class="form-control " type="text" id="newMessage" name="newMessage">
                    </div>
                    <div class="col-md-2 offset-md-10" style="display: contents;">
            			    <button class="btn btn-primary" id="sendMessageButton">Send</button>
                    </div>
            		    </div>
                  </div>

          		<div class="container " >
                <div class="row">
                  <div class="alert alert-danger col-sm-9 offset-sm-3 col-md-10 offset-md-2 " id="alert"></div>
                </div>  
              </div>	 -->
  <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 sidebar" style="padding-left: 0px">
          <ul class="nav nav-pills flex-column">
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Team Members <span class="sr-only">(current)</span> </a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#">Members</a>
            </li>
            <li class="nav-item width-100">
              <a class="nav-link" href="#" >Members</a>
            </li>
          </ul>
          
        </div>
        <div class="col-md-9">
          <div class="row">
            <div class="col-md-12">
              <div class="main" id="chatarea">
                
              </div>
            </div>
          </div>
          <div class="row mg-t-16">
            <div class="col-md-10">
              <input class="form-control " type="text" id="newMessage" name="newMessage">
            </div>
            <div class="col-md-2">
              <button class="btn btn-primary" id="sendMessageButton" style="width: 100%">Send</button>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="alert alert-danger mg-t-20" id="alert" role="alert"></div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<?php 
		}else{
			header('Location: http://localhost/SlackClone/dash.php');
		}
	?>

	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jQuery320.min.js"></script>
    <script type="text/javascript" src="js/BotFiles/remedy.js"></script>
    <script type="text/javascript" src="js/BotFiles/botServices.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <script type="text/javascript">

      var oldNumberOfRows;

    	$('#alert').hide();

    	$('#sendMessageButton').click(function(){

    		$('#alert').hide();

    		var currentUsername = "<?php echo $currentUsername; ?>";
    		var teamName = "<?php echo $TeamName; ?>";
        var message = $('#newMessage').val(); 
        var messageCallsBot = false;

    		if(message != ""){

          if ((~message.indexOf("OK Bot")) || (projectDefineSteps) || (issueDefineSteps == 1) || (issueDefineSteps == 2) || (issueShowLatestSteps) || (issueShowSteps) || (stockCompanyPause) || (issueDeletion) || (doctorBotSevere)){
            messageCallsBot = true;
            findTheServiceRequired(message, teamName, currentUsername);
            //console.log(messageCallsBot);
          }

          if(messageCallsBot){
            if(!dontSaveThisUserMessage){
              var currentDateTimeInISOFormat = new Date(Date.now() - ((new Date()).getTimezoneOffset() * 60000)).toISOString().slice(0, 19).replace('T', ' ');
              $.ajax({
                type: "POST",
                url: "actions.php?actions=saveMessage",
                data:"teamname=" + teamName + "&sender=" + currentUsername + "&message=" + message  + "&datetime=" + currentDateTimeInISOFormat,
                success: function(result){
                  if(result == "1"){
                    //console.log("Success");
                    $('#newMessage').val("");                 
                  }else{
                    console.log("Failure");
                    $('#alert').html(result).show();
                  }
                }
              });
            }
            if(!dontAllowBotToSendMessage){
              var currentDateTimeInISOFormat = new Date(Date.now() - ((new Date()).getTimezoneOffset() * 60000)).toISOString().slice(0, 19).replace('T', ' ');
              $.ajax({
                type: "POST",
                url: "actions.php?actions=saveMessage",
                data:"teamname=" + teamName + "&sender=bot&message=" + botMessage + "&datetime=" + currentDateTimeInISOFormat,
                success: function(result){
                  if(result == "1"){
                    //console.log("Success");
                    $('#newMessage').val("");
                  }else{
                    console.log("Failure");
                    $('#alert').html(result).show();
                  }
                }
              });
            }
          }else if(!messageCallsBot){
            var currentDateTimeInISOFormat = new Date(Date.now() - ((new Date()).getTimezoneOffset() * 60000)).toISOString().slice(0, 19).replace('T', ' ');
            $.ajax({
              type: "POST",
              url: "actions.php?actions=saveMessage",
              data:"teamname=" + teamName + "&sender=" + currentUsername + "&message=" + message  + "&datetime=" + currentDateTimeInISOFormat,
              success: function(result){
                if(result == "1"){
                  //console.log("Success");
                  $('#newMessage').val("");                 
                }else{
                  console.log("Failure");
                  $('#alert').html(result).show();
                }
              }
            });
          }

    		}else{
    			$('#alert').html("Please Enter some text to send the message").show();
    		}

    	});

      //var previousDate;

      function updateMessage(){

            var teamName = "<?php echo $TeamName; ?>";
            var currentUsername = "<?php echo $currentUsername; ?>";
            
           
            $.ajax({
                type : "POST",
                url : "actions.php?actions=updateMessage",
                data : "teamname="+teamName,
                // data : "teamname="+teamName,
                dataType : "json",
                success : function(response,status,http){

                  // $("#messageBox").val("");
                  $( ".main" ).empty();
                  $.each(response,function(index,item){
                      // $("#messageBox").val($("#messageBox").val() + item.sender+" : "+item.message+"\n");
                      // lastMessageId=item.id;
                      var temp=item.sender; 
                      //console.log(item);
                      var addMessage=item.sender+":"+item.message;
                      //console.log(item.datetime);
                      var dt=new Date(item.datetime);
                      var m=dt.getMinutes();
                      var h=dt.getHours();
                      var s=dt.getSeconds();
                      var ampn="";
                      ampn=(h>=12)?"pm":"am";
                      h=(h>12)?h-12:h;
                      h=(h=='00')?12:h;
                      //var time=h+":"+m+":"+s+" "+ampn;
                      var time=dt.getDay()+"-"+dt.getMonth()+"-"+dt.getFullYear()+"    "+h+":"+m+":"+s+" "+ampn;
                      //console.log(time);
                      if (temp==currentUsername){
                            // $("<br>").insertAfter($("<div>"+addMessage+"</div>").addClass("right").appendTo(".main"));
                            var t="<div class='right'><div class='chat'>"+addMessage+"</div><div class='timePos'>"+time+"</div></div><br>";
                            $(t).appendTo(".main");
                      }
                      else{
                            // $("<br>").insertAfter($("<div>"+addMessage+"</div>").addClass("left").appendTo(".main"));
                            var t1="<div class='left'><div class='chat'>"+addMessage+"</div><div class='timePos'>"+time+"</div></div><br>";
                            $(t1).appendTo(".main");
                      }
                    });
                  },
                error : function (http,status,error) {
                    alert ("Some Error Ocurred : "+error);
                }

            });
        };

      function checkDataBase(){
        var teamName = "<?php echo $TeamName; ?>";
         
          $.ajax({
            type : "POST",
            url : "actions.php?actions=checkForChangesInTable",
            data : "teamname="+teamName,
            success : function(result){
              //console.log(result);
              if(oldNumberOfRows != result){
                updateMessage();
              }
            }
          });
      };

      updateMessage();

      setInterval(checkDataBase,1000);

   	</script>

</body>
</html>