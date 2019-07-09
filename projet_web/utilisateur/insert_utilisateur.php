<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $prenom = $_GET['prenom_modal'];
  $login = $_GET['login_modal'];
  $mdp = $_GET['mdp_modal'];
  $email = $_GET['email_modal'];
  $bdd->exec("INSERT INTO utilisateur VALUES(0, '$nom', '$prenom', '$login', '$mdp', '$email')");
  header("Location: ../gestion_utilisateur.php");
  exit;
?>