<?php 

	include("../connectToDB.php");

	$query = "SELECT teamname FROM teamdetails WHERE teamadmin = '".$_POST['username']."'";
	$result = mysqli_query($link, $query);

	if(mysqli_num_rows($result) > 0){

		$arr = array();
        $row_count = mysqli_num_rows($result);

        while ($row = mysqli_fetch_assoc($result)) {
            array_push($arr, $row);
        }

        echo json_encode($arr);

	}else{

		echo 0;

	}

?>