<?php
	
	include("connectToDB.php");

	$query = "CREATE TABLE IF NOT EXISTS '".$TeamName."' ( id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id), message TEXT NOT NULL, sender TEXT NOT NULL)";

	//To run the above query
	//mysqli_query($link, $query);

?>