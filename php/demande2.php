<?php 
include('../base/base-pdo.php');

// On commence par récupérer les champs 
if(isset($_GET['nomFilm'])){
    $nom=$_GET['nomFilm'];
}else      
    $nom="";

if(isset($_GET['anneeFilm'])){
    $annee=$_GET['anneeFilm'];
}else     
    $annee="";

if(isset($_GET['dureeFilm'])) { 
    $duree=$_GET['dureeFilm'];
}else      
    $duree="";

if(isset($_GET['resumeFilm'])){      
    $resume=$_GET['resumeFilm'];
}else      
    $resume="";

if(isset($_GET['afficheFilm'])){      
    $affiche=$_GET['afficheFilm'];
}else      
    $affiche="";

if(isset($_GET['lienBandeAnnonce'])){      
    $link=$_GET['lienBandeAnnonce'];
}else {    
    $link="";
}

$numFilm = $bdd->prepare('SELECT idFilm FROM Film WHERE nomFilm=:nomFilm');
$numFilm->execute(array('nomFilm' => $nom));
$datanum = $numFilm->fetch();
    if ($datanum['idFilm']){
        echo 'Ce film existe deja dans la base de donnees';
        include ('demande.php');

            // On vérifie si les champs sont vides 
        }elseif(empty($nom) OR empty($annee) OR empty($duree) OR empty($resume) OR empty($affiche) OR empty($link)) { 
                echo '<font color="red">Attention, aucun champ ne peut rester vide !</font>'; 
                include ('demande.php');

            // Aucun champ n'est vide, on peut enregistrer dans la table 
            }else {  
                    $req = $bdd->prepare('INSERT INTO Film(nomFilm, dureeFilm, anneeFilm, resumeFilm, afficheFilm, lienBandeAnnonce)
                    VALUES(:nomFilm, :anneeFilm, :dureeFilm, :resumeFilm, :afficheFilm, :lienBandeAnnonce)');
                    $req->execute(array(
                    'nomFilm' => $nom,
                    'anneeFilm' => $annee,
                    'dureeFilm' => $duree,
                    'resumeFilm' => $resume,
                    'afficheFilm' => $affiche,
                    'lienBandeAnnonce'=> $link
                    ));

                    $req->closeCursor();  // on ferme la connexion 
            };
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/style_form.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Renseignements</title>
</head>
<body>
    <h1>Renseignements</h1>
    <?php
        require 'form.php';
        $form = new Form(array());
    ?>
    <form action="./demande3.php" method="GET">

        <?php
            echo $form->input('acteur1', 'Acteur 1');
            echo $form->input('pays1', 'Pays de acteur 1');
            echo $form->input('acteur2', 'Acteur 2');
            echo $form->input('pays2', 'Pays de acteur 2');
            echo $form->input('acteur3', 'Acteur 3');
            echo $form->input('pays3', 'Pays de acteur 3');
            echo $form->input('acteur4', 'Acteur 4');
            echo $form->input('pays4', 'Pays de acteur 4');
            echo $form->input('acteur5', 'Acteur 5');
            echo $form->input('pays5', 'Pays de acteur 5');
            echo $form->input('realisateur', 'Realisateur');
            echo $form->input('pays6', 'Pays du realisateur');
        
            echo $form->submit();
        ?>
    </form>

</body>
</html>

