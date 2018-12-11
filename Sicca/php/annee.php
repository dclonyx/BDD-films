<?php
// On récupère tout le contenu de la table film
$requestAn = $bdd->query
('SELECT DISTINCT anneeFilm
FROM Film  
WHERE anneeFilm != " "
ORDER BY anneeFilm ASC');
?>