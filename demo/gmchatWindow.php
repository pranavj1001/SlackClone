<?php
	include("actions.php"); 
  	include("services/loadProfile.php");

  	$queryToGetTeamName="SELECT `teamname` From `teamdetails` WHERE `id`='".$_SESSION['teamid']."'";

  	$result=mysqli_query($link,$queryToGetTeamName);
  	$row=mysqli_fetch_assoc($result);
  	$TeamName=$row['teamname'];
  	//echo $TeamName;
  	//echo $currentUsername;


  	$query = mysqli_query($link,"CREATE TABLE IF NOT EXISTS '".$TeamName."' (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY(id),
        message    TEXT NOT NULL,
        sender   TEXT NOT NULL,
        chatid INT NOT NULL AUTO_INCREMENT
    )");





?>

<!DOCTYPE html>
<html>
<head>
	<title>Chat Window</title>
</head>
<body>
	<?php if (isset($_SESSION['teamid'])) { ?>
	<a href="?function=teamLogout"">Logout</a>

        
        <br>
        <label>Last Displayed Chat ID</label>
        <input type="text" name="lastdisplayedchatid" id="last_displayed_chat_id" value="0" readonly>
		<textarea rows="20" id="message_box" readonly="">
			
		</textarea>
		<br>
		<input type="text" id="message" name="Message">
		<button id="send_message">Send</button>


	<?php 
		}else{
			header('Location: http://localhost/SlackClone/dash.php');
		}
	?>




	<script type="text/javascript">
      
      
      
      $('#send_message').click(function(){
        
          $.ajax({
            type: "POST",
            url: "gmchatServer.php",
            data:"sender=" + $currentUsername + "&message" + $("#message").val() + "&lastchatid=" + $("last_displayed_chat_id").val(),
            dataType:"json",
            success : function(response ,status ,http){
        			$.each(response ,function(index ,item){


        				$("#message_box").val($("#message_box").val() + item.sender+" : "+item.message+"\n");
        				$("#last_displayed_chat_id").val(item.chatid);
        				$("#message").val('');



        			});
        		},
            // success: function(result){
            //   if(result == "1"){
            //     console.log("Success");
            //    // window.location.assign("http://localhost/SlackClone/chatWindow.php");
            //   }else{
            //     console.log("Failure");
            //     //$('#alert').html(result).show();
            //   }
            //   //console.log(result);
            // }
          });
        });


      function updateChat() {
        	$.ajax({

        		url : "gmchatServer.php",  //url of server.php
        		type : "POST",
        		data : "lastdisplayedchatid="+$('#last_displayed_chat_id').val(),
        		dataType : "json",
        		success : function(response ,status ,http){
        			$.each(response ,function(index ,item){


        				$("#chat_box").val($("#chat_box").val() + item.sender+" : "+item.message+"\n");
        				$("#last_displayed_chat_id").val(item.chatid);



        			});
        		},
        		error : function(http ,status ,error){
        			alert("Some Error Occured : "+error);
        		}

        	});
        }
        //updateChat();
        setInterval(updateChat,4000);

    </script>

	    
	


</body>
</html>