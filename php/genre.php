<?php
// On récupère tout le contenu de la table genre
$reponse = $bdd->query
('SELECT DISTINCT nomGenre 
FROM genre
WHERE nomGenre != " "
ORDER BY nomGenre ASC');
?>