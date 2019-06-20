<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bs431/css/bootstrap.min.css">

    <title>Gestion utilisateurs</title>
    
  </head>

  <body>

    <?php include('navbar.php'); ?>

    <div class="container-fluid">

    <table class="table">
  <thead class="bg-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
      <th scope="col">Modify</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  

  <tbody>

<?php include('connexion_bdd.php'); ?>

<?php
// On récupère tout le contenu de la table
$reponse = $bdd->query('SELECT * FROM table_test');

while ($donnees = $reponse->fetch())
{
    ?>

<tr>
      <th scope="row"><?php echo $donnees['id']; ?></th>
      <td><?php echo $donnees['nom']; ?></td>
      <td>toto</td>
      <td>tata</td>
      <td><button type="button" class="btn btn-primary">modify</button></td>
      <td><button type="button" class="btn btn-danger">Delete</button></td>

    </tr>


    <?php
}

$reponse->closeCursor(); // Termine le traitement de la requête

?>


  </tbody>
</table>
</div>
    <?php include('footer.php'); ?>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>