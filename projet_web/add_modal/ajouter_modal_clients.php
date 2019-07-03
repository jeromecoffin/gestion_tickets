<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $numero = $_GET['numero_modal'];
  $email = $_GET['email_modal'];
  $ticket = $_GET['ticket_associe_modal'];
  $bdd->exec("INSERT INTO CLIENT VALUES(0, '$nom', '$email', '$numero', '$ticket')");
  header("Location: ../gestion_clients.php");
  exit;
?>

