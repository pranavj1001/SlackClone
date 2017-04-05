 <?php
	include("actions.php"); 
  	include("services/loadProfile.php");

  	$lastchatid=$_POST['lastchatid'];

  	if(isset($_POST['message'])){

  	$queryToGetTeamName="SELECT `teamname` From `teamdetails` WHERE `id`='".$_SESSION['teamid']."'";

  	$result=mysqli_query($link,$queryToGetTeamName);
  	$row=mysqli_fetch_assoc($result);
  	$TeamName=$row['teamname'];

  	$insert="INSERT INTO '".$TeamName."'(`chatid`,`message`,`sender`)VALUES('".$_POST['lastchatid']."','".$_POST['message']."','".$_POST['sender']."')";

    $insert_result = mysqli_query($link,$insert);
}


  	}
    $select="SELECT *
            FROM '".$TeamName."'
            WHERE chat_id > '".$lastchatid."'
            ";

    $result = mysqli_query($link,$select);
    $arr =array();
    $row_count=mysqli_num_rows($result);


    if($row_count>0){
      while($row=mysqli_fetch_array($result)){
        array_push($arr, $row);
      }
    }


    //close mysqli connection
    mysqli_close($con);

    //return the response as JSON
    echo json_encode($arr);





?>
