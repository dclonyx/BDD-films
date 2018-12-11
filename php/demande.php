<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/style_form.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Nouveau film</title>
</head>
<body>
    <h1>Nouveau film</h1>
    <?php
        require 'form.php';
        $form = new Form(array());
    ?>
    <form action="./demande2.php" method="GET">

        <?php
            echo $form->input('nomFilm', 'Nom du Film');
            echo $form->input('anneeFilm', 'Annee');
            echo $form->input('dureeFilm', 'Duree');
            echo $form->input('resumeFilm', 'Resume');
            echo $form->input('afficheFilm', 'Affiche');
            echo $form->input('lienBandeAnnonce', 'Bande annonce');
            
            echo $form->submit();
        ?>
    </form>

</body>
</html>

