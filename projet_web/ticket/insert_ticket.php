<?php
  include('../connexion_bdd.php');
  $titre = $_GET['titre_modal'];
  $date = date("Y-m-d");
  $description = $_GET['description_modal'];
  $client = $_GET['client_associe_modal'];
  $projet = $_GET['projet_modal'];

  $res = $bdd->query("SELECT COUNT(*) AS nbr FROM `client` WHERE `client_id` = $client;");
  $data = $res->fetch();

  echo $date;
  echo $titre;
  echo $description;
  echo $client;

  if($data['nbr'] == 1){
    $bdd->exec("INSERT INTO ticket VALUES(0, '$date', '$titre', '$description', 0, '$client', '$projet');");
    header("Location: ../gestion_ticket.php");
  }
  else{
    echo "Ce client n'existe pas";
  }
  
  exit;
?>