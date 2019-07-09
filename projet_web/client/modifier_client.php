<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bs431/css/bootstrap.min.css">

    <title>Modifier Client</title>
    
  </head>

  <body>

  <?php 
    include('../connexion_bdd.php');

    $id = $_GET['row_id'];

    $reponse = $bdd->prepare("SELECT * FROM client WHERE client_id=:id");
    $reponse->execute(['id' => $id]); 
    $user = $reponse->fetch();
    //print_r($user);
  ?>

  <!-- Begin Page Content -->

  <nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <div class="row">
      <div class="col">
        <a href="../gestion_client.php" class="previous">&laquo; Previous</a>
      </div>
        Modifier Client
    </div>
  </nav>

  <br>

  <div class="container-fluid">
    <form action ="update_client.php" method="get">
      <div class="form-row">
        <input type="text" class="form-control" id="validationDefault00" name="id_modifier" placeholder="ID" value="<?php echo $user['client_id'] ?>" required>

      </div>
      <div class="form-row">
        <div class="col-md-4 mb-3">
          <label for="validationDefault01">Nom</label>
          <input type="text" class="form-control" id="validationDefault01" name="nom_modifier" placeholder="Nom" value="<?php echo $user['client_nom'] ?>" required>
        </div>
        <div class="col-md-4 mb-3">
          <label for="validationDefault02">Mail</label>
          <input type="email" class="form-control" id="validationDefault02" name="mail_modifier" placeholder="Email" value="<?php echo $user['client_email'] ?>" required>
        </div>
        <div class="col-md-4 mb-3">
          <label for="validationDefault03">Numero Client</label>
          <input type="text" class="form-control" id="validationDefault03" name="numero_modifier" placeholder="Numero Client" value="<?php echo $user['client_numero'] ?>" required>
        </div>
      </div>
      <div class="form-group">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
          <label class="form-check-label" for="invalidCheck2">
            Confirmer les modifications
          </label>
        </div>
      </div>
      <div class ="text-right">
        <button class="btn btn-primary" type="submit">Update</button>
      </div>
    </form>
  </div>

  </body>
</html>