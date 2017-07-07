<?php

    include("connectToDB.php");

    $allSetToGo = true;

    //loginSignup action
    if(isset($_GET['actions'])){

        if($_GET['actions'] == "loginSignup"){

            $error = "";

            if($_POST['loginActive'] == "0"){
                if(!$_POST['username']){
                    $error = "An username is required";
                }
            }
            
            //if email field is empty
            if(!$_POST['email']){
                
                $error = "An email address is required";
            
            //if password field is empty
            }else if(!$_POST['password']){
                
                $error = "A password is required";
            
            //if not a valid email is used
            }else if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === false) {
                
                $error = "Please enter a valid email address";
                
            }
            
            //discontinue if error is there
            if($error != ""){
                echo $error;
                exit();
            }
            
            //if user wants to sign up
            if($_POST['loginActive'] == "0"){
                
                $query = "SELECT * FROM users WHERE email = '".mysqli_real_escape_string($link, $_POST['email'])."' LIMIT 1";
                $result = mysqli_query($link, $query);
                if(mysqli_num_rows($result) > 0){
                    $allSetToGo = false;
                    $error = "That email address is already taken";
                    echo $error;
                }
                $query = "SELECT * FROM users WHERE username = '".mysqli_real_escape_string($link, $_POST['username'])."' LIMIT 1";
                $result = mysqli_query($link, $query);
                if(mysqli_num_rows($result) > 0){
                    $allSetToGo = false;
                    $error = "That username address is already taken";
                    echo $error;
                }
                if($allSetToGo){
                    $query = "INSERT INTO users (`username`, `email`, `password`) VALUES('".mysqli_real_escape_string($link, $_POST['username'])."','".mysqli_real_escape_string($link, $_POST['email'])."','".mysqli_real_escape_string($link, $_POST['password'])."')";
                    if(mysqli_query($link, $query)){
                        $_SESSION['id'] = mysqli_insert_id($link);
                        $query = "UPDATE users SET password = '".md5(md5($_SESSION['id']).$_POST['password'])."' WHERE id = '".$_SESSION['id']."' LIMIT 1";
                        mysqli_query($link, $query);
                        echo 1;
                    }else{
                        $error = "Sorry, our bad! Couldn't add ya, Please try again later";
                    }
                }
            //if user wants to log in  
            }else{
                $query = "SELECT * FROM users WHERE email = '".mysqli_real_escape_string($link, $_POST['email'])."' LIMIT 1";
                $result = mysqli_query($link, $query);
                $row = mysqli_fetch_assoc($result);
                if($row['password'] == md5(md5($row['id']).$_POST['password'])){
                    echo 1;
                    $_SESSION['id'] = $row['id'];
                }else{
                    $error = "Sorry, could not find this user. Did you enter the correct login credentials?";
                }
            }
            
            if($error != ""){
                echo $error;
                exit();
            }
            
        }

        if($_GET['actions'] == "createTeam"){

            $error = "";

            $query = "SELECT * FROM teamdetails WHERE teamname = '".mysqli_real_escape_string($link, $_POST['teamname'])."' LIMIT 1";
                $result = mysqli_query($link, $query);
                if(mysqli_num_rows($result) > 0){
                    $allSetToGo = false;
                    $error = "That Team Name is already taken";
                    echo $error;
                }else{
                    $query = "INSERT INTO teamdetails (`teamadmin`, `teamname`, `teampassword`) VALUES('".mysqli_real_escape_string($link, $_POST['teamadmin'])."','".mysqli_real_escape_string($link, $_POST['teamname'])."','".mysqli_real_escape_string($link, $_POST['teampassword'])."')";
                    if(mysqli_query($link, $query)){
                        $_SESSION['teamid'] = mysqli_insert_id($link);
                        $query = "UPDATE teamdetails SET teampassword = '".md5(md5($_SESSION['teamid']).$_POST['teampassword'])."' WHERE id = '".$_SESSION['teamid']."' LIMIT 1";
                        mysqli_query($link, $query);
                        echo 1;
                    }else{
                        $error = "Sorry, our bad! Couldn't add your team, Please try again later";
                    }
                }

                if($error != ""){
                    echo $error;
                    exit();
                }

        }

        if($_GET['actions'] == "joinTeam"){

            $error = "";

            $query = "SELECT * FROM teamdetails WHERE teamname = '".mysqli_real_escape_string($link, $_POST['teamname'])."' LIMIT 1";
                $result = mysqli_query($link, $query);
                $row = mysqli_fetch_assoc($result);
                if($row['teampassword'] == md5(md5($row['id']).$_POST['teampassword'])){
                    echo 1;
                    $_SESSION['teamid'] = $row['id'];
                    //echo $_SESSION['teamid'];
                }else{
                    $error = "Sorry, could not find this team. Did you enter the correct login credentials?";
                }

                if($error != ""){
                    echo $error;
                    exit();
                }            

        }

        if($_GET['actions'] == "saveMessage"){

            $error = "";

            if($_POST['message'] != ""){

                $query = "INSERT INTO ".$_POST['teamname']." (`sender`, `message`, `datetime`) VALUES('".mysqli_real_escape_string($link, $_POST['sender'])."', '".mysqli_real_escape_string($link, $_POST['message'])."', '".mysqli_real_escape_string($link, $_POST['datetime'])."')";

                if(mysqli_query($link, $query)){
                    echo 1;
                }else{
                    $error = "Sorry, our server might be down, couldn't send your message";
                }

            }else{
                $error = "Please Enter some text to send the message";
            }

            if($error != ""){
                echo $error;
                exit();
            }        

        }

        if($_GET['actions'] == 'updateMessage'){

            $error = "";

            $query = "SELECT * FROM ".$_POST['teamname'];
            $result = mysqli_query($link,$query);
            $arr = array();
            $row_count = mysqli_num_rows($result);
            
            if($row_count > 0){
                while ($row=mysqli_fetch_array($result)) {
                    array_push($arr, $row);
                }
            }
            echo json_encode($arr);

            if($error != ""){
                echo $error;
                exit();
            }

        }

        if($_GET['actions'] == 'createANewProject'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];

            $query = "SHOW TABLES LIKE '".$tableName."'";

            $result = mysqli_query($link, $query);
            if(mysqli_num_rows($result) > 0){

                echo 2;
                
            }else{

                $query = "CREATE TABLE IF NOT EXISTS `slackclone`.`".$tableName."` ( `id` INT NOT NULL AUTO_INCREMENT , `issuedescription` TEXT NOT NULL , `createdby` TEXT NOT NULL , `datetime` DATETIME NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB";

                if(mysqli_query($link, $query)){

                    $query = "INSERT INTO `".$tableName."` (`id`, `issuedescription`, `createdby`, `datetime`) VALUES ('0', 'no issues found', 'admin', '".$_POST['datetime']."')";

                    if(mysqli_query($link, $query)){
                        echo 1;
                    }else{
                        echo 3;
                    }    

                }else{
                    $error = "Sorry, our server might be down, couldn't create a new project";
                }
            }

            if($error != ""){
                echo $error;
                exit();
            }

        }

        if($_GET['actions'] == 'checkForThisTable'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];

            $query = "SHOW TABLES LIKE '".$tableName."'";

            $result = mysqli_query($link, $query);
            if(mysqli_num_rows($result) > 0){

                echo 1;
                
            }else{

                echo 2;
            }

            if($error != ""){
                echo $error;
                exit();
            }

        }

        if($_GET['actions'] == 'commitAnIssue'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];

            $query = "SHOW TABLES LIKE '".$tableName."'";

            $result = mysqli_query($link, $query);
            if(mysqli_num_rows($result) > 0){

                $query = "INSERT INTO ".$tableName." (`issuedescription`, `createdby`, `datetime`) VALUES('".mysqli_real_escape_string($link, $_POST['issueData'])."', '".mysqli_real_escape_string($link, $_POST['username'])."', '".mysqli_real_escape_string($link, $_POST['datetime'])."')";

                if(mysqli_query($link, $query)){
                    echo 1;
                }else{
                    $error = "Sorry, our server might be down, couldn't commit an issue";
                }
                
            }else{

                echo 2;
            }

            if($error != ""){
                echo $error;
                exit();
            }

        }

        //SELECT * FROM table WHERE id=(SELECT MAX(id) FROM TABLE)

        if($_GET['actions'] == 'showLatestIssue'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];

            $query = "SELECT * FROM ".$tableName." WHERE id=(SELECT MAX(id) FROM ".$tableName.") LIMIT 1";

            $result = mysqli_query($link, $query);
            $arr = array();
            $row_count = mysqli_num_rows($result);
            
            if($row_count > 0){
                while ($row=mysqli_fetch_array($result)) {
                    array_push($arr, $row);
                }
            }

            if($error != ""){
                echo $error;
                exit();
            }

            echo json_encode($arr);

        }

        if($_GET['actions'] == 'showIssue'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];

            $query = "SELECT * FROM ".$tableName." WHERE id = ".$_POST['issueId']." LIMIT 1";

            $result = mysqli_query($link, $query);
            $arr = array();
            $row_count = mysqli_num_rows($result);
            
            if($row_count > 0){
                while ($row=mysqli_fetch_array($result)) {
                    array_push($arr, $row);
                }
            }

            if($error != ""){
                echo $error;
                exit();
            }

            echo json_encode($arr);

        }

        if($_GET['actions'] == 'checkForChangesInTable'){

            $error = "";
            $result = 0;

            $query = "SELECT COUNT(*) FROM ".$_POST['teamname']."";

            $result = mysqli_query($link, $query);

            echo $result;

            if($error != ""){
                echo $error;
                exit();
            }

        }

        if($_GET['actions'] == 'deleteIssue'){

            $error = "";
            $tableName = $_POST['teamname'].$_POST['projectname'];
        
            $query = "SELECT COUNT(*) FROM ".$tableName."";

            $maxID = mysqli_query($link, $query);

            if($_POST['issueId'] > $maxID){
                echo 2;
            }else{

                $query = "SELECT * FROM ".$tableName." WHERE id = ".$_POST['issueId']." LIMIT 1";

                $result = mysqli_query($link, $query);
                $row = mysqli_fetch_array($result);

                if($row['createdby'] != $_POST['username']){
                    echo 3;
                }else{
                    $query = "DELETE FROM ".$tableName." WHERE ".$tableName.".id = ".$_POST['issueId']." LIMIT 1";
                    $result = mysqli_query($link, $query);

                    if($result){
                        echo 1;
                    }else{
                        echo 4;
                    }

                }

            }

            if($error != ""){
                echo $error;
                exit();
            }

        }

        if($_GET['actions']=='dissolveTeam'){
            $error="";
                $query = "SELECT * FROM teamdetails WHERE teamname = '".mysqli_real_escape_string($link, $_POST['teamname'])."'
                        AND teamadmin='".$_POST['currentUsername']."' " ;
                $result=mysqli_query($link,$query);
                $row = mysqli_fetch_assoc($result);
                if($row['teampassword'] == md5(md5($row['id']).$_POST['teampassword'])){
                    //removing teamname from teamdetails table
                    $query="DELETE FROM teamdetails WHERE teamname='".mysqli_real_escape_string($link, $_POST['teamname'])."'";
                    $result=mysqli_query($link,$query);

                    //droping table containing chat details
                    $query1="DROP TABLE ".mysqli_real_escape_string($link, $_POST['teamname']);
                    $result1=mysqli_query($link,$query1);

                    //droping table containing team members details
                    $query2="DROP TABLE ".mysqli_real_escape_string($link, $_POST['teamname'])."_members";
                    $result2=mysqli_query($link,$query2);                   

                    if(! $result && ! $result1 && ! $result2){
                        $error="unable to dissolve team try again";
                    }
                    else{
                        echo 1;
                    }
                }
                else{
                     $error="you don't have authority to dissolve this team";
                }

            if($error!=""){
                echo $error;
                exit();
            }
        }

        if($error != ""){
            echo $error;
            exit();
        }



    }

    //if user presses 'logout' button then unset the session
    if (isset($_GET['function'])) {
        if($_GET['function'] == "logout"){
            session_unset();
            header('Location: http://localhost/SlackClone'); 
        }

        if($_GET['function'] == "teamLogout"){
            if(isset($_SESSION))
                unset($_SESSION['teamid']);
            header('Location: http://localhost/SlackClone/dash.php'); 
        }
    }

?>
