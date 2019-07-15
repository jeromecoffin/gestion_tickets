<?php
session_start();
if($_SESSION['isloged'] != "true"){
  header('Location: deconnexion.php');
}


include('../connexion_bdd.php');
$id = $_GET['row_id'];

if($id == $_SESSION['id']){

  header("Location: ../gestion_utilisateur.php");

}
else{
  $bdd->exec("UPDATE `utilisateur` SET utilisateur_del = 1 WHERE `utilisateur_id` = $id;");
  header("Location: ../gestion_utilisateur.php");
}


exit;
?>










