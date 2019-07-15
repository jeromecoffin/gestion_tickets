<?php

include('connexion_bdd.php');

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_client_id = 2;");
$response->execute();
$deux = $response->rowcount();

?>

<script>
new Chart(document.getElementById("myDonutChart"), {
  type: 'doughnut',
  data: {
    labels: ["Aspera", "CA", "Dassault", "Airbus", "TechnipFMC"],
    datasets: [
      {
        label: "Population (millions)",
        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
        data: [<?php echo $deux?>,10,1,5,4]
      }
    ]
  },
  options: {

    title: {
      display: true,
      text: 'Nombre de ticket créés par mois'
    }
  }
});
</script>