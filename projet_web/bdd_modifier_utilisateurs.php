<?php
  include('connexion_bdd.php');
  $nom = $_GET['nom_modifier'];
  $prenom = $_GET['prenom_modifier'];
  $login = $_GET['login_modifier'];
  $mdp = $_GET['mot_de_passe_modifier'];
  $email = $_GET['email_modifier'];
  $bdd->exec("UPDATE UTILISATEURS SET (0, '$nom', '$prenom', '$login', '$mdp', '$email') WHERE ");
  header("Location: gestion_utilisateurs.php");
  exit;
?>

UPDATE client
SET rue = '49 Rue Ameline',
  ville = 'Saint-Eustache-la-Forêt',
  code_postal = '76210'
WHERE id = 2