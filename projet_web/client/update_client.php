<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modifier'];
  $mail = $_GET['mail_modifier'];
  $numero = $_GET['numero_modifier'];
  $id_client = $_GET['id_modifier'];

  $bdd->exec("UPDATE client 
  SET client_nom = '$nom',
  client_email = '$mail',
  client_numero = '$numero'
  WHERE client_id = '$id_client';");

  header("Location: ../gestion_client.php");
  exit;
?>