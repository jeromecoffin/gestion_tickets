<?php
session_start();
$login = (isset($_POST['login_modal'])) ? $_POST['login_modal'] : '' ;
$pass = (isset($_POST['password_modal'])) ? $_POST['password_modal'] : '' ;
include('connexion_bdd.php');
$sql = "SELECT COUNT(*) AS nbr FROM `utilisateur` WHERE 
`utilisateur_login` = '$login' AND
`utilisateur_pass` = '$pass' AND
`utilisateur_del` = 0;";

$res = $bdd->query($sql);
$data = $res->fetch();


if($data['nbr'] == 1){

  $_SESSION['isloged'] = "true";
  header('Location: index.php');
}
else {

  header('Location: index.php');
}

?>