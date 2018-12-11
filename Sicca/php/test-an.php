<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test An</title>
    <?php 
    /* Liaison BDD */
    include('../base/base-pdo.php'); 
    ?>
</head>
<body>
<?php
// On récupère tout le contenu de la table film
$request = $bdd->query
('SELECT *
FROM Film
WHERE anneeFilm INTERVAL 
');

?>

<?php
// On affiche chaque entrée une à une
while ($donnees = $request->fetch())
{
?>
    <p>    
    <strong>Valeur</strong> : <?php echo $donnees['anneeFilm']; ?><br />
   </p>
<?php
}

$request->closeCursor(); // Termine le traitement de la requête


?>


</body>
</html>