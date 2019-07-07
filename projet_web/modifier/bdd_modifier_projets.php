<?php
  include('../connexion_bdd.php');
  $date = $_GET['date_modifier'];
  $nom = $_GET['nom_modifier'];
  $description = $_GET['description_modifier'];
  $id_projet = $_GET['id_modifier'];
  $cloture = $_GET['cloture_modifier'];
  $client = $_GET['id_client_modifier'];


  $bdd->exec("UPDATE PROJET 
  SET DATE_CREATION = '$date',
  CLOTURE = '$cloture',
  NOM_PROJET = '$nom',
  DESCRIPTION_PROJET = '$description'
  WHERE ID_PROJET = '$id_projet';");

  header("Location: ../gestion_projets.php");
  exit;
?>



