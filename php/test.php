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


// On affiche chaque entrée une à une
while ($donnees = $reponse->fetch())
{
?>
<div id="<?php echo $donnees['nomFilm']; ?>" class="bandeaufilm">
    <div class="affiche"><img src="<?php echo $donnees['nomFilm']; ?>" alt=""></div>
        <div class="text">
            <h2><?php echo $donnees['nomFilm']; ?></h2>
                    <p></p>
                </div>
            </div>
<?php
}
$reponse->closeCursor(); // Termine le traitement de la requête
?>

</body>
    
</body>
</html>

