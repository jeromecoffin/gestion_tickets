<?php
  include('../connexion_bdd.php');
  $titre = $_GET['titre_modal'];
  $date = $_GET['date_modal'];
  $description = $_GET['description_modal'];
  $client = $_GET['client_associe_modal'];

  $res = $bdd->query("SELECT COUNT(*) AS nbr FROM `client` WHERE `client_id` = $client;");
  $data = $res->fetch();

  if($data['nbr'] == 1){
    $bdd->exec("INSERT INTO ticket VALUES(0, '$date', '$titre', '$description', 0, '$client')");
    header("Location: ../gestion_ticket.php");
  }
  else{
    echo "Ce client n'existe pas";
  }
  
  exit;
?>