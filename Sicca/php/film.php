<?php
// On récupère tout le contenu de la table film
$requestFilm = $bdd->query
('SELECT *
FROM Film');

/* $requestFilmGenre = $bdd->query
('SELECT *
FROM Film WHERE genre') */

/* $requestFilmAnn = $bdd->query
('SELECT *
FROM Film Where anneFilm = 2007'); */


?>