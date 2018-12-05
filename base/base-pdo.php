<?php
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=test_film;charset=utf8', 'mydev', 'developpeur');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

?>