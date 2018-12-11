<?php
// On récupère tout le contenu de la table film

$requestFilm = $bdd->query
('SELECT * FROM Film
JOIN estOriginaire
ON Film.idFilm = estOriginaire.idFilm
JOIN pays
ON pays.idPays = estOriginaire.idPays
WHERE nomPays LIKE "'.$nomPays.'"'
);

?>