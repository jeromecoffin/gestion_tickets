<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("UPDATE `utilisateur` SET utilisateur_del = 1 WHERE `utilisateur_id` = $id;");
header("Location: ../gestion_utilisateur.php");
exit;
?>










