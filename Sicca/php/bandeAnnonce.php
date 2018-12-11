<?php 
// On récupère les liens de bande annonce
$liens = $bdd ->query 
('SELECT  nomFilm, lienBandeAnnonce
FROM `Film`');
?>