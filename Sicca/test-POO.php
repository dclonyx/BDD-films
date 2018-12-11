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
try {

    /* Liaison BDD */

    $bdd = new PDO('mysql:host=localhost;dbname=film_DCL;charset=utf8', 'scarlett', 'fanscarlett'); 
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );


    require 'class/formulaire.php';

    // On admet que $bdd est un objet PDO.
    // On récupère tout le contenu de la table genre
    /* $request = $bdd->query('SELECT DISTINCT nomGenre FROM genre WHERE nomGenre != " " ORDER BY nomGenre ASC'); */
    $request = $bdd->query('SELECT idGenre, nomGenre FROM genre');
    $messages = $request->fetchAll(PDO::FETCH_OBJ);
        
    while ($donnees = $request->fetch(PDO::FETCH_ASSOC)) // Chaque entrée sera récupérée et placée dans un array.

    {
    // On passe les données (stockées dans un tableau) concernant le formulaire au constructeur de la classe.
    // On admet que le constructeur de la classe appelle chaque setter pour assigner les valeurs qu'on lui a données aux attributs correspondants.
    $genre = new Formulaire($donnees);
            
    echo $genre->nomGenre();
    
    }

} catch (Exception $e)
{
	exit('<b>Catched exception at line '. $e->getLine() .' :</b> '. $e->getMessage());
}
foreach($messages as $message)
{
	echo '<p>id ', $message->idGenre, ' genre ', $message->nomGenre, '</p>';
}

?>
    
</body>
</html>
