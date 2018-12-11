<?php
// On récupère tout le contenu de la table film

$requestFilm = $bdd->query
('SELECT * FROM Film
JOIN appartient
ON Film.idFilm = appartient.idFilm
JOIN genre
ON genre.idGenre = appartient.idGenre
JOIN genre2
ON genre2.idGenre2 = appartient.idGenre2
WHERE nomGenre LIKE "'.$genreFilm.'"'
);

?>