<?php
include('../connexion_bdd.php');
$id = $_GET['row_id'];
$bdd->exec("UPDATE `ticket` SET ticket_del = 1 WHERE `ticket_id` = $id;");
header("Location: ../gestion_ticket.php");
exit;
?>
