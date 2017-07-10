<?php 

	include("../connectToDB.php");

	$query = "SELECT teamname FROM teamdetails WHERE teamadmin = '".$_POST['username']."'";
	$result = mysqli_query($link, $query);

	if(mysqli_num_rows($result) > 0){

	$tableNames = array();
	$numbers = array();

	$index = 0;
	while($row = mysqli_fetch_assoc($result)){ // loop to store the data in an associative array.
	    $tableNames[$index] = $row;

	    $query = "SELECT COUNT(message) as numbers FROM ".$tableNames[$index]['teamname']." WHERE sender = '".$_POST['username']."'";
	    $newresult = mysqli_query($link, $query);

	    while ($newrow = mysqli_fetch_assoc($newresult)) {
	        array_push($numbers, $newrow);
	    }

	    $index++;

	}

	echo json_encode($numbers);

	}else{

	echo 0;

	}

?>