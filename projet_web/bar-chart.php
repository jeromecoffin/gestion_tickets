<?php

include('connexion_bdd.php');

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_creation BETWEEN CAST('2019-01-01' AS DATE) AND CAST('2019-01-28' AS DATE);");
$response->execute();
$jan = $response->rowcount();

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_creation BETWEEN CAST('2019-02-01' AS DATE) AND CAST('2019-02-28' AS DATE);");
$response->execute();
$fev = $response->rowcount();

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_creation BETWEEN CAST('2019-03-01' AS DATE) AND CAST('2019-03-28' AS DATE);");
$response->execute();
$mars = $response->rowcount();

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_creation BETWEEN CAST('2019-04-01' AS DATE) AND CAST('2019-04-28' AS DATE);");
$response->execute();
$avr = $response->rowcount();

$response = $bdd->prepare("SELECT *
FROM ticket
WHERE ticket_creation BETWEEN CAST('2019-05-01' AS DATE) AND CAST('2019-05-28' AS DATE);");
$response->execute();
$mai = $response->rowcount();

?>

<script type="text/javascript">
      new Chart(document.getElementById('myBarChart'), {
        type: 'bar',
        data: {
        labels: ['Jan', 'Fev', 'Mars', 'Avr', 'Mai'],
        datasets: [
        {
          label: 'Population (millions)',
          backgroundColor: ['#3e95cd', '#8e5ea2','#3cba9f','#e8c3b9','#c45850'],
          data: [<?php echo $jan?>,<?php echo $fev?>,<?php echo $mars?>,<?php echo $avr?>,<?php echo $mai?>]
        }
        ]
      },
      options: {
        legend: { display: false },
        title: {
          display: true,
          text: 'Nombre de ticket créés par mois'
        }
      }
      });
    </script>