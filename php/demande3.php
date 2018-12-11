<?php 
include('../base/base-pdo.php'); 
$acteur1 = $_GET['acteur1'];
$pays1 = $_GET['pays1'];

$acteur2 = $_GET['acteur2'];
$pays2 = $_GET['pays2'];

$acteur3 = $_GET['acteur3'];
$pays3 = $_GET['pays3'];

$acteur4 = $_GET['acteur4'];
$pays4 = $_GET['pays4'];

$acteur5 = $_GET['acteur5'];
$pays5 = $_GET['pays5'];

$realisateur = $_GET['realisateur'];
$pays6 = $_GET['pays6'];


$personne = $bdd->prepare('SELECT idPersonne FROM personne WHERE nomPersonne=:nomPersonne');
$personne->execute(array('nomPersonne' => $acteur1));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $acteur1));
    $req->closeCursor();
}



$personne->execute(array('nomPersonne' => $acteur2));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $acteur2));
    $req->closeCursor();
}

$personne->execute(array('nomPersonne' => $acteur3));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $acteur3));
    $req->closeCursor();
}

$personne->execute(array('nomPersonne' => $acteur4));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $acteur4));
    $req->closeCursor();
}

$personne->execute(array('nomPersonne' => $acteur5));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $acteur5));
    $req->closeCursor();
}

$personne->execute(array('nomPersonne' => $realisateur));
$datact = $personne->fetch();
if ($datact['idPersonne']){
}else {
    $req = $bdd->prepare('INSERT INTO personne(nomPersonne)
    VALUES(:nomPersonne)');
    $req->execute(array(
    'nomPersonne' => $realisateur));
    $req->closeCursor();
}
// $personne>closeCursor();



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Renseignements</title>
</head>
<body>


    <h1>Merci</h1>
     <a href="../index.php" id="retour">Revenir a la liste des films</a>

</body>
</html>

