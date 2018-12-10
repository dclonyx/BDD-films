<?php
// On récuper le contenu de la table personne
$personne = $bdd->query
('SELECT nomFilm, nomPersonne FROM `Film`
JOIN joue
ON Film.idFilm = joue.idFilm
JOIN personne
ON personne.idPersonne = joue.idPersonne');
?>