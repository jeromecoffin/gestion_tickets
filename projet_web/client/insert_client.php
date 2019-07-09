<?php
  include('../connexion_bdd.php');
  $nom = $_GET['nom_modal'];
  $numero = $_GET['numero_modal'];
  $email = $_GET['email_modal'];
  $ticket = $_GET['ticket_associe_modal'];

  $res = $bdd->query("SELECT COUNT(*) AS nbr FROM `ticket` WHERE `ticket_id` = $ticket;");
  $data = $res->fetch();

  if($data['nbr'] == 1){
    $bdd->exec("INSERT INTO client VALUES(0, '$nom', '$email', '$numero', '$ticket', 0);");
    echo "hello";
    header("Location: ../gestion_client.php");
  }
  else{
    echo "Ce client n'existe pas";
  }
  exit;
?>
