<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modifier'];
  $mail = $_GET['mail_modifier'];
  $numero = $_GET['numero_modifier'];
  $id_client = $_GET['id_modifier'];

  $bdd->exec("UPDATE CLIENT 
  SET NOM_CLIENT = '$nom',
  MAIL_CLIENT = '$mail',
  NUMERO_CLIENT = '$numero'
  WHERE ID_CLIENT = '$id_client';");

  header("Location: ../gestion_clients.php");
  exit;
?>