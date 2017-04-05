<?php
	
	include("connectToDB.php");

	$queryToGetTeamName = "SELECT `teamname` From `teamdetails` WHERE `id`='".$_SESSION['teamid']."'";

  	$result = mysqli_query($link,$queryToGetTeamName);
  	$row = mysqli_fetch_assoc($result);
  	$TeamName = $row['teamname'];

?>