<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("UPDATE `client` SET client_del = 1 WHERE `client_id` = $id;");
header("Location: ../gestion_client.php");
exit;
?>
