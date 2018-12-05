<?php
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=film_decodeur;charset=utf8', 'aformac', 'Am45sicc25');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

?>