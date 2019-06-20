<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Gestion Utilisateurs</title>

        <!-- Bootstrap core CSS -->
        <link href="/Applications/MAMP/htdocs/projet_web/bs431/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
    </head>

    <body>

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
    </body>
</html>