<?php
// On récupère tout le contenu de la table film

/* $requestFilm = $bdd->query
('SELECT *
FROM Film 
WHERE anneeFilm="2007"') */;

$requestFilm = $bdd->query ('SELECT * FROM Film WHERE anneeFilm="'.$anFilm.'"');


/* $requestFilmGenre = $bdd->query
('SELECT *
FROM Film WHERE genre') */

/* $requestFilmAnn = $bdd->query
('SELECT *
FROM Film Where anneFilm = 2007'); */


?>