<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $numero = $_GET['numero_modal'];
  $email = $_GET['email_modal'];


  $bdd->exec("INSERT INTO client VALUES(0, '$nom', '$email', '$numero', 0);");
  echo "hello";
  header("Location: ../gestion_client.php");

  exit;
?>
