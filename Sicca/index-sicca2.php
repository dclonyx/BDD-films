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
    include('base/base-pdo.php'); 
    ?>
</head>
<body>
    <header>
        <h1>Les films préférés des D Codeurs du Lac</h1>
    </header>

    <main>
    <?php 
    require 'class/formulaire.php';
    ?>
        <!-- <h2>Filtres</h2> -->
        <div id="listing">
        <div id="listeGenre">
            <?php
            include('php/genre.php'); 
            $messages = $requestGenre->fetchAll(PDO::FETCH_OBJ);
            echo '<form action="./traitement.php" method="get" name="FormAction">';
            echo '<select id="genre" name="genre" size="1" class="liste">';

            foreach($messages as $message)
            {
                echo $message->nomGenre.'<option value="'.$message->nomGenre.'">'.$message->nomGenre.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Enregistrer"></form>';
            ?>
        </div>
            
        <div id="listeAnnee"> 
            <?php
            include('php/annee.php');
            $messages = $requestAn->fetchAll(PDO::FETCH_OBJ); 
            echo '<form action="./traitement.php" method="get" name="FormAn">';
            echo '<select id="anFilm" name="anFilm" size="1" class="liste">';

            foreach($messages as $message)
            {
            echo $message->anneeFilm.'<option value="'.$message->anneeFilm.'">'.$message->anneeFilm.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Enregistrer"></form>';
            ?>
        </div>

        <div id="listePays">
            <?php
            include('php/pays.php');
            $messages = $requestPays->fetchAll(PDO::FETCH_OBJ); 
            echo '<form action="./traitement.php" method="get" name="FormAn">';
            echo '<select id="nomPays" name="nomPays" size="1" class="liste">';

            foreach($messages as $message)
            {
            echo $message->nomPays.'<option value="'.$message->nomPays.'">'.$message->nomPays.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Enregistrer"></form>';
            ?>
            </select>
        </div>
            </div>


            

            <?php
            include('php/film.php');
            
            function is_image($filename) {
                return (preg_match("/(.*)(.gif|.bmp|.png|.jpg|.jpeg)$/iU", $filename));
            }


            // On affiche chaque entrée une à une
            while ($donnees = $request->fetch())
            {
            ?>
            <div id="<?php echo $donnees['nomFilm']; ?>" class="bandeaufilm">
                <?php if (($donnees['afficheFilm'] != "") && (is_image($donnees['afficheFilm']))) {?>

                <div class="affiche"><img src="<?php echo $donnees['afficheFilm']; ?>" alt=""></div>

                <?php } else  { ?>

                <div class="affiche"><img src="https://via.placeholder.com/140x180"></div>

                <?php } ?>
                <div class="text">
                    <h2><?php echo $donnees['nomFilm']; ?></h2>
                    <p><?php echo $donnees['resumeFilm']; ?></p>                </div>
            </div>
            <?php
            }
            $request->closeCursor(); // Termine le traitement de la requête
            ?>
    </main>

    <footer>
        
    </footer>
    <script src="./js/script.js"></script>
</body>
</html>