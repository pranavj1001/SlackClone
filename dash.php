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

    <title>User DashBoard</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/dash.css" rel="stylesheet">
    <link rel="stylesheet" href="css/chartist.min.css">
  </head>

  <body>
    <?php if(isset($_SESSION['id'])){ ?> 
    <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">Dashboard</a>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Settings</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Help</a>
          </li>
        </ul>
        <div class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="#">Overview <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Chat Graph</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Recent Activities</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" href="teamSignUp.php">Create a new team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="dissolveTeam" href="dissolveTeam.php">Dissolve one of your teams</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="teamSignIn.php">Join an existing team</a>
            </li>
            <!-- <li class="nav-item">
              <a class="nav-link" href="#">Team Members</a>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" href="#">Save Chat Data</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" href="#">Chat to a friend</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Send Invite link to a friend</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Find Friends</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Block Users</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link" id="logOut" href="?function=logout" style="color: red;">Log Out</a>
            </li>
          </ul>
        </nav>

        <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
          <h1><?php echo $currentUsername; ?>'s Dashboard</h1>

          <section>
            <h2 class="heading" id="teamAdminInfo"></h2>
            <h5 id="sub-heading">Want to create one? <a class="noDecoration" href="teamSignUp.php">Click here.</a></h5>
          </section>

          <section class="activities">
            <h2 class="activitiesHeading">Activities of your team</h2>
            <h5 class="activitiesDetails"></h5>
          </section>

          <section class="dc-chart">
            <div class="row">
              <div class="col">
                <h5>Below shown Information is about each of your team's total chat share. </h5>
                <div class="ct-chart-dc ct-series-a ct-slice-donut"></div>
              </div>
              <div class="col dc-info">
                <h5 id="ownMessages"></h5>
              </div>
            </div>
          </section>

          <section class="lg-chart">
            <h5>Below shown Information is about each of your team's chat history.</h5>
            <div class="ct-chart-lg"></div>
          </section>

        </main>
      </div>
    </div>
    <?php }else{
      header('Location: signIn.php');
      }?>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/jQuery320.min.js"></script>
    <script src="js/chartist.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->

    <script type="text/javascript" src="js/dashboard.js"></script>

  </body>
</html>
