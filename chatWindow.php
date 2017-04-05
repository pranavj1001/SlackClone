<?php
	include("actions.php"); 
  	include("services/loadProfile.php");
  	include("services/getTeamName.php");

  	$query = mysqli_query($link,"CREATE TABLE IF NOT EXISTS '".$TeamName."' (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY(id),
        message    TEXT NOT NULL,
        sender   TEXT NOT NULL
    )");

?>

<!DOCTYPE html>
<html>
<head>
	<title>Chat Window</title>
</head>
<body>
	<?php if (isset($_SESSION['teamid'])) { ?>
	<a href="?function=teamLogout"">Logout</a>

        
        <br>
		<textarea rows="20" id="message_box" readonly="">
			
		</textarea>
		<br>
		<input type="text" id="message" name="Message">
		<button id="send_message">Send</button>


	<?php 
		}else{
			header('Location: http://localhost/SlackClone/dash.php');
		}
	?>

	    
	


</body>
</html>