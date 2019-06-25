<?php

    $nom = (isset($_GET['exampleFirstName']) ? $_GET['exampleFirstName'] : 1);

    $commande = $bdd->query('INSERT INTO UTILISATEURS VALUES ("nom", "prenom","login","password","email")');


?>