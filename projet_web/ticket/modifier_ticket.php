<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bs431/css/bootstrap.min.css">

    <title>Modifier Tickets</title>
    
  </head>

  <body>

  <?php 
    include('../connexion_bdd.php');

    $id = $_GET['row_id'];

    $reponse = $bdd->prepare("SELECT * FROM ticket WHERE ticket_id=:id");
    $reponse->execute(['id' => $id]); 
    $user = $reponse->fetch();
    //print_r($user);
  ?>

  <!-- Begin Page Content -->

  <nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <div class="row">
      <div class="col">
        <a href="../gestion_ticket.php" class="previous">&laquo; Previous</a>
      </div>
        Modifier Ticket
    </div>
  </nav>

  <br>

  <div class="container-fluid">
    <form action ="update_ticket.php" method="get">
      <div class="form-row">
        <input type="text" class="form-control" id="validationDefault00" name="id_modifier" placeholder="ID" value="<?php echo $user['ticket_id'] ?>" required>

      </div>
      <div class="form-row">
        <div class="col-md-4 mb-3">
          <label for="validationDefault01">Date de Creation</label>
          <input type="text" class="form-control" id="validationDefault01" name="date_modifier" placeholder="Date de creation" value="<?php echo $user['ticket_creation'] ?>" required>
        </div>
        <div class="col-md-4 mb-3">
          <label for="validationDefault02">Titre</label>
          <input type="text" class="form-control" id="validationDefault02" name="titre_modifier" placeholder="Titre" value="<?php echo $user['ticket_titre'] ?>" required>
        </div>
      </div>
      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="validationDefault03">Description</label>
          <input type="text" class="form-control" id="validationDefault03" name="description_modifier" placeholder="Description" value="<?php echo $user['ticket_description'] ?>" required>
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