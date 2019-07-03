<?php
  include('../connexion_bdd.php');
  $titre = $_GET['titre_modal'];
  $date = $_GET['date_modal'];
  $description = $_GET['description_modal'];
  $bdd->exec("INSERT INTO TICKET VALUES(0, '$date', '$titre', '$description')");
  header("Location: ../gestion_tickets.php");
  exit;
?>