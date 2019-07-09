
<?php

include('../connexion_bdd.php');
$id = $_GET['row_id'];

$bdd->exec("UPDATE `projet` SET projet_del = 1 WHERE `projet_id` = $id;");
header("Location: ../gestion_projet.php");
exit;
?>
