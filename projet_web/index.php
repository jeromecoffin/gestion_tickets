<?php
session_start();
if($_SESSION['isloged'] != "true"){
  header('Location: deconnexion.php');
}
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bs431/css/bootstrap.min.css">

    <title>Home</title>
    
  </head>

  <body>
    
  
    <?php include('navbar.php');?>

    <!-- Begin Page Content -->
    <div class="container-fluid">

      <!-- Page Heading -->
      <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard de <?php echo $_SESSION['prenom']; ?></h1>
      </div>

      <!-- Content Row -->
      <div class="row">

        <!-- Ongoing Projects Card -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Projets en cours</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">
                    <?php
                      include('connexion_bdd.php');
                      $response = $bdd->prepare("SELECT * FROM projet WHERE `projet_cloture`= 0 AND projet_del = 0;");
                      $response->execute();
                      $count = $response->rowcount();
                      echo $count;
                    ?>
                  </div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Solved Projects Card -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Projets résolus</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">
                    <?php
                      $response = $bdd->prepare("SELECT * FROM projet WHERE `projet_cloture`= 1 AND projet_del = 0;");
                      $response->execute();
                      $count = $response->rowcount();
                      echo $count;
                    ?>
                  </div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- KPI Card -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Performance</div>
                  <div class="row no-gutters align-items-center">
                    <div class="col-auto">
                      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">40%</div>
                    </div>
                    <div class="col">
                      <div class="progress progress-sm mr-2">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Score Card -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-warning shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Projets récents</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">
                    <?php
                      $response = $bdd->prepare("SELECT * FROM projet WHERE projet_creation BETWEEN date(now() - INTERVAL 6 month) AND now();");
                      $response->execute();
                      $count = $response->rowcount();
                      echo $count;
                    ?>
                  </div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-comments fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <!-- Content Row -->
      <div class="row">
        <!-- Bar Chart -->
        <div class = "col-sm">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Nouveaux Tickets</h6>
            </div>
            <div class="card-body">
              <div class="chart-bar">
              <canvas id="myBarChart" width="400" height="400"></canvas>
              </div>
              <hr>
            </div>
          </div>
        </div>

        <!-- Donut Chart -->
        <div class = "col-sm">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Tickets par client</h6>
            </div>
            <div class="card-body">
              <div class="chart-pie pt-4">
                <canvas id="myDonutChart"></canvas>
              </div>
              <hr>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <!-- Line Chart -->
        <div class = "col-sm">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Tickets résolus</h6>
            </div>
            <div class="card-body">
              <div class="chart-line">
              <canvas id="myLineChart"></canvas>
              </div>
            <hr>
            </div>
          </div>
        </div>

      </div>
    </div>

    <?php include('footer.php'); ?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>
 
    <?php include('donut-chart.php'); 
    include('bar-chart.php');
    include('line-chart.php');?>
    
  </body>
</html>