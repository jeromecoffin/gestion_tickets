<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $client = $_GET['client_modal'];
  $cloture = $_GET['cloture_modal'];
  $description = $_GET['description_modal'];
  $date_creation = date("Y-m-d");




  
  $res = $bdd->query("SELECT COUNT(*) AS nbr FROM `client`WHERE `client_id` = $client;");
  $data = $res->fetch();

  

  if($data['nbr'] == 1){
    $bdd->exec("INSERT INTO projet VALUES(0, '$date_creation', '$cloture', '$nom', '$description', '$client', 0)");
    header("Location: ../gestion_projet.php");
  }
  else{
    echo "Ce client n'existe pas";
  }
  
  
  exit;
?>


