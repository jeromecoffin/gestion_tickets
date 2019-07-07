<?php
  include('../connexion_bdd.php');
  $date = $_GET['date_modifier'];
  $titre = $_GET['titre_modifier'];
  $description = $_GET['description_modifier'];
  $id_ticket = $_GET['id_modifier'];


  $bdd->exec("UPDATE TICKET 
  SET DATE_CREATION = '$date',
  TITRE = '$titre',
  DESCRIPTION = '$description'
  WHERE ID_TICKET = '$id_ticket';");

  header("Location: ../gestion_tickets.php");
  exit;
?>
