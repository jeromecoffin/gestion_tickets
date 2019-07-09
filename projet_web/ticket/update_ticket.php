<?php
  include('../connexion_bdd.php');
  $date = $_GET['date_modifier'];
  $titre = $_GET['titre_modifier'];
  $description = $_GET['description_modifier'];
  $id_ticket = $_GET['id_modifier'];


  $bdd->exec("UPDATE ticket 
  SET ticket_creation = '$date',
  ticket_titre = '$titre',
  ticket_description = '$description'
  WHERE ticket_id = '$id_ticket';");

  header("Location: ../gestion_ticket.php");
  exit;
?>
