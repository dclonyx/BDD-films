-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 05 Décembre 2018 à 09:30
-- Version du serveur :  10.1.34-MariaDB-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test film`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nomUtilisateur` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`) VALUES
(1, 'BERAUD Fabien'),
(2, 'Dherret Quentin'),
(3, 'EDAINS'),
(4, 'FRANCOIS'),
(5, 'FRED'),
(6, 'Grasse JP'),
(7, 'JUY Laurent'),
(8, 'Lacroix Christophe'),
(9, 'LAURENT Maximilien'),
(10, 'Marceron Corinne'),
(11, 'MAXIME'),
(12, 'OUVRARD Fabien'),
(13, 'SAUNIER Thibaud'),
(14, 'SYLVIE'),
(15, 'YANG Francis');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
