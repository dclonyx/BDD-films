<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">.
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Les Films des D Codeurs</title>
    <?php 
    /* Liaison BDD */
    include('base-pdo.php'); 
    ?>
</head>
<body>
    <header>
        <h1>Les films préférés des D Codeurs du Lac</h1>
    </header>

    <main>
        <!-- <h2>Filtres</h2> -->
            <div id="listing">
            <div id="listeGenre">
                <select id="genre" name="genre" size="1" class="liste">
                    <?php
                    include('genre.php'); 
                    // On affiche chaque entrée une à une
                    while ($donnees = $reponse->fetch())
                    {
                    ?>
                    <option value="<?php echo $donnees['nomGenre']; ?>"><?php echo $donnees['nomGenre']; ?></option>
                    <?php
                    }
                    $reponse->closeCursor(); // Termine le traitement de la requête
                    ?>
                </select>
            </div>
            
            <div id="listeAnnee"> 
                <select id="annee" name="annee" size="1" class="liste">
                    <?php
                    include('annee.php'); 
                    // On affiche chaque entrée une à une
                    while ($donnees = $reponse->fetch())
                    {
                    ?>
                    <option value="<?php echo $donnees['anneeFilm']; ?>"><?php echo $donnees['anneeFilm']; ?></option>
                    <?php
                    }
                    $reponse->closeCursor(); // Termine le traitement de la requête
                    ?>
                </select>
            </div>

            <div id="listePays">
                <select id="pays" name="pays" size="1" class="liste">
                    <?php
                    include('pays.php'); 
                    // On affiche chaque entrée une à une
                    while ($donnees = $reponse->fetch())
                    {
                    ?>
                    <option value="<?php echo $donnees['nomPays']; ?>"><?php echo $donnees['nomPays']; ?></option>
                    <?php
                    }
                    $reponse->closeCursor(); // Termine le traitement de la requête
                    ?>
                </select>
            </div>
            </div>


            

            <?php
            include('film.php'); 
            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch())
            {
            ?>
            <div id="<?php echo $donnees['nomFilm']; ?>" class="bandeaufilm">
            <div class="affiche"><img src="<?php echo $donnees['afficheFilm']; ?>" alt=""></div>
            <div class="text">
            <h2><?php echo $donnees['nomFilm']; ?></h2>
            <p></p>
            </div>
            </div>
            <?php
            }
            $reponse->closeCursor(); // Termine le traitement de la requête
            ?>
    </main>

    <footer>
        
    </footer>
    <script src="./js/script.js"></script>
</body>
</html>