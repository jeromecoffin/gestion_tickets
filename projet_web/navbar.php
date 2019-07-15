<?php
session_start();
if($_SESSION['isloged'] != "true"){
  header('Location: deconnexion.php');
}
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
  <a class="navbar-brand" href="#">TManager</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <?php if($_SESSION['droit'] == 1){ ?>
      <li class="nav-item">
        <a class="nav-link" href="gestion_utilisateur.php">Utilisateurs</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="gestion_projet.php">Projets</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="gestion_client.php">Clients</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="gestion_ticket.php">Tickets</a>
      </li>
      <?php } 
      else {?>
      <li class="nav-item">
        <a class="nav-link" href="gestion_ticket_dev.php">Tickets</a>
      </li>
      <?php }?>

    </ul>
    <form action ="deconnexion.php">
      <button type="submit" class="btn btn-info">Deconnexion</button>
</form>

  </div>
</nav>
<br>