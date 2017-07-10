<?php 

	include("../connectToDB.php");

	// //Get the tables where currentUser is the teamadmin
	// $query = "SELECT teamname FROM teamdetails WHERE teamadmin = '".$_POST['username']."'";
	// $result = mysqli_query($link, $query);

	// //First Loop
	// if(mysqli_num_rows($result) > 0){

	// 	//declare variables
	// 	$distinctTimeValuesCount = array();
	// 	$distinctTimeValues = array();
	// 	$tableNames = array();

	// 	//traverse through each team table
	// 	$index1 = 0;
 //        while ($row1 = mysqli_fetch_assoc($result)) {
 //        	//store the table names
 //        	$tableNames[$index1] = $row1;
            
 //            //Get the distinct dates
 //        	$query = "SELECT DISTINCT datetime FROM ".$tableNames[$index1]['teamname']." GROUP BY MONTH(`datetime`)";
 //        	$newResult = mysqli_query($link, $query);

 //        	//Second Loop
 //        	if(mysqli_num_rows($newResult) > 0){

 //        		$index2 = 0;
 //        		while ($row2 = mysqli_fetch_assoc($newResult)) {
 //        			//store the distinct dates
 //        			$distinctTimeValues[$index2] = $row2;

 //        			//Get the count of rows for each distinct date
 //        			$query = "SELECT COUNT(datetime) FROM ".$tableNames[$index1]['teamname']." WHERE datetime = '".$distinctTimeValues[$index2]['datetime']."'";
 //        			$insideResult = mysqli_query($link, $query);

 //        			//Third Loop
 //        			if(mysqli_num_rows($insideResult) > 0){

 //        				while ($row3 = mysqli_fetch_assoc($insideResult)) {
        					
 //        				}

 //        			}else{

 //        			}

 //        			$index2++;

 //        		}

 //        	}else{

 //        	}

 //        	$index1++;

 //        }

 //        echo json_encode($distinctTimeValuesCount);

	// }else{

	// 	echo 0;

	// }

	$query = "SELECT DISTINCT datetime FROM ".$_POST['tableName']." GROUP BY MONTH(`datetime`)";
	$result = mysqli_query($link, $query);

	if(mysqli_num_rows($result) > 0){

		$distinctTimeValues = array();
		$distinctTimeValuesCount = array();

		$index1 = 0;
		while ($row1 = mysqli_fetch_assoc($result)) {
			$distinctTimeValues[$index1] = $row1;

			$query = "SELECT COUNT(datetime) as count FROM ".$_POST['tableName']." WHERE datetime = '".$distinctTimeValues[$index1]['datetime']."'";
       			$insideResult = mysqli_query($link, $query);

       		while ($row2 = mysqli_fetch_assoc($insideResult)) {
		        array_push($distinctTimeValuesCount, $row2);
		    }

		    $index1++;

		}

		echo json_encode(array('numbers'=>$distinctTimeValuesCount, 'values'=>$distinctTimeValues));

	}else{

		echo 0;

	}

?>