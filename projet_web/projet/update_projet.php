<?php
  include('../connexion_bdd.php');
  $date = $_GET['date_modifier'];
  $nom = $_GET['nom_modifier'];
  $description = $_GET['description_modifier'];
  $id_projet = $_GET['id_modifier'];
  $cloture = $_GET['cloture_modifier'];
  $client = $_GET['id_client_modifier'];


  $bdd->exec("UPDATE projet 
  SET projet_cloture = '$cloture' WHERE projet_id = '$id_projet';");

  header("Location: ../gestion_projet.php");
  exit;
?>



