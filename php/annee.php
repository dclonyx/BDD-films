<?php
// On récupère tout le contenu de la table film
$reponse = $bdd->query
('SELECT DISTINCT anneeFilm
FROM Film  
WHERE anneeFilm != " "
ORDER BY anneeFilm ASC');
?>