<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("DELETE FROM `CLIENT` WHERE `ID_CLIENT`= $id;");
header("Location: ../gestion_clients.php");
exit;
?>
