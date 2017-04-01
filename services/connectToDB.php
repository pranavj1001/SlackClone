<?php
    
    //link variable to store the db address and its details 
    $link = mysqli_connect("localhost", "root", "", "slackclone");
    
    //if connection to db failed
    if(mysqli_connect_errno()){
        print_r(mysqli_connect_error());
        exit();
    }

?>