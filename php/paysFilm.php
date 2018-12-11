<?php
// On récupère le contenu table pays et table film
$pays = $bdd->query
('SELECT nomFilm, nomPays FROM `Film`	
JOIN estOriginaire
ON Film.idFilm = estOriginaire.idFilm
JOIN pays
ON pays.idPays = estOriginaire.idPays');
?>