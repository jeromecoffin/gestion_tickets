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

  $sql = "SELECT * FROM `utilisateur` WHERE `utilisateur_login` = '$login'";
  $res = $bdd->query($sql);
  $data = $res->fetch();

  $_SESSION['prenom'] = $data['utilisateur_prenom'];
  $_SESSION['nom'] = $data['utilisateur_nom'];
  $_SESSION['login'] = $data['utilisateur_login'];
  $_SESSION['email'] = $data['utilisateur_email'];
  $_SESSION['droit'] = $data['utilisateur_droit'];
  $_SESSION['id'] = $data['utilisateur_id'];

  header('Location: index.php');
}
else { 

  header('Location: index.php');
}

?>