<?php
	include("actions.php"); 
  	include("services/loadProfile.php");
?>

<!DOCTYPE html>
<html>
<head>
	<title>Chat Window</title>
</head>
<body>
	<?php if (isset($_SESSION['teamid'])) { ?>
	<a href="?function=teamLogout"">Logout</a>
	<?php 
		}else{
			header('Location: http://localhost/SlackClone/dash.php');
		}
	?>
</body>
</html>