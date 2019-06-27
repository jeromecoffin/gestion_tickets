<?php

//DELETE FROM `movies` WHERE `movie_id` = 18;
  include('connexion_bdd.php');
  $id = $_GET['row_id'];
  $bdd->exec("DELETE FROM `UTILISATEURS` WHERE `ID_USER`= $id");
  header("Location: gestion_utilisateurs.php");
  exit;
?>