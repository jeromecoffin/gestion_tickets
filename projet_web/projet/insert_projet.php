<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $client = $_GET['client_modal'];
  $cloture = $_GET['cloture_modal'];
  $description = $_GET['description_modal'];
  $date_creation = $_GET['date_creation_modal'];
  $bdd->exec("INSERT INTO projet VALUES(0, '$date_creation', '$cloture', '$nom', '$description', '$client')");
  header("Location: ../gestion_projet.php");
  exit;
?>

