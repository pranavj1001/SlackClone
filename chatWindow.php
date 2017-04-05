<?php
	include("actions.php"); 
  	include("services/loadProfile.php");

  	$dbname="slackclone";

  	 $sql = "SHOW TABLES FROM $dbname";
	 $result = mysql_query($sql);
	 $arrayCount = 0
	 while ($row = mysql_fetch_row($result)) {
	  $tableNames[$arrayCount] = $row[0];
	  echo $tableNames[$arrayCount];
	  $arrayCount++; //only do this to make sure it starts at index 0
	 }





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