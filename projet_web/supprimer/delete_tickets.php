<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("DELETE FROM `TICKET` WHERE `ID_TICKET`= $id;");
header("Location: ../gestion_tickets.php");
exit;
?>
