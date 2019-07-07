<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modifier'];
  $prenom = $_GET['prenom_modifier'];
  $login = $_GET['login_modifier'];
  $mdp = $_GET['mot_de_passe_modifier'];
  $email = $_GET['email_modifier'];
  $id_user = $_GET['id_modifier'];


  $bdd->exec("UPDATE UTILISATEURS 
  SET NOM_USER = '$nom',
  PRENOM_USER = '$prenom',
  LOGIN_USER = '$login',
  PASSWORD_USER = '$mdp',
  EMAIL_USER = '$email'
  WHERE ID_USER = '$id_user';");

  header("Location: ../gestion_utilisateurs.php");
  exit;
?>