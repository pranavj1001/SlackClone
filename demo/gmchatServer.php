<?php
	include("actions.php"); 
  	include("services/loadProfile.php");

  	$lastchayid=$_POST['lastchatid'];

  	if(isset($_POST['message'])){

  	$queryToGetTeamName="SELECT `teamname` From `teamdetails` WHERE `id`='".$_SESSION['teamid']."'";

  	$result=mysqli_query($link,$queryToGetTeamName);
  	$row=mysqli_fetch_assoc($result);
  	$TeamName=$row['teamname'];

  	$insert="INSERT INTO '".$TeamName."'()VALUES()";

  	}





?>
