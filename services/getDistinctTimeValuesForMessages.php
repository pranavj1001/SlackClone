<?php 

	include("../connectToDB.php");

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