<?php
	
	include("connectToDB.php");
	include("getTeamName.php");

    //this store team chatdetails
	$query = "CREATE TABLE IF NOT EXISTS `slackclone`.`".$TeamName."` ( `id` INT NOT NULL AUTO_INCREMENT , `sender` TEXT NOT NULL , `message` TEXT NOT NULL , `datetime` DATETIME NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB";

	//To run the above query
	mysqli_query($link, $query);

?>