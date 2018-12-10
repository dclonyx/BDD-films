<?php
// On récuper le contenu de la table personne
$realise = $bdd->query
('SELECT nomFilm, nomPersonne FROM `Film`
JOIN realise
ON Film.idFilm = realise.idFilm
JOIN personne
ON personne.idPersonne = realise.idPersonne');
?>