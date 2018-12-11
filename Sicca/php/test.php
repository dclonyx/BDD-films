<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<?php 
/* Liaison BDD */
include('base-pdo.php'); 

?>

<?php
// On récupère tout le contenu de la table film
$request = $bdd->query
('SELECT *
FROM Film');
?>

aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

<div id="listeAnnee"> 
                <select id="annee" name="annee" size="1" class="liste">
                    <?php
                    include('php/annee.php'); 
                    // On affiche chaque entrée une à une
                    while ($donnees = $request->fetch())
                    {
                    ?>
                    <option value="<?php echo $donnees['anneeFilm']; ?>"><?php echo $donnees['anneeFilm']; ?></option>
                    <?php
                    }
                    $request->closeCursor(); // Termine le traitement de la requête
                    ?>
                </select>
            </div>

</body>
    
</body>
</html>

