<?php

  include("actions.php"); 
  include("services/loadProfile.php");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Create a new team</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/signIn.css" rel="stylesheet">
  </head>

  <body>
    <?php if(isset($_SESSION['id'])){ ?>

      <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
        <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand title">Team Sign Up</a>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="http://localhost/SlackClone/dash.php">DashBoard</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Help</a>
            </li>
          </ul>
          <div class="form-inline mt-2 mt-md-0">
            <a class="btn btn-outline-danger my-2 my-sm-0" href="?function=teamLogout">Donate to Project</a>
          </div>
        </div>
      </nav>

      <div class="container bodyForm">

        <div class="alert alert-danger" id="alert"></div>

        <div class="form-signin">
          <h2 class="form-signin-heading">Enter Team Details</h2>
          <input type="hidden" id="loginActive" name="loginActive" value="1">
          <label class="sr-only">Team Name</label>
          <input type="text" id="teamname" class="form-control" placeholder="Team Name">
          <label for="inputPassword" class="sr-only">Password</label>
          <input type="password" id="teampassword" class="form-control" placeholder="Password">
          <div class="checkbox">
            <!-- <label>
              <input type="checkbox" value="remember-me"> Remember me
            </label> -->
          </div>
          <button class="btn btn-lg btn-primary btn-block" id="createTeam">Create Team</button>
        </div>

      </div> <!-- /container -->
    <?php 
      }else{
        header('Location: signIn.php');
      }?>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jQuery320.min.js"></script>
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <script type="text/javascript">
      
      $('#alert').hide();/*initially to hide alert*/
      
      $('#createTeam').click(function(){
        
        var teamadmin = "<?php echo $currentUsername?>";

        $('#alert').hide();

        //console.log(teamadmin);
        
          $.ajax({
            type: "POST",
            url: "actions.php?actions=createTeam",
            data:"teamname=" + $("#teamname").val() + "&teampassword=" + $("#teampassword").val() + "&teamadmin=" + teamadmin,
            success: function(result){
              if(result == "1"){
                console.log("Success");
                window.location.assign("http://localhost/SlackClone/chatWindow.php");
              }else{
                console.log("Failure");
                $('#alert').html(result).show();
              }
            }
          });
        });

    </script>


  </body>
</html>
