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
    <a href="./php/demande.php" id="new">Ajouter un film</a>
    <?php 
    require 'class/formulaire.php';
    
    ?>
        <!-- <h2>Filtres</h2> -->
        <div id="listing">
        <div id="listeGenre">
            <?php
            include('php/genre.php'); 
            $messages = $requestGenre->fetchAll(PDO::FETCH_OBJ);
            echo '<form action="./index.php" method="get" name="FormAction">';
            echo '<select id="genreFilm" name="genre" size="1" class="liste">';

            foreach($messages as $message)
            {
                echo $message->nomGenre.'<option value="'.$message->nomGenre.'">'.$message->nomGenre.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Valider"></form>';
            ?>
        </div>
            
        <div id="listeAnnee"> 
            <?php
            include('php/annee.php');
            $messages = $requestAn->fetchAll(PDO::FETCH_OBJ); 
            echo '<form action="./index.php" method="get" name="FormAn">';
            echo '<select id="anFilm" name="anFilm" size="1" class="liste">';

            foreach($messages as $message)
            {
            echo $message->anneeFilm.'<option value="'.$message->anneeFilm.'">'.$message->anneeFilm.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Valider"></form>';
            ?>
        </div>

        <div id="listePays">
            <?php
            include('php/pays.php');
            $messages = $requestPays->fetchAll(PDO::FETCH_OBJ); 
            echo '<form action="./index.php" method="get" name="FormAn">';
            echo '<select id="nomPays" name="nomPays" size="1" class="liste">';

            foreach($messages as $message)
            {
            echo $message->nomPays.'<option value="'.$message->nomPays.'">'.$message->nomPays.'</option>';
            }
            echo '</select>';
            echo '<input type="submit" value="Valider"></form>';
            ?>
            </select>
        </div>
            </div>
            <?php
            function is_image($filename) {
                return (preg_match("/(.*)(.gif|.bmp|.png|.jpg|.jpeg)$/iU", $filename));
            }
            

            if (isset($_GET['anFilm']) && ($_GET['anFilm'] != NULL)) {
                $anFilm = $_GET['anFilm'];
                include('php/filmAn.php');
                $messages = $requestFilm->fetchAll(PDO::FETCH_OBJ);
            } elseif (isset($_GET['genre']) && ($_GET['genre'] != NULL)) {
                $genreFilm = $_GET['genre'];
                include('php/filmGenre.php');
                $messages = $requestFilm->fetchAll(PDO::FETCH_OBJ);
            } elseif (isset($_GET['nomPays']) && ($_GET['nomPays'] != NULL)) {
                $nomPays = $_GET['nomPays'];
                include('php/filmPays.php');
                $messages = $requestFilm->fetchAll(PDO::FETCH_OBJ); 
            } else {
                include('php/film.php');
                $messages = $requestFilm->fetchAll(PDO::FETCH_OBJ);
            }


            foreach($messages as $message)
                {
                ?>

                <div id="<?php echo $message->nomFilm; ?>" class="bandeaufilm">
                    <?php if (($message->afficheFilm != "") && (is_image($message->afficheFilm))) {?>

                    <div class="affiche"><img src="<?php echo $message->afficheFilm; ?>" alt=""></div>

                    <?php } else  { ?>

                    <div class="affiche"><img src="https://via.placeholder.com/140x180"></div>

                    <?php } ?>
                    <div class="text">
                    <div id="titreAn">
                        <h2><?php echo $message->nomFilm; ?></h2>
                        <h2><?php echo $message->anneeFilm; ?></h2>
                    </div>
                    <p><?php echo $message->resumeFilm; ?></p> 
                    <div id="acteursPays"> 
                        <div class="personnes">
                            <?php $filmAct = $message->nomFilm;
                            include('php/personne.php');
                            $acteurs = 0;
                            while ($gens = $personne->fetch())
                            {
                                if ($gens[0] == $filmAct && $acteurs == 0) {
                                    ?>
                                <span class="gras">Acteurs:</span> <?php echo $gens['nomPersonne']; ?>
                                <?php 
                                $acteurs++;
                                } elseif ($gens[0] == $filmAct) {
                                    echo ' '.','.' '.$gens['nomPersonne'];
                                }
                            }
                            include('php/realisateur.php');
                            while ($gen2 = $realise->fetch())
                            {
                                if ($gen2[0] == $filmAct) {
                                    ?>
                                <p><span class="gras">Realisateur:</span> <?php echo $gen2['nomPersonne']; ?></p>
                                <?php 
                                }
                            }
                            include('php/scenariste.php');
                            while ($gen3 = $produit->fetch())
                            {
                                if ($gen3[0] == $filmAct) {
                                    ?>
                                <p><span class="gras">Scénariste:</span> <?php echo $gen3['nomPersonne']; ?></p> 
                                <?php 
                                }
                            } ?>
                        </div> 
                        <div class="paysLiens">   
                                <?php
                            include('php/paysFilm.php');
                            while ($origine = $pays->fetch())
                            {
                                if ($origine[0] == $filmAct) {
                                    ?>
                                <p><span class="gras">Origine:</span> <?php echo $origine['nomPays']; ?></p> 
                                <?php 
                                }
                            }
                            include('php/bandeAnnonce.php');
                            while ($bandeAnn = $liens->fetch())
                            {
                                if ($bandeAnn[0] == $filmAct) {
                                    ?>
                                <a href="<?php echo $bandeAnn['lienBandeAnnonce']; ?>" target="_blank">Bande Annonce </a>
                                <?php 
                                }
                            } ?>
                            <div id="utilisateur">
                                <?php
                                include('php/utilisateur.php');
                                while ($depose = $utilisateur->fetch())
                                {
                                    if ($depose[0] == $filmAct) {
                                        ?>
                                    <p><span class="gras">Proposé par:</span> <?php echo $depose['nomUtilisateur']; ?></p> 
                                    <?php 
                                    }
                                }
                                ?>
                            </div>    
                        </div>
                    </div>    
                </div>
                </div>

                <?php
                }
            ?>


            
    </main>

    <footer>
        
    </footer>
    <script src="./js/script.js"></script>
</body>
</html>