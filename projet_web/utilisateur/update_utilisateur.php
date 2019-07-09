<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modifier'];
  $prenom = $_GET['prenom_modifier'];
  $login = $_GET['login_modifier'];
  $mdp = $_GET['mot_de_passe_modifier'];
  $email = $_GET['email_modifier'];
  $id_user = $_GET['id_modifier'];


  $bdd->exec("UPDATE utilisateur 
  SET utilisateur_nom = '$nom',
  utilisateur_prenom = '$prenom',
  utilisateur_login = '$login',
  utilisateur_pass = '$mdp',
  utilisateur_email = '$email'
  WHERE utilisateur_id = '$id_user';");

  header("Location: ../gestion_utilisateur.php");
  exit;
?>