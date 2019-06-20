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
