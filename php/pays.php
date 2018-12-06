<?php
// On récupère tout le contenu de la table film
$reponse = $bdd->query
('SELECT DISTINCT nomPays 
FROM pays 
WHERE nomPays != " "
ORDER BY nomPays ASC');
?>