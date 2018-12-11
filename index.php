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
        <!-- <h2>Filtres</h2> -->
        <div id="listing">
            <div id="listeGenre">
                <select id="genre" name="genre" size="1" class="liste">
                    <?php
                    include('php/genre.php'); 
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
                    include('php/annee.php'); 
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
                    include('php/pays.php'); 
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
            include('php/film.php');
            
            // include('php/realisateur.php');
            
            function is_image($filename) {
                return (preg_match("/(.*)(.gif|.bmp|.png|.jpg|.jpeg)$/iU", $filename));
            }


            // On affiche chaque entrée une à une
            while ($donnees = $reponse->fetch())
            {
            ?>
            <div id="<?php echo $donnees['nomFilm']; ?>" class="bandeaufilm">
                <?php if (($donnees['afficheFilm'] != "") && (is_image($donnees['afficheFilm']))) {?>

                <div class="affiche"><img src="<?php echo $donnees['afficheFilm']; ?>" alt=""></div>

                <?php } else  { ?>

                <div class="affiche"><img src="https://via.placeholder.com/140x180"></div>

                <?php } ?>
                <div class="text">
                    <div id="titreAn">
                        <h2><?php echo $donnees['nomFilm']; ?></h2>
                        <h2><?php echo $donnees['anneeFilm']; ?></h2>
                    </div>
                    <p><?php echo $donnees['resumeFilm']; ?></p> 
                    <div id="acteursPays"> 
                        <div class="personnes">
                            <?php $filmAct = $donnees['nomFilm'];
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
            $reponse->closeCursor(); // Termine le traitement de la requête
            ?>
    </main>

    <footer>
        
    </footer>
    <script src="./js/script.js"></script>
</body>
</html>