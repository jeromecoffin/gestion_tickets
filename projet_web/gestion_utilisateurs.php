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

    <?php
        try
        {
	        // On se connecte à MySQL
            $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', 'root');
        }
        catch(Exception $e)
        {
	        // En cas d'erreur, on affiche un message et on arrête tout
            die('Erreur : '.$e->getMessage());
        }


        // On récupère tout le contenu de la table jeux_video
        $reponse = $bdd->query('SELECT * FROM table_test');

        // On affiche chaque entrée une à une
        while ($donnees = $reponse->fetch())
        {
            ?>
            <p>
                <table>
                    <tr>
                        <td>ID : <?php echo $donnees['id']; ?><td>
                        <td>nom : <?php echo $donnees['nom']; ?>
                    </tr>
                </table>
            </p>
            <?php
        }

        $reponse->closeCursor(); // Termine le traitement de la requête

    ?>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>