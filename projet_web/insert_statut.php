<?php
  session_start();
  if($_SESSION['isloged'] != "true"){
    header('Location: deconnexion.php');
  }
  include('connexion_bdd.php');
  $utilisateur = $_SESSION['id'];
  $ticket = $_GET['ticket_modal'];
  $statut = $_GET['statut_modal'];
  $date = $_GET['date_modal'];
  $commentaire = $_GET['commentaire_modal'];
  $bdd->exec("INSERT INTO statut VALUES('$utilisateur', '$ticket', '$date', '$statut', '$commentaire')");
  header("Location: statut_ticket.php");
  exit;
?>