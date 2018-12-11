<?php
// On récuper le contenu de la table personne
$produit = $bdd->query
('SELECT nomFilm, nomPersonne FROM `Film`
JOIN produit
ON Film.idFilm = produit.idFilm
JOIN personne
ON personne.idPersonne = produit.idPersonne');
?>