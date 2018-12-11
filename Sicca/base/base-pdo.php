<?php
try
{
        $bdd = new PDO('mysql:host=localhost;dbname=film_DCL;charset=utf8', 'scarlett', 'fanscarlett');
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

?>