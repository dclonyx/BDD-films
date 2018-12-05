<?php
// On récupère tout le contenu de la table film
$reponse = $bdd->query
('SELECT *
FROM Film')
?>