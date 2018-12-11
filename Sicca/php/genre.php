<?php
// On récupère tout le contenu de la table genre
$requestGenre = $bdd->query
('SELECT DISTINCT nomGenre,idGenre 
FROM genre
WHERE nomGenre != " "
ORDER BY nomGenre ASC');
?>