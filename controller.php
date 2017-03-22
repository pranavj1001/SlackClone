<?php

    //to start a session
    session_start();
    
    //link variable to store the db address and its details 
    $link = mysqli_connect("localhost", "root", "", "slackclone");
    
    //if connection to db failed
    if(mysqli_connect_errno()){
        print_r(mysqli_connect_error());
        exit();
    }
    
    //if user presses 'logout' button then unset the session
    if (isset($_GET['function'])) {
        if($_GET['function'] == "logout"){
            session_unset();
            header('Location: http://localhost/SlackClone'); 
        }
    }

?>