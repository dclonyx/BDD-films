<?php
// On récupère le nom des utilisateurs par film posté
$utilisateur = $bdd->query
('SELECT nomFilm, nomUtilisateur FROM `Film`
JOIN utilisateur
ON Film.idUtilisateur = utilisateur.idUtilisateur');
?>