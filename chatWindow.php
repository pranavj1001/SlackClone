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

</head>
<body>

	<?php if (isset($_SESSION['teamid'])) { ?>

	<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
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

        <div class="container chatsContainer">
        	<textarea class="form-control" id="messageBox" readonly="on"></textarea>
        </div>
        <div class="container newMessageContainer">
        	<input class="form-control" type="text" id="newMessage" name="newMessage">
			<button class="btn btn-primary" id="sendMessageButton">Send</button>
		</div>

		<div class="container alert alert-danger" id="alert"></div>	

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
    <script type="text/javascript" src="js/botServices.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <script type="text/javascript">

    	$('#alert').hide();

    	$('#sendMessageButton').click(function(){

    		$('#alert').hide();

    		var currentUsername = "<?php echo $currentUsername; ?>";
    		var teamName = "<?php echo $TeamName; ?>";
        var message = $('#newMessage').val(); 
        var messageCallsBot = false;

    		if(message != ""){

          if ((~message.indexOf("OK Bot")) || (projectDefineSteps) || (issueDefineSteps == 1) || (issueDefineSteps == 2) ){
            messageCallsBot = true;
            findTheServiceRequired(message, teamName, currentUsername);
            //console.log(messageCallsBot);
          }

          if(messageCallsBot){
            $.ajax({
              type: "POST",
              url: "actions.php?actions=saveMessage",
              data:"teamname=" + teamName + "&sender=" + currentUsername + "&message=" + message,
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
            $.ajax({
              type: "POST",
              url: "actions.php?actions=saveMessage",
              data:"teamname=" + teamName + "&sender=bot&message=" + botMessage,
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
          }else if(!messageCallsBot){
            $.ajax({
              type: "POST",
              url: "actions.php?actions=saveMessage",
              data:"teamname=" + teamName + "&sender=" + currentUsername + "&message=" + message,
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

	    function updateMessage(){

	        var teamName = "<?php echo $TeamName; ?>";
	       
	        $.ajax({
	        	type : "POST",
	          url : "actions.php?actions=updateMessage",
	          data : "teamname="+teamName,
	          dataType : "json",
	          success : function(response,status,http){
	            $("#messageBox").val("");
	            $.each(response,function(index,item){

	            	$("#messageBox").val($("#messageBox").val() + item.sender+" : "+item.message+"\n");
	             //lastMessageId=$item.id;

	            });
				    },
	          error : function (http,status,error) {
	              alert ("Some Error Ocurred : "+error);
	          }

	        });
	    };

	    updateMessage();

	    setInterval(updateMessage,1000);

   	</script>

</body>
</html>