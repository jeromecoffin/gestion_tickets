<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("DELETE FROM `PROJET` WHERE `ID_PROJET`= $id;");
header("Location: ../gestion_projets.php");
exit;
?>
