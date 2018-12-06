<?php
try
{
        $bdd = new PDO('mysql:host=localhost;dbname=film_DCL;charset=utf8', 'scarlett', 'fanscarlett');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

?>