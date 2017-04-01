<?php

	include("connectToDB.php");

	$id = $_SESSION['id'];

	$query = "SELECT * FROM users WHERE id = '".$id."' LIMIT 1 ";

	$result = mysqli_query($link, $query);
    $row = mysqli_fetch_assoc($result);

    $username = $row['email'];

?>