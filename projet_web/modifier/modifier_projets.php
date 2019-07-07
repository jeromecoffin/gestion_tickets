<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bs431/css/bootstrap.min.css">

    <title>Modifier Projet</title>
    
  </head>

  <body>

  <?php 
    include('../connexion_bdd.php');

    $id = $_GET['row_id'];

    $reponse = $bdd->prepare("SELECT * FROM PROJET WHERE ID_PROJET=:id");
    $reponse->execute(['id' => $id]); 
    $user = $reponse->fetch();
    //print_r($user);
  ?>

  <!-- Begin Page Content -->

  <nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <div class="row">
      <div class="col">
        <a href="../gestion_projets.php" class="previous">&laquo; Previous</a>
      </div>
        Modifier Projet
    </div>
  </nav>

  <br>

  <div class="container-fluid">
    <form action ="bdd_modifier_projets.php" method="get">
      <div class="form-row">
        <input type="text" class="form-control" id="validationDefault00" name="id_modifier" placeholder="ID" value="<?php echo $user['ID_PROJET'] ?>" required>

      </div>
      <div class="form-row">
        <div class="col-md-4 mb-3">
          <label for="validationDefault01">Date de Creation</label>
          <input type="text" class="form-control" id="validationDefault01" name="date_modifier" placeholder="Date de creation" value="<?php echo $user['DATE_CREATION'] ?>" required>
        </div>
        <div class="col-md-4 mb-3">
          <label for="validationDefault02">Cloture</label>
          <input type="text" class="form-control" id="validationDefault02" name="cloture_modifier" placeholder="Cloture" value="<?php echo $user['CLOTURE'] ?>" required>
        </div>
        <div class="col-md-4 mb-3">
          <label for="validationDefault03">Nom Projet</label>
          <input type="text" class="form-control" id="validationDefault03" name="nom_modifier" placeholder="Nom" value="<?php echo $user['NOM_PROJET'] ?>" required>
        </div>
      </div>
      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="validationDefault03">Description</label>
          <input type="text" class="form-control" id="validationDefault04" name="description_modifier" placeholder="Description" value="<?php echo $user['DESCRIPTION_PROJET'] ?>" required>
        </div>
        <div class="col-md-6 mb-3">
          <label for="validationDefault03">ID Client</label>
          <input type="text" class="form-control" id="validationDefault05" name="id_client_modifier" placeholder="ID Client" value="<?php echo $user['ID_CLIENT'] ?>" required>
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