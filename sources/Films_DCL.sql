-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 05 Décembre 2018 à 11:14
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Films DCL`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `idGenre` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `idGenre2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `decris`
--

CREATE TABLE `decris` (
  `idMotCles` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `estOriginaire`
--

CREATE TABLE `estOriginaire` (
  `idPays` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `idFilm` int(11) NOT NULL,
  `nomFilm` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL,
  `anneeFilm` int(11) DEFAULT NULL,
  `dureeFilm` int(11) DEFAULT NULL,
  `resumeFilm` text COLLATE utf8_roman_ci,
  `afficheFilm` text COLLATE utf8_roman_ci,
  `lienBandeAnnonce` text COLLATE utf8_roman_ci,
  `idUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `Film`
--

INSERT INTO `Film` (`idFilm`, `nomFilm`, `anneeFilm`, `dureeFilm`, `resumeFilm`, `afficheFilm`, `lienBandeAnnonce`, `idUtilisateur`) VALUES
(1, 'Halloween', 2007, 106, 'Un 31 octobre, à Haddonfield, Illinois, le soir de la fête des masques de Halloween... La vie du jeune Michael Myers, 10 ans, bascule.\nTroublé par des pulsions morbides, moqué par ses camarades d\'école parce que sa mère est strip-teaseuse, harcelé par son beau-père, tourmenté par les premiers émois sexuels de sa soeur aînée, il revêt un masque en latex et, dans un accès de folie, assassine la moitié de sa famille au couteau de cuisine.\nA la suite de cette nuit de cauchemar, il est pris en charge par le Docteur Sam Loomis, un brillant pédopsychiatre, mais tue sauvagement une infirmière, précipitant le suicide de sa mère, désespérée.\nUn 31 octobre, 17 ans plus tard. Toujours dissimulé derrière un masque et enfermé dans son mutisme, Michael s\'échappe de la prison psychiatrique où il a grandi et recommence à semer des cadavres sur sa route.\nConvaincu qu\'il est une incarnation du mal à l\'état pur, le Docteur Loomis part sur sa piste. Celle-ci mène directement à Haddonfield, là où se trouve toujours la petite soeur de Michael, Laurie, seul membre de sa famille encore en vie.', 'https://www.google.fr/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwiI54mon4PfAhWQyIUKHbQWB1sQjRx6BAgBEAU&url=http%3A%2F%2Fwww.allocine.fr%2Ffilm%2Ffichefilm_gen_cfilm%3D111968.html&psig=AOvVaw32993hryEjPXXnKd_v21An&ust=1543912207095028', 'http://www.allocine.fr/video/player_gen_cmedia=18746487&cfilm=111968.html', 9),
(2, 'Tu ne tueras point', 2016, 140, 'Quand la Seconde Guerre mondiale a éclaté, Desmond, un jeune américain, s’est retrouvé confronté à un dilemme : comme n’importe lequel de ses compatriotes, il voulait servir son pays, mais la violence était incompatible avec ses croyances et ses principes moraux. Il s’opposait ne serait-ce qu’à tenir une arme et refusait d’autant plus de tuer.\n\nIl s’engagea tout de même dans l’infanterie comme médecin. Son refus d’infléchir ses convictions lui valut d’être rudement mené par ses camarades et sa hiérarchie, mais c’est armé de sa seule foi qu’il est entré dans l’enfer de la guerre pour en devenir l’un des plus grands héros. Lors de la bataille d’Okinawa sur l’imprenable falaise de Maeda, il a réussi à sauver des dizaines de vies seul sous le feu de l’ennemi, ramenant en sureté, du champ de bataille, un à un les soldats blessés.', 'http://t1.gstatic.com/images?q=tbn:ANd9GcTWpqoWNhE8SUXpFH_lRNI6duy73YuBiiDtkcbfvOE9b0MTJCrx', 'http://www.allocine.fr/video/player_gen_cmedia=19564298&cfilm=208104.html', 9),
(3, 'John Wick', 2014, 101, 'Depuis la mort de sa femme bien-aimée, John Wick passe ses journées à retaper sa Ford Mustang de 1969, avec pour seule compagnie sa chienne Daisy. Il mène une vie sans histoire, jusqu’à ce qu’un malfrat sadique nommé Iosef Tarasof remarque sa voiture. John refuse de la lui vendre. Iosef n’acceptant pas qu’on lui résiste, s’introduit chez John avec deux complices pour voler la Mustang, et tuer sauvagement Daisy…\nJohn remonte la piste de Iosef jusqu’à New York. Un ancien contact, Aurelio, lui apprend que le malfrat est le fils unique d’un grand patron de la pègre, Viggo Tarasof. La rumeur se répand rapidement dans le milieu : le légendaire tueur cherche Iosef. Viggo met à prix la tête de John : quiconque l’abattra touchera une énorme récompense. John a désormais tous les assassins de New York aux trousses.', 'http://www.allocine.fr/film/fichefilm-221387/photos/detail/?cmediafile=21137593', 'http://www.allocine.fr/video/player_gen_cmedia=19548076&cfilm=221387.html', 9),
(4, 'Mommy', 2014, 140, 'Une veuve mono-parentale hérite de la garde de son fils, un adolescent TDAH impulsif et violent. Au coeur de leurs emportements et difficultés, ils tentent de joindre les deux bouts, notamment grâce à l’aide inattendue de l’énigmatique voisine d’en face, Kyla. Tous les trois, ils retrouvent une forme d’équilibre et, bientôt, d’espoir.', 'https://m.media-amazon.com/images/M/MV5BMGI3YWFmNDQtNjc0Ny00ZDBjLThlNjYtZTc1ZTk5MzU2YTVjXkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_.jpg', 'https://youtu.be/8X1fB4ylVuk', 3),
(5, 'Drive', 2011, 100, 'Un jeune homme solitaire, \"The Driver\", conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.\nC’est alors que la route du pilote croise celle d’Irene et de son jeune fils. Pour la première fois de sa vie, il n’est plus seul.\nLorsque le mari d’Irene sort de prison et se retrouve enrôlé de force dans un braquage pour s’acquitter d’une dette, il décide pourtant de lui venir en aide. L’expédition tourne mal…\nDoublé par ses commanditaires, et obsédé par les risques qui pèsent sur Irene, il n’a dès lors pas d’autre alternative que de les traquer un à un… ', 'https://m.media-amazon.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/2TEG-j1O3hc', 3),
(6, 'Interstellar', 2014, 169, 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. ', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/aZd-HmEp5Co', 3),
(7, 'Matrix', 1999, 140, 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\'est-ce que la Matrice ? Nul ne le sait, et aucun homme n\'est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l\'Elu, le libérateur mythique de l\'humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents..', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/04/34/49/043449_af.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19578569&cfilm=19776.html', 12),
(8, 'Inception', 2010, 135, 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.', 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18944758&cfilm=143692.html', 12),
(9, 'Ready Player One', 2018, 148, '2045. Le monde est au bord du chaos. Les êtres humains se réfugient dans l\'OASIS, univers virtuel mis au point par le brillant et excentrique James Halliday. Avant de disparaître, celui-ci a décidé de léguer son immense fortune à quiconque découvrira l\'œuf de Pâques numérique qu\'il a pris soin de dissimuler dans l\'OASIS. L\'appât du gain provoque une compétition planétaire. Mais lorsqu\'un jeune garçon, Wade Watts, qui n\'a pourtant pas le profil d\'un héros, décide de participer à la chasse au trésor, il est plongé dans un monde parallèle à la fois mystérieux et inquiétant…', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/18/02/14/09/15/3437390.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19577213&cfilm=229831.html', 12),
(10, 'Ghost in the Shell', 2017, 107, 'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres. ', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/17/03/01/17/45/314818.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19569556&cfilm=226739.html', 2),
(11, 'Blade Trinity', 2004, 106, 'A l\'aide d\'une manipulation d\'image aussi géniale que machiavélique, les vampires ont réussi à piéger Blade : sur un document vidéo, on le découvre en train de massacrer... un humain. Pour le FBI, Blade devient l\'ennemi à capturer. Pourchassé par les hommes et condamné par les vampires, Blade va devoir se battre sur tous les fronts. Les vampires, qui multiplient les alliances secrètes avec des humains renégats, sont sur le point d\'utiliser son propre ADN pour ressusciter celui qui, il y a bien longtemps, fut le premier et le plus puissant d\'entre eux. Entre course contre la montre et les pièges qui se multiplient, l\'affrontement est total. Cette fois, Blade aussi va devoir montrer les crocs... ', 'http://fr.web.img3.acsta.net/r_1920_1080/pictures/17/01/31/14/48/285473.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18369122&cfilm=46864.html', 2),
(12, 'Resident Evil : Apocalypse', 2004, 100, 'Alice a survécu à l\'effroyable cauchemar qui a dévasté le complexe scientifique ultrasecret d\'Umbrella Corporation, mais elle n\'est pas la seule à en être ressortie... Un virus mortel s\'est abattu sur la ville de Raccoon et rien ne semble pouvoir lui échapper. Avec un groupe de survivants, Alice, dont le métabolisme a mystérieusement été modifié, doit affronter le pire. Certes, elle a gagné de nouveaux pouvoirs, elle est plus puissante, ses sens sont surmultipliés et sa dextérité est hallucinante, mais ça ne sera pas forcément suffisant... Elle est rejointe dans son combat par Jill Valentine, un ancien membre des forces spéciales d\'Umbrella. Ensemble, elles vont tenter de résoudre les énigmes et faire face à une force maléfique, un ennemi absolu lancé sur leurs traces. Son nom ? Némésis. Son but ? Eliminer toute vie. Cette fois, s\'échapper ne suffira pas. Il va falloir affronter...', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/35/14/37/18388458.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19454632&cfilm=51386.html', 2),
(13, 'Star Wars Episode III La Revanche des Sith', 2005, 140, 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\nLes Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi....', 'https://media.senscritique.com/media/000009575628/source_big/Star_Wars_Episode_III_La_Revanche_des_Sith.jpg', 'https://youtu.be/t1qtvKYwTV0', 7),
(14, 'Jumanji', 1995, 104, ' Lors d\'une partie de Jumanji, un jeu très ancien, le jeune Alan est propulsé sous les yeux de son amie d\'enfance, Sarah, dans un étrange pays. Il ne pourra s\'en échapper que lorsqu\'un autre joueur reprendra la partie et le libèrera sur un coup de dés. Vingt-six ans plus tard, il retrouve le monde réel par le coup de dés de deux autres jeunes joueurs.', 'https://media.senscritique.com/media/000016456041/source_big/Jumanji.jpg', 'https://www.youtube.com/watch?v=9P6TZcCk0MM', 7),
(15, 'Le Roi Lion', 1994, 89, 'Sur les Hautes terres d’Afrique règne un lion tout-puissant, le roi Mufasa, que tous les hôtes de la jungle respectent et admirent pour sa sagesse et sa générosité. Son jeune fils Simba sait qu’un jour il lui succèdera, conformément aux lois universelles du cycle de la vie, mais il est loin de deviner les épreuves et les sacrifices que lui imposera l’exercice du pouvoir. Pensant être responsable de la mort de son pere, Simba quitte le royaume et se  retrouve pour la première fois seul et démuni face à un monde hostile. C’est alors que le destin place sur sa route un curieux tandem d’amis... ', ' https://disney-planet.fr/wp-content/uploads/2014/08/affiche-roi-lion-01.jpg', 'https://youtu.be/-KfIYw-D4Iw', 7),
(16, 'La ligne verte', 2000, 189, 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. ', 'http://fr.web.img5.acsta.net/c_215_290/medias/nmedia/18/66/15/78/19254683.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18650717&cfilm=22779.html', 11),
(17, 'Sleepy Hollow', 1999, 105, 'En 1799, dans une bourgade de La Nouvelle-Angleterre, plusieurs cadavres sont successivement retrouvés décapités. Les têtes ont disparu. Terrifiés, les habitants sont persuadés que ces meurtres sont commis par un étrange et furieux cavalier, dont la rumeur prétend qu\'il est lui-même sans tête', 'http://fr.web.img6.acsta.net/c_215_290/medias/nmedia/18/74/38/21/19255611.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19449367&cfilm=22345.html', 11),
(18, 'Bagdad Café', 1987, 115, 'Après une scène de ménage Jasmin atterrit au Bagdad Café, motel minable entre Disneyland et Las Vegas. La patronne, Brenda, Noire tapageuse et insatisfaite, règne sur tout un petit monde de routiers et de personnages énigmatiques', 'http://fr.web.img2.acsta.net/c_215_290/pictures/18/07/05/09/41/1702585.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19405598&cfilm=3531.html', 11),
(19, 'Le Plus Beau des combats', 2000, 113, 'En 1971, dans le T. C. Williams High School d\'Alexandria en Virginie, des étudiants noirs sont intégrés dans l\'établissement scolaire jusqu\'alors réservé aux blancs. Cette décision a pour effet d’exacerber les tensions raciales déjà existantes dans la communauté, surtout lorsque l’entraîneur blanc de l’équipe de football américain, Bill Yoast, comprend qu’il devra œuvrer sous la supervision de Herman Boone, un afro-américain. Les deux hommes apprennent pourtant à se respecter, malgré leurs tempéraments fort différents. Ils font de même pour les joueurs de l\'équipe et leurs inculquent des valeurs qui font d’eux des champions respectés', 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/00/02/23/77/69198039_af.jpg', 'https://youtu.be/9zrSalMKvv4', 13),
(20, 'Taken', 2008, 93, 'Ancien agent secret résidant à Los Angeles, Bryan Mills assiste par téléphone à l\'enlèvement, en plein Paris, de sa fille Kim. Devant faire face à un groupe de mafieux albanais spécialisés dans la traite des femmes et le proxénétisme, il aura besoin de tout son talent d\'ex-agent pour l\'en extirper en moins de 96 heures.', 'http://fr.web.img6.acsta.net/medias/nmedia/18/65/13/27/18899329.jpg', 'https://youtu.be/sBychzk2EJQ', 13),
(21, 'La planete des singes', 1968, 112, 'L\'engin spatial américain Icare, parti en 19721 avec à son bord 4 membres d\'équipage, traverse l\'espace à une vitesse proche de la vitesse de la lumière. Au terme d\'un voyage de 18 mois, le vaisseau s\'écrase le 25 novembre 39782 sur une mystérieuse planète, au coeur d\'une région désertique. Les 3 survivants du crash, le capitaine George Taylor et les lieutenants John Landon et Thomas Dodge, découvrent très vite que ce monde est peuplé d\'hommes primitifs dominés par une race de singes évolués.', 'https://p6.storage.canalblog.com/65/06/1349409/105163859_o.jpg', 'https://youtu.be/EPoPewWdM24', 13),
(22, 'Avatar', 2009, 162, 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre.', 'http://fr.web.img4.acsta.net/r_1280_720/medias/nmedia/18/64/43/65/19211318.jpg', 'https://www.youtube.com/watch?v=O1CzgULNRGs', 15),
(23, 'American history x', 1999, 119, 'Ce film tente d\'expliquer l\'origine du racisme et de l\'extrémisme aux États-Unis. Il raconte l\'histoire de Derek qui, voulant venger la mort de son père, abattu par un dealer noir, a épousé les thèses racistes d\'un groupuscule de militants d\'extrême droite et s\'est mis au service de son leader, brutal théoricien prônant la suprématie de la race blanche. Ces théories le mèneront à commettre un double meurtre entraînant son jeune frère, Danny, dans la spirale de la haine.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnLq2eN38vdMlupzRomBtc4k_yVo3K4R2wjgs61gynOzuW7xma', 'https://www.youtube.com/watch?v=wgRbmDfzBuU', 15),
(24, 'Forrest Gump', 1994, 142, 'Au fil des différents interlocuteurs qui viennent s\'asseoir tour à tour à côté de lui sur un banc, Forrest Gump raconte la fabuleuse histoire de sa vie. Sa vie est à l\'image d\'une plume qui se laisse porter par le vent, tout comme Forrest se laisse porter par les événements qu\'il traverse dans l\'Amérique de la seconde moitié du 20e siècle.', 'http://www.linternaute.com/cinema/image_cache/objdbfilm/image/540/107483.jpg', 'https://www.youtube.com/watch?v=q2AP7dAeVhw', 15),
(25, 'JE COMPTE SUR VOUS', 2015, 138, 'Un homme, un téléphone portable, plusieurs millions d\'euros dérobés, une quarantaine détablissements bernés. Drogué à l\'adrénaline que ses arnaques lui procurent, Gilbert Perez manipule et trompe ses victimes avec brio en se faisant passer tour à tour pour leur président puis un agent de la DGSE', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSwonOLwOzr0oVLonsXvm24qbLQAoq9zeXxbwjsozcGGgCldPfd', 'https://www.youtube.com/watch?v=bjJpIfUdReQ', 10),
(26, 'SNOWDEN', 2016, 214, 'Edward Joseph Snowden réaliser son rêve quand il rejoint les équipes de la CIA puis de la NSA. Il découvre alors au cœur des Services de Renseignements américains l’ampleur insoupçonnée de la cyber-surveillance. Violant la Constitution, soutenue par de grandes entreprises, la NSA collecte des montagnes de données et piste toutes les formes de télécommunications à un niveau planétaire. Choqué par cette intrusion systématique dans nos vies privées, Snowden décide de rassembler des preuves et de tout divulguer. Devenu lanceur d’alerte, il sacrifiera sa liberté et sa vie privée.', 'http://t0.gstatic.com/images?q=tbn:ANd9GcTkAolD50YnGvMb_-Ka2mYmrqdjTK4jOFHLfnz8WSfUGsJtp2ID', 'https://www.youtube.com/watch?v=k78GKTvBwyE', 10),
(27, 'THE WALK', 2015, 203, 'Biopic sur le funambule français Philippe Petit, célèbre pour avoir joint et traveser en 1974 les deux tours du World Trade Center sur un fil, suspendu au-dessus du vide.', 'http://t2.gstatic.com/images?q=tbn:ANd9GcRpIG1G2zVhhZrO1rDgL4nXKc6f_wN5HtyXw_IhBsWqorDZ_xvC', 'https://www.youtube.com/watch?v=4kERfpAQGCs', 10),
(28, 'TRON', 1982, 96, 'Flynn, un concepteur de jeux vidéo qui s\'est vu voler ses jeux par son ex-employeur, veut à tout prix récupérer une preuve qui lui ferait valoir ses droits. Avec l\'aide d\'Alan et de Lora, deux de ses anciens collègues, il infiltre le MCP (Maître Contrôleur Principal), un ordinateur avide de pouvoir à l\'intelligence artificielle surdéveloppée. Quand ce dernier découvre que Flynn veut s\'infiltrer dans ses circuits, il le téléporte dans un jeu vidéo. Pour s\'évader, Flynn devra compter sur l\'aide de Tron, un programme indépendant inventé par Alan.', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/68/46/16/19028526.jpg', 'https://www.youtube.com/watch?v=6JTUQf7dZcQ', 8),
(29, 'Wargame', 1983, 111, 'Un jeune passionné d\'informatique, voulant pirater des jeux vidéos, se branche sur un ordinateur secret de l\'armée américaine. Croyant être aux commandes d\'un jeu virtuel, le garçon déclenche sans le savoir le compte à rebours d\'une troisième guerre mondiale.', 'http://fr.web.img6.acsta.net/r_1920_1080/pictures/18/11/27/09/03/3375141.jpg', 'https://www.youtube.com/watch?v=xogbyv108kI', 8),
(30, 'H2G2 : Le guide du voyageur galactic', 2005, 108, 'Sale journée pour le Terrien Arthur Dent. Sa maison est sur le point d\'être rasée par un bulldozer, il découvre que son meilleur ami, Ford Prefect, est un extraterrestre et pour couronner le tout, la Terre va être pulvérisée dans quelques minutes pour faire de la place à une voie express hyperspatiale.', 'http://fr.web.img4.acsta.net/r_1920_1080/medias/nmedia/18/35/53/34/18431166.jpg', 'https://www.youtube.com/watch?v=8TQIvdFl4aU', 8),
(31, 'Blade runner', 1982, 120, 'Arthur a une chance de survivre, mais il doit pour cela se faire prendre en stop par un vaisseau spatial, avec l\'aide de Ford. Sa plus grande aventure va commencer au moment où notre propre monde disparaît... Arthur se jette dans l\'inconnu et entame un délirant périple au cours duquel il va découvrir la véritable nature de l\'univers.', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/66/01/66/20217903.jpg', 'https://www.youtube.com/watch?v=gCcx85zbxz4', 6),
(32, 'Alien', 1979, 116, 'En 2122, le cargo interstellaire Nostromo, de retour vers la Terre avec son chargement de minerai à la fin de sa mission de raffinerie, capte un signal sonore émis depuis un planétoïde isolé. L\'ordinateur de bord du vaisseau — appelé « Maman » — interrompt alors le trajet du Nostromo et réveille l\'équipage maintenu en biostase (en sommeil artificiel).', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/35/14/60/18363837.jpg', 'https://www.youtube.com/watch?v=LjLamj-b0I8', 6),
(33, 'Predator', 1987, 97, 'En 1987, un vaisseau spatial extraterrestre pénètre dans l\'atmosphère terrestre et largue une nacelle sur l\'Amérique centrale. Quelque temps après, le major Alan « Dutch » Schaefer (Arnold Schwarzenegger) arrive au Guatemala avec son équipe d\'élite pour une opération visant à retrouver un ministre du cabinet présidentiel perdu avec son second à cause des forces de guérilla en Val Verde (région de fiction).', '', 'https://www.youtube.com/watch?v=9u8vZwvP57Y', 6),
(34, 'whisper, libre comme le vent.', 2013, 105, 'C\'est l\'histoire d\'une rencontre entre une adolescente, Mika, et un cheval nommé Whisper. Magnifique, impétueuse et réputée indomptable, la bête se laisse cependant apprivoiser par sa jeune amie. Mais, alors que Whisper est destiné à l\'abattoir, Mika va devoir prouver qu\'il ne mérite pas ce destin en remportant un tournoi d\'équitation.', 'http://fr.web.img6.acsta.net/pictures/15/10/08/09/24/320924.jpg', 'https://www.youtube.com/watch?v=_4skvfN28Eg', 14),
(35, 'Dragons', 2010, 98, 'L\'histoire d\'Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va peu à peu amener Harold et les siens à voir le monde d\'un point de vue totalement différent.', 'http://fr.web.img4.acsta.net/medias/nmedia/18/73/01/74/19343191.jpg', 'https://www.youtube.com/watch?v=rsj6Iv2jE1I', 14),
(36, 'Prince of Persia : les sables du temps', 2010, 126, 'Un prince rebelle est contraint d\'unir ses forces avec une mystérieuse princesse pour affronter ensemble les forces du mal et protéger une dague antique capable de libérer les Sables du temps, un don de dieu qui peut inverser le cours du temps et permettre à son possesseur de régner en maître absolu sur le monde.', 'https://images-na.ssl-images-amazon.com/images/I/81DgnUVX1eL._SY550_.jpg', 'https://www.youtube.com/watch?v=KRDeYRawLK4', 14),
(37, 'Le Voyage de Chihiro', 2002, 125, 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'une harpie méphistophélique.', 'http://images.affiches-et-posters.com//albums/3/7390/AF7303.JPG', 'http://www.allocine.fr/video/player_gen_cmedia=18670499&cfilm=37485.html', 5),
(38, 'Good Morning England', 2009, 135, 'Carl vient de se faire renvoyer du lycée, et sa mère a décidé qu\'il irait réfléchir à son avenir auprès de son parrain, Quentin. Il se trouve que celui-ci est le patron de Radio Rock, une radio pirate qui émet depuis un bateau en mer du Nord peuplé d\'un équipage éclectique de DJ\'s rock and roll. À leur tête se trouve le Comte, un Américain exubérant, véritable dieu des ondes en synergie totale avec la musique. A ses côtés, ses fidèles animateurs : Dave, ironique, intelligent et d\'un humour acéré ; l\'adorable Simon, qui cherche l\'amour ; l\'énigmatique Midnight Mark, séduisant et silencieux ; Wee Small Hours Bob, le DJ des petites heures du matin, accro à la musique folk et à la drogue, Thick Kevin, qui possède l\'intelligence la plus microscopique du monde ; On-the-Hour John, le chroniqueur des actualités, et Angus \"The Nut\" Nutsford, qui est sans doute l\'homme le plus agaçant d\'Angleterre...', 'http://www.allocine.fr/film/fichefilm-134316/photos/detail/?cmediafile=19064391', 'http://www.allocine.fr/video/player_gen_cmedia=18874442&cfilm=134316.html', 5),
(39, 'Summer War', 2009, 114, 'Bienvenue dans le monde de OZ : la plateforme communautaire d\'internet. En se connectant depuis un ordinateur, une télévision ou un téléphone, des millions d\'avatars alimentent le plus grand réseau social en ligne pour une nouvelle vie, hors des limites de la réalité.\nKenji, un lycéen timide et surdoué en mathématiques, effectue un job d\'été au service de la maintenance d\'OZ. A sa grande surprise, la jolie Natuski, la fille de ses rêves, lui propose de l\'accompagner à Nagano, sa ville natale. Il se retrouve alors embarqué pour la fête traditionnelle du clan Jinnouchi. Il comprend bientôt que Natsuki ne l\'a invité que pour jouer le rôle du \" futur fiancé \" et faire bonne figure vis-à-vis de sa vénérable grand mère. Au même moment, un virus attaque OZ, déclenchant catastrophe sur catastrophe au niveau planétaire.\nAvec l\'aide de Kenji, tout le clan Jinnouchi se lance alors dans une véritable croisade familiale pour sauver le monde virtuel et ses habitants...', 'http://fr.web.img6.acsta.net/medias/nmedia/18/74/07/75/19434023.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18951740&cfilm=177581.html', 5),
(40, 'Shutter island', 2010, 129, 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l\'île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d\'une cellule fermée de l\'extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d\'une malade, ou cryptogramme ?', 'http://www.allocine.fr/film/fichefilm-132039/photos/detail/?cmediafile=19151192', 'http://www.allocine.fr/video/player_gen_cmedia=18916868&cfilm=132039.html', 1),
(41, 'Le seigneur des anneaux : Le retour du roi', 2003, 200, 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ?\nTandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis qui s\'abattent sur le royaume...\nChaque victoire se paye d\'immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l\'attention de Sauron afin de donner à Frodon une chance d\'accomplir sa quête.\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l\'Anneau continue de le tenter...', 'http://www.allocine.fr/film/fichefilm-39187/photos/detail/?cmediafile=18366630', 'http://www.allocine.fr/video/player_gen_cmedia=19448603&cfilm=39187.html', 1),
(42, 'Harry Potter : Le prince de sang mélé', 2009, 160, 'L\'étau démoniaque de Voldemort se resserre sur l\'univers des Moldus et le monde de la sorcellerie. Poudlard a cessé d\'être un havre de paix, le danger rode au coeur du château... Mais Dumbledore est plus décidé que jamais à préparer Harry à son combat final, désormais imminent. Ensemble, le vieux maître et le jeune sorcier vont tenter de percer à jour les défenses de Voldemort. Pour les aider dans cette délicate entreprise, Dumbledore va relancer et manipuler son ancien collègue, le Professeur Horace Slughorn, qu\'il croit en possession d\'informations vitales sur le jeune Voldemort. Mais un autre \"mal\" hante cette année les étudiants : le démon de l\'adolescence ! Harry est de plus en plus attiré par Ginny, qui ne laisse pas indifférent son rival, Dean Thomas ; Lavande Brown a jeté son dévolu sur Ron, mais oublié le pouvoir \"magique\" des chocolats de Romilda Vane ; Hermione, rongée par la jalousie, a décidé de cacher ses sentiments, vaille que vaille. L\'amour est dans tous les coeurs - sauf un. Car un étudiant reste étrangement sourd à son appel. Dans l\'ombre, il poursuit avec acharnement un but aussi mystérieux qu\'inquiétant... jusqu\'à l\'inévitable tragédie qui bouleversera à jamais Poudlard...', 'http://www.allocine.fr/film/fichefilm-116305/photos/detail/?cmediafile=19116952', 'http://www.allocine.fr/video/player_gen_cmedia=18903516&cfilm=116305.html', 1),
(43, 'Doctor Strange', 2016, 155, 'Doctor Strange suit l\'histoire du Docteur Stephen Strange, talentueux neurochirurgien qui, après un tragique accident de voiture, doit mettre son égo de côté et apprendre les secrets d\'un monde caché de mysticisme et de dimensions alternatives. Basé à New York, dans le quartier de Greenwich Village, Doctor Strange doit jouer les intermédiaires entre le monde réel et ce qui se trouve au-delà, en utlisant un vaste éventail d\'aptitudes métaphysiques et d\'artefacts pour protéger le Marvel Cinematic Universe.', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=130533.html', 'http://www.allocine.fr/video/player_gen_cmedia=19562026&cfilm=130533.html', 4),
(44, 'Avengers Infinite war', 2018, 149, 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. ', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=218265.html', 'http://www.allocine.fr/video/player_gen_cmedia=19577543&cfilm=218265.html', 4),
(45, 'Pacific Rim', 2013, 130, 'Surgies des flots, des hordes de créatures monstrueuses venues d’ailleurs, les «Kaiju», ont déclenché une guerre qui a fait des millions de victimes et épuisé les ressources naturelles de l’humanité pendant des années. Pour les combattre, une arme d’un genre nouveau a été\nmise au point : de gigantesques robots, les «Jaegers», contrôlés simultanément par deux pilotes qui communiquent par télépathie grâce à une passerelle neuronale baptisée le «courant». Mais même les Jaegers semblent impuissants face aux redoutables Kaiju.\nAlors que la défaite paraît inéluctable, les forces armées qui protègent l’humanité n’ont d’autre choix que d’avoir recours à deux héros hors normes : un ancien pilote au bout du rouleau (Charlie Hunnam) et une jeune femme en cours d’entraînement (Rinko Kikuchi) qui font équipe pour manoeuvrer un Jaeger d’apparence obsolète. Ensemble, ils incarnent désormais le dernier rempart de l’humanité contre une apocalypse de plus en plus imminente…', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=191289.html', 'http://www.allocine.fr/video/player_gen_cmedia=19536109&cfilm=191289.html', 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `nomGenre` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`idGenre`, `nomGenre`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Aventure'),
(4, 'comédie'),
(5, 'Drame'),
(6, 'epouvante'),
(7, 'Fantastique'),
(8, 'Film d\'animation'),
(9, 'Historique'),
(10, 'Science-fiction'),
(11, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `genre2`
--

CREATE TABLE `genre2` (
  `idGenre2` int(11) NOT NULL,
  `nomGenre2` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `genre2`
--

INSERT INTO `genre2` (`idGenre2`, `nomGenre2`) VALUES
(1, ''),
(2, 'Action'),
(3, 'Aventure'),
(4, 'Biopic'),
(5, 'Comédie'),
(6, 'Drame'),
(7, 'Fantastique'),
(8, 'horreur'),
(9, 'Musical'),
(10, 'Policier'),
(11, 'Science-fiction'),
(12, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `roleJoue` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `motClef`
--

CREATE TABLE `motClef` (
  `idMotCles` int(11) NOT NULL,
  `motClef` varchar(30) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `motClef`
--

INSERT INTO `motClef` (`idMotCles`, `motClef`) VALUES
(1, 'Folie'),
(2, 'Guerre'),
(3, 'Mafia'),
(4, 'TDAH'),
(5, 'Voiture'),
(6, 'Espace'),
(7, 'Virtuel'),
(8, 'Reves'),
(9, 'Humanoïdes'),
(10, 'Vampires'),
(11, 'Zombies'),
(12, 'Jedi'),
(13, 'jeu'),
(14, 'roi'),
(15, 'Vegan'),
(16, 'Tête'),
(17, 'tyrol'),
(18, 'football americain'),
(19, 'Paris'),
(20, 'planete'),
(21, 'Avatar'),
(22, 'American'),
(23, 'Forrest'),
(24, 'pirate'),
(25, 'wall street'),
(26, 'jeux vidéos'),
(27, '42'),
(28, 'futuriste'),
(29, 'extraterreste'),
(30, 'cheval'),
(31, 'dragon'),
(32, 'Perse'),
(33, 'Chihiro'),
(34, 'Rock'),
(35, 'Réseau'),
(36, 'trhiller '),
(37, 'Anneaux'),
(38, 'Harry '),
(39, 'Héros'),
(40, 'Robot'),
(41, 'Tueur'),
(42, 'Foi'),
(43, 'Mère-fils'),
(44, 'Crime'),
(45, 'Galaxie'),
(46, 'Elu'),
(47, 'Toupie'),
(48, 'Oasis'),
(49, 'Epée'),
(50, 'Apocalypse'),
(51, 'jungle'),
(52, 'lion'),
(53, 'chaise electrique'),
(54, 'cavalier'),
(55, ''),
(56, 'racisme'),
(57, 'enlevement'),
(58, 'singe'),
(59, 'Navi'),
(60, 'History'),
(61, 'Gump'),
(62, 'telephonique'),
(63, 'informatique'),
(64, 'funambule'),
(65, 'monde virtuel'),
(66, 'pirate informatique'),
(67, 'livre électronique'),
(68, 'anticipation'),
(69, 'clandestin'),
(70, 'liberté'),
(71, 'vicking'),
(72, 'jeu vidéo'),
(73, 'fantome'),
(74, 'Radio-Pirate'),
(75, 'psychiatrie'),
(76, 'Sauron'),
(77, 'Potter'),
(78, 'Marvel'),
(79, 'Kaiju'),
(80, 'Slasher'),
(81, 'Armes à feu'),
(82, 'Conflit'),
(83, 'Course'),
(84, 'Espace-temps'),
(85, 'Neo'),
(86, 'Imaginaire'),
(87, 'Jeux'),
(88, 'Scarlett'),
(89, 'Pieux'),
(90, 'Umbrella'),
(91, 'droïde'),
(92, 'aventure'),
(93, 'HakunaMatata'),
(94, 'souris'),
(95, '70s'),
(96, 'badass'),
(97, 'futur'),
(98, 'histoire vrai'),
(99, 'intelligence artificielle'),
(100, 'marvin'),
(101, 'repliquant'),
(102, 'chasse'),
(103, 'équitation'),
(104, 'amitié'),
(105, 'prince'),
(106, 'magie'),
(107, 'bateau'),
(108, 'enquete'),
(109, 'fantastique'),
(110, 'Docteur'),
(111, 'Thanos'),
(112, 'Japon');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `idPays` int(11) NOT NULL,
  `nomPays` varchar(255) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`idPays`, `nomPays`) VALUES
(1, 'Etats-Unis'),
(2, 'Canada'),
(3, 'France'),
(4, 'Allemagne'),
(5, 'Royaume-Unis'),
(6, 'Japon'),
(7, 'Québec'),
(8, 'Ukraine'),
(9, 'Ecosse'),
(10, 'Irlande'),
(11, 'Australie'),
(12, 'Autriche'),
(13, 'Suède'),
(14, 'Danemark'),
(15, 'Pays-Bas'),
(16, 'Israël'),
(17, 'Mexique'),
(18, ''),
(19, 'Guatemala'),
(20, 'Singapour'),
(21, 'Maroc'),
(22, 'Chili'),
(23, 'Nouvelle-Zelande'),
(24, 'Iran');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `idPersonne` int(11) NOT NULL,
  `nomPersonne` varchar(55) COLLATE utf8_roman_ci DEFAULT NULL,
  `idPays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`idPersonne`, `nomPersonne`, `idPays`) VALUES
(1, 'Malcom McDowell', NULL),
(2, 'Andrew Garfield', NULL),
(3, 'Keanu Reeves', NULL),
(4, 'Anne Dorval', NULL),
(5, 'Ryan Gosling', NULL),
(6, 'Quentin Dherret', NULL),
(7, 'Leonardo Dicaprio', NULL),
(8, 'Tye Sheridan', NULL),
(9, 'Scarlett Johansson', NULL),
(10, 'Wesley Snipes', NULL),
(11, 'Milla Jovovich', NULL),
(12, 'Ewan McGregor', NULL),
(13, 'Robin Williams', NULL),
(14, 'MATTHEW BRODERICK', NULL),
(15, 'Tom Hanks', NULL),
(16, 'Johnny Deep', NULL),
(17, 'Marianne Sägebrecht', NULL),
(18, 'Denzel Washington', NULL),
(19, 'Liam Neeson', NULL),
(20, 'Charlton Heston', NULL),
(21, 'Sam Worthington', NULL),
(22, 'Edward Norton', NULL),
(23, 'Vincent ELBAZ', NULL),
(24, 'Joseph GORDON-LEVITT', NULL),
(25, 'Jeff Bridges', NULL),
(26, 'Martin Freeman', NULL),
(27, 'Harisson Ford', NULL),
(28, 'Sigourney Weaver', NULL),
(29, 'Arnold Schwarzenegger', NULL),
(30, 'Hanna Höppner', NULL),
(31, 'Donald Reignoux', NULL),
(32, 'Jake Gyllenhaal', NULL),
(33, 'Rumi Hiiragi', NULL),
(34, 'Tom Sturridge', NULL),
(35, 'Mitsuki Tanimura', NULL),
(36, 'Elijah Wood', NULL),
(37, 'Rupert Grint', NULL),
(38, 'Benedict Cumberbatch', NULL),
(39, 'Josh Brolin', NULL),
(40, 'Charles Matthew Hunnam', NULL),
(41, 'Daeg Faerch', NULL),
(42, 'Michael Nyqvist', NULL),
(43, 'Antoine-Olivier Pilon', NULL),
(44, 'Carey Mulligan', NULL),
(45, 'Matthew McConaughey', NULL),
(46, 'Laurence Fishburne', NULL),
(47, 'Marion Cotillard', NULL),
(48, 'Olivia Cook', NULL),
(49, 'Pilou Asbæk', NULL),
(50, 'Kris Kristofferson', NULL),
(51, 'Sienna Guillory', NULL),
(52, 'Hayden Christensen', NULL),
(53, 'Bonnie Hunt', NULL),
(54, 'James Earl Jones', NULL),
(55, 'Michael Clarke Duncan', NULL),
(56, 'Christina Ricci', NULL),
(57, 'CCH Pounder', NULL),
(58, 'Will Patton', NULL),
(59, 'Famke Janssen', NULL),
(60, 'Roddy McDowall', NULL),
(61, 'Edward Furlong', NULL),
(62, 'Robin Wright', NULL),
(63, 'Julie GAYET', NULL),
(64, 'Shailene WOOdley', NULL),
(65, 'Ben Kingsley', NULL),
(66, 'Bruce Boxleitner', NULL),
(67, 'Dabney Colman', NULL),
(68, 'Yasiin Bey', NULL),
(69, 'Rutger Hauer', NULL),
(70, 'Tom Skerritt', NULL),
(71, 'Carl Weathers', NULL),
(72, 'Detlev Buck', NULL),
(73, 'Florine Orphelin', NULL),
(74, 'Gemma Arterton', NULL),
(75, 'Miyu Irino', NULL),
(76, 'Philippe Seymour Hoffman', NULL),
(77, 'Junko Fuji', NULL),
(78, 'Mark Ruffalo', NULL),
(79, 'Sean Astin', NULL),
(80, 'Emma Watson', NULL),
(81, 'Chiwetel Umeadi Ejiofor', NULL),
(82, 'Robert John Downey Junior', NULL),
(83, 'Yuriko Kikuchi', NULL),
(84, 'Sheri Moon Zombie', NULL),
(85, 'Hugo Weaving', NULL),
(86, 'Willem Dafoe', NULL),
(87, 'Suzanne Clément', NULL),
(88, 'Bryan Cranston', NULL),
(89, 'Mackenzie Foy', NULL),
(90, 'Carrie-Anne Moss', NULL),
(91, 'Ellen Page', NULL),
(92, 'Ben Mendelsohn', NULL),
(93, 'Takeshi Kitano', NULL),
(94, 'Ryan Renolds', NULL),
(95, 'Oded Fehr', NULL),
(96, 'Natalie Portman', NULL),
(97, 'Kristen Dunst', NULL),
(98, 'Jeremy Irons', NULL),
(99, 'David Morse', NULL),
(100, 'Christopher Walken', NULL),
(101, 'Jack Palance', NULL),
(102, 'Ryan Hurst', NULL),
(103, 'Maggie Grace', NULL),
(104, 'Kim Hunter', NULL),
(105, 'Stephen Lang', NULL),
(106, 'Beverly D\'Angelo', NULL),
(107, 'Gary Sinise', NULL),
(108, 'Zabou BREITMAN', NULL),
(109, 'Melisse LEO', NULL),
(110, 'James Badge Dale', NULL),
(111, 'David Warner', NULL),
(112, 'John wood', NULL),
(113, 'Sam Rockwell', NULL),
(114, 'Sean Young', NULL),
(115, 'Veronica Cartwright', NULL),
(116, 'Elpidia Carillo', NULL),
(117, 'Cornelia Froboess', NULL),
(118, 'Emmanuel Jacomy', NULL),
(119, 'Daveigh Chase', NULL),
(120, 'Rhys Ifans', NULL),
(121, 'Ayumu Saitô', NULL),
(122, 'Viggo Mortensen', NULL),
(123, '', NULL),
(124, 'Katherine Matilda Swinton', NULL),
(125, 'Chris Evans', NULL),
(126, 'Idrissa Akuna Elba', NULL),
(127, 'Brad Dourif', NULL),
(128, 'Vince Vaughn', NULL),
(129, 'Ian Mcshane', NULL),
(130, 'Patrick Huard ', NULL),
(131, 'Albert Brooks', NULL),
(132, 'John Lithgow', NULL),
(133, 'Cillian Murphy', NULL),
(134, 'Lena Waithe', NULL),
(135, 'Juliette Binoche', NULL),
(136, 'Jessica Biel', NULL),
(137, 'Thomas Kretschmann', NULL),
(138, 'Samuel L. Jackson', NULL),
(139, 'Jonathan Hyde', NULL),
(140, 'athan Lane', NULL),
(141, 'Wood Harris', NULL),
(142, 'Katie Cassidy', NULL),
(143, 'Maurice Evans', NULL),
(144, 'Michelle Rodriguez', NULL),
(145, 'Avery Brooks', NULL),
(146, 'Mykelti Williamson', NULL),
(147, 'Ludovik Anne CHARRIER', NULL),
(148, 'Zachary QIUNTO', NULL),
(149, 'Ben Schwartz', NULL),
(150, 'Cindy Morgan', NULL),
(151, 'Ally sheedy', NULL),
(152, 'John Malkovich', NULL),
(153, 'Daryl Hannah', NULL),
(154, 'Harry Dean Stanton', NULL),
(155, 'Bill Duke', NULL),
(156, 'Bill Nighy', NULL),
(157, 'Namai Sakuraba', NULL),
(158, 'Michelle Williams', NULL),
(159, 'Ian McKellen', NULL),
(160, 'Rachel Anne McAdams', NULL),
(161, 'Mark Alan Ruffalo', NULL),
(162, 'Charles Peckham Day', NULL),
(163, 'Scout Taylor-Compton', NULL),
(164, 'Luke Bracey', NULL),
(165, 'Alfie Allen', NULL),
(166, 'Oscar Isaac', NULL),
(167, 'Timothée Chalamet', NULL),
(168, 'Gloria Foster', NULL),
(169, 'Hannah John-Kamen', NULL),
(170, 'Chin Han', NULL),
(171, 'Dominique Purcell', NULL),
(172, 'Sandrine Holt', NULL),
(173, 'Ian McDiarmind', NULL),
(174, 'Bradley Pierce', NULL),
(175, 'Ernie Sabella', NULL),
(176, 'Donald Faison', NULL),
(177, 'Jon Gries', NULL),
(178, 'James Whitmore', NULL),
(179, 'Giovanni Ribisi', NULL),
(180, 'Jennifer Lien', NULL),
(181, 'Sally Field', NULL),
(182, 'Isaac SHARRY', NULL),
(183, 'INicolas CAGE', NULL),
(184, 'Charlotte Le Bon', NULL),
(185, 'Barnard Hughes', NULL),
(186, 'Barry Corbin', NULL),
(187, 'Zooey Deschanel', NULL),
(188, 'M.Emmet Walsh', NULL),
(189, 'John Hurt', NULL),
(190, 'Jesse Ventura', NULL),
(191, 'Emma Thompson', NULL),
(192, 'Benedict Wong', NULL),
(193, 'Christopher Hemsworth', NULL),
(194, 'Francis Ronald Perlman', NULL),
(195, 'Rob Zombie', NULL),
(196, 'Mel Gibson', NULL),
(197, 'David Leitchi', NULL),
(198, 'Xavier Dolan', NULL),
(199, 'Nicolas Winding Refn', NULL),
(200, 'Christopher Nolan', NULL),
(201, 'Les freres Wachowski', NULL),
(202, 'Steven Spielberg', NULL),
(203, 'Rupert Sanders', NULL),
(204, 'David S. Goyer', NULL),
(205, 'Alexander Witt', NULL),
(206, 'George Lucas', NULL),
(207, 'Joe Johnston', NULL),
(208, 'Roger Allers', NULL),
(209, 'Franck Darabon', NULL),
(210, 'Tim Burton', NULL),
(211, 'Percy Adlon', NULL),
(212, 'Boaz Yakin', NULL),
(213, 'Pierre Morel', NULL),
(214, 'Franklin J.Schaffner', NULL),
(215, 'James Cameron', NULL),
(216, 'Tony Kaye', NULL),
(217, 'Robert Zemeckis', NULL),
(218, 'Pascal Elbé', NULL),
(219, 'Olivier Stone', NULL),
(220, 'Steven Lisberger', NULL),
(221, 'John Badham', NULL),
(222, 'Garth Jennings', NULL),
(223, 'Ridley Scott', NULL),
(224, 'John MCTierman', NULL),
(225, 'Katja Von Garnier', NULL),
(226, 'Dean DeBlois', NULL),
(227, 'Mike Newell', NULL),
(228, 'Hayao Miyazaki', NULL),
(229, 'Richard Curtis', NULL),
(230, 'Mamoru Hosoda', NULL),
(231, 'Martin Scorsese', NULL),
(232, 'Peter Jackson', NULL),
(233, 'Daniel Radcliffe', NULL),
(234, 'Scott Derrickson', NULL),
(235, 'Joe Russo\n', NULL),
(236, 'Guillermo del Toro Gómez', NULL),
(237, 'Robert Schenkkan', NULL),
(238, 'Derek Kolstad', NULL),
(239, 'Hossein Amini', NULL),
(240, 'Ernest Cline', NULL),
(241, 'Jamie Moss', NULL),
(242, 'Paul W. S. Anderson', NULL),
(243, 'Chris Van Allsburg', NULL),
(244, 'Linda Woolverton', NULL),
(245, 'Franck Darabont', NULL),
(246, 'Andrew Kevin Walker', NULL),
(247, 'Gregory Allen Howard', NULL),
(248, 'Luc Besson', NULL),
(249, 'Michael Wilson', NULL),
(250, 'David McKenna', NULL),
(251, 'Eric Roth', NULL),
(252, 'Lawrence Lasker', NULL),
(253, 'Douglas Adams', NULL),
(254, 'Philip K. Dick', NULL),
(255, 'Dan O\'Bannon', NULL),
(256, 'Jims Thomas', NULL),
(257, 'Lea Schmidbauer', NULL),
(258, 'Adam F.Goldberg', NULL),
(259, 'Jordan Mechner', NULL),
(260, 'Satoko Okudera', NULL),
(261, 'Laeta Kalogridis', NULL),
(262, 'J.R.R Tolkien', NULL),
(263, 'J.K Rowling', NULL),
(264, 'C. Robert Cargill', NULL),
(265, 'Christopher Markus', NULL),
(266, 'Guillermo del Toro', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Tableau14`
--

CREATE TABLE `Tableau14` (
  `nomUtilisateur` varchar(18) DEFAULT NULL,
  `NomFilm` varchar(42) DEFAULT NULL,
  `anneeFilm` int(4) DEFAULT NULL,
  `dureeFilm` int(3) DEFAULT NULL,
  `resumeFilm` varchar(1212) DEFAULT NULL,
  `afficheFilm` varchar(243) DEFAULT NULL,
  `lienBandeAnnonce` varchar(73) DEFAULT NULL,
  `nomGenre` varchar(16) DEFAULT NULL,
  `nomGenre2` varchar(15) DEFAULT NULL,
  `nomPays` varchar(12) DEFAULT NULL,
  `Realisateur` varchar(24) DEFAULT NULL,
  `paysRealisateur` varchar(16) DEFAULT NULL,
  `acteur1` varchar(22) DEFAULT NULL,
  `paysActeur1` varchar(12) DEFAULT NULL,
  `acteur2` varchar(25) DEFAULT NULL,
  `paysActeur2` varchar(12) DEFAULT NULL,
  `acteur3` varchar(25) DEFAULT NULL,
  `paysActeur3` varchar(12) DEFAULT NULL,
  `acteur4` varchar(21) DEFAULT NULL,
  `paysActeur4` varchar(12) DEFAULT NULL,
  `acteur5` varchar(22) DEFAULT NULL,
  `paysActeur5` varchar(12) DEFAULT NULL,
  `scenariste` varchar(20) DEFAULT NULL,
  `paysScenariste` varchar(16) DEFAULT NULL,
  `societeProduction` varchar(32) DEFAULT NULL,
  `motClef1` varchar(18) DEFAULT NULL,
  `motClef2` varchar(19) DEFAULT NULL,
  `motClef3` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Tableau14`
--

INSERT INTO `Tableau14` (`nomUtilisateur`, `NomFilm`, `anneeFilm`, `dureeFilm`, `resumeFilm`, `afficheFilm`, `lienBandeAnnonce`, `nomGenre`, `nomGenre2`, `nomPays`, `Realisateur`, `paysRealisateur`, `acteur1`, `paysActeur1`, `acteur2`, `paysActeur2`, `acteur3`, `paysActeur3`, `acteur4`, `paysActeur4`, `acteur5`, `paysActeur5`, `scenariste`, `paysScenariste`, `societeProduction`, `motClef1`, `motClef2`, `motClef3`) VALUES
('Lacroix Christophe', 'Halloween', 2007, 106, 'Un 31 octobre, à Haddonfield, Illinois, le soir de la fête des masques de Halloween... La vie du jeune Michael Myers, 10 ans, bascule.\nTroublé par des pulsions morbides, moqué par ses camarades d\'école parce que sa mère est strip-teaseuse, harcelé par son beau-père, tourmenté par les premiers émois sexuels de sa soeur aînée, il revêt un masque en latex et, dans un accès de folie, assassine la moitié de sa famille au couteau de cuisine.\nA la suite de cette nuit de cauchemar, il est pris en charge par le Docteur Sam Loomis, un brillant pédopsychiatre, mais tue sauvagement une infirmière, précipitant le suicide de sa mère, désespérée.\nUn 31 octobre, 17 ans plus tard. Toujours dissimulé derrière un masque et enfermé dans son mutisme, Michael s\'échappe de la prison psychiatrique où il a grandi et recommence à semer des cadavres sur sa route.\nConvaincu qu\'il est une incarnation du mal à l\'état pur, le Docteur Loomis part sur sa piste. Celle-ci mène directement à Haddonfield, là où se trouve toujours la petite soeur de Michael, Laurie, seul membre de sa famille encore en vie.', 'https://www.google.fr/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwiI54mon4PfAhWQyIUKHbQWB1sQjRx6BAgBEAU&url=http%3A%2F%2Fwww.allocine.fr%2Ffilm%2Ffichefilm_gen_cfilm%3D111968.html&psig=AOvVaw32993hryEjPXXnKd_v21An&ust=1543912207095028', 'http://www.allocine.fr/video/player_gen_cmedia=18746487&cfilm=111968.html', 'epouvante', 'horreur', 'Etats-Unis', 'Rob Zombie', 'Etats-Unis', 'Malcom McDowell', 'Etats-Unis', 'Daeg Faerch', 'Canada', 'Sheri Moon Zombie', 'Etats-Unis', 'Brad Dourif', 'Etats-Unis', 'Scout Taylor-Compton', 'Etats-Unis', 'Rob Zombie', 'Etats-Unis', 'TFM Distribution', 'Folie', 'Tueur', 'Slasher'),
('Lacroix Christophe', 'Tu ne tueras point', 2016, 140, 'Quand la Seconde Guerre mondiale a éclaté, Desmond, un jeune américain, s’est retrouvé confronté à un dilemme : comme n’importe lequel de ses compatriotes, il voulait servir son pays, mais la violence était incompatible avec ses croyances et ses principes moraux. Il s’opposait ne serait-ce qu’à tenir une arme et refusait d’autant plus de tuer.\nIl s’engagea tout de même dans l’infanterie comme médecin. Son refus d’infléchir ses convictions lui valut d’être rudement mené par ses camarades et sa hiérarchie, mais c’est armé de sa seule foi qu’il est entré dans l’enfer de la guerre pour en devenir l’un des plus grands héros. Lors de la bataille d’Okinawa sur l’imprenable falaise de Maeda, il a réussi à sauver des dizaines de vies seul sous le feu de l’ennemi, ramenant en sureté, du champ de bataille, un à un les soldats blessés.', 'http://t1.gstatic.com/images?q=tbn:ANd9GcTWpqoWNhE8SUXpFH_lRNI6duy73YuBiiDtkcbfvOE9b0MTJCrx', 'http://www.allocine.fr/video/player_gen_cmedia=19564298&cfilm=208104.html', 'Drame', 'Biopic', 'Etats-Unis', 'Mel Gibson', 'Etats-Unis', 'Andrew Garfield', 'Etats-Unis', 'Sam Worthington', 'Australie', 'Hugo Weaving', 'Australie', 'Vince Vaughn', 'Etats-Unis', 'Luke Bracey', 'Australie', 'Robert Schenkkan', 'Etats-Unis', 'Metropolitan FilmExport', 'Guerre', 'Foi', 'Héros'),
('Lacroix Christophe', 'John Wick', 2014, 101, 'Depuis la mort de sa femme bien-aimée, John Wick passe ses journées à retaper sa Ford Mustang de 1969, avec pour seule compagnie sa chienne Daisy. Il mène une vie sans histoire, jusqu’à ce qu’un malfrat sadique nommé Iosef Tarasof remarque sa voiture. John refuse de la lui vendre. Iosef n’acceptant pas qu’on lui résiste, s’introduit chez John avec deux complices pour voler la Mustang, et tuer sauvagement Daisy…\nJohn remonte la piste de Iosef jusqu’à New York. Un ancien contact, Aurelio, lui apprend que le malfrat est le fils unique d’un grand patron de la pègre, Viggo Tarasof. La rumeur se répand rapidement dans le milieu : le légendaire tueur cherche Iosef. Viggo met à prix la tête de John : quiconque l’abattra touchera une énorme récompense. John a désormais tous les assassins de New York aux trousses.', 'http://www.allocine.fr/film/fichefilm-221387/photos/detail/?cmediafile=21137593', 'http://www.allocine.fr/video/player_gen_cmedia=19548076&cfilm=221387.html', 'Action', 'Thriller', 'Etats-Unis ', 'David Leitchi', 'Etats-Unis', 'Keanu Reeves', 'Etats-Unis', 'Michael Nyqvist', 'Suède', 'Willem Dafoe', 'Etats-Unis', 'Ian Mcshane', 'Royaume-Unis', 'Alfie Allen', 'Royaume-Unis', 'Derek Kolstad', 'Etats-Unis', 'Metropolitan FilmExport', 'Mafia', 'Tueur', 'Armes à feu'),
('Dherret Quentin', 'Mommy', 2014, 140, 'Une veuve mono-parentale hérite de la garde de son fils, un adolescent TDAH impulsif et violent. Au coeur de leurs emportements et difficultés, ils tentent de joindre les deux bouts, notamment grâce à l’aide inattendue de l’énigmatique voisine d’en face, Kyla. Tous les trois, ils retrouvent une forme d’équilibre et, bientôt, d’espoir.', 'https://m.media-amazon.com/images/M/MV5BMGI3YWFmNDQtNjc0Ny00ZDBjLThlNjYtZTc1ZTk5MzU2YTVjXkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_.jpg', 'https://youtu.be/8X1fB4ylVuk', 'Drame', '', 'Canada', 'Xavier Dolan', 'Canada', 'Anne Dorval', 'Québec', 'Antoine-Olivier Pilon', 'Canada', 'Suzanne Clément', 'Québec', 'Patrick Huard ', 'Canada', '', '', 'Xavier Dolan', 'Canada', 'Metafilms', 'TDAH', 'Mère-fils', 'Conflit'),
('Dherret Quentin', 'Drive', 2011, 100, 'Un jeune homme solitaire, \"The Driver\", conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.\nC’est alors que la route du pilote croise celle d’Irene et de son jeune fils. Pour la première fois de sa vie, il n’est plus seul.\nLorsque le mari d’Irene sort de prison et se retrouve enrôlé de force dans un braquage pour s’acquitter d’une dette, il décide pourtant de lui venir en aide. L’expédition tourne mal…\nDoublé par ses commanditaires, et obsédé par les risques qui pèsent sur Irene, il n’a dès lors pas d’autre alternative que de les traquer un à un… ', 'https://m.media-amazon.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/2TEG-j1O3hc', 'Action', 'Thriller', 'Etats-Unis', 'Nicolas Winding Refn', 'Danemark', 'Ryan Gosling', 'Canada', 'Carey Mulligan', 'Royaume-Unis', 'Bryan Cranston', 'Etats-Unis', 'Albert Brooks', 'Etats-Unis', 'Oscar Isaac', 'Guatemala', 'Hossein Amini', 'Iran', 'Bold Films', 'Voiture', 'Crime', 'Course'),
('Dherret Quentin', 'Interstellar', 2014, 169, 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. ', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/aZd-HmEp5Co', 'Science-fiction', 'Drame', 'Etats-Unis', 'Christopher Nolan', 'Etats-Unis', 'Quentin Dherret', 'France', 'Matthew McConaughey', 'Etats-Unis', 'Mackenzie Foy', 'Etats-Unis', 'John Lithgow', 'Etats-Unis', 'Timothée Chalamet', 'Etats-Unis', 'Christopher Nolan', 'Royaume-Unis', 'Warner Bros', 'Espace', 'Galaxie', 'Espace-temps'),
('OUVRARD Fabien', 'Matrix', 1999, 140, 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\'est-ce que la Matrice ? Nul ne le sait, et aucun homme n\'est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l\'Elu, le libérateur mythique de l\'humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents..', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/04/34/49/043449_af.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19578569&cfilm=19776.html', 'Science-fiction', 'Action', 'Etats-Unis', 'Les freres Wachowski', 'Etats-Unis', 'Keanu Reeves', 'Etats-Unis', 'Laurence Fishburne', 'Etats-Unis', 'Carrie-Anne Moss', 'Canada', 'Hugo Weaving', 'Australie', 'Gloria Foster', 'Etats-Unis', 'Les freres Wachowski', 'Etats-Unis', 'Warner Bros', 'Virtuel', 'Elu', 'Neo'),
('OUVRARD Fabien', 'Inception', 2010, 135, 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.', 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18944758&cfilm=143692.html', 'Science-fiction', 'Thriller', 'Etats-Unis', 'Christopher Nolan', 'Royaume-Unis', 'Leonardo Dicaprio', 'Etats-Unis', 'Marion Cotillard', 'France', 'Ellen Page', 'Canada', 'Cillian Murphy', 'Irlande', 'Joseph Gordon-Levitt', 'Etats-Unis', 'Christopher Nolan', 'Royaume-Unis', 'Warner Bros', 'Reves', 'Toupie', 'Imaginaire'),
('OUVRARD Fabien', 'Ready Player One', 2018, 148, '2045. Le monde est au bord du chaos. Les êtres humains se réfugient dans l\'OASIS, univers virtuel mis au point par le brillant et excentrique James Halliday. Avant de disparaître, celui-ci a décidé de léguer son immense fortune à quiconque découvrira l\'œuf de Pâques numérique qu\'il a pris soin de dissimuler dans l\'OASIS. L\'appât du gain provoque une compétition planétaire. Mais lorsqu\'un jeune garçon, Wade Watts, qui n\'a pourtant pas le profil d\'un héros, décide de participer à la chasse au trésor, il est plongé dans un monde parallèle à la fois mystérieux et inquiétant…', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/18/02/14/09/15/3437390.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19577213&cfilm=229831.html', 'Science-fiction', 'Action', 'Etats-Unis', 'Steven Spielberg', 'Etats-Unis', 'Tye Sheridan', 'Etats-Unis', 'Olivia Cook', 'Royaume-Unis', 'Ben Mendelsohn', 'Australie', 'Lena Waithe', 'Etats-Unis', 'Hannah John-Kamen', 'Royaume-Unis', 'Ernest Cline', 'Etats-Unis', 'Warner Bros', 'Virtuel', 'Oasis', 'Jeux'),
('BERAUD Fabien', 'Ghost in the Shell', 2017, 107, 'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres. ', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/17/03/01/17/45/314818.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19569556&cfilm=226739.html', 'Action', 'Science-fiction', 'Etats-Unis', 'Rupert Sanders', 'Royaume-Unis', 'Scarlett Johansson', 'Etats-Unis', 'Pilou Asbæk', 'Danemark', 'Takeshi Kitano', 'Japon', 'Juliette Binoche', 'France', 'Chin Han', 'Singapour', 'Jamie Moss', 'Etats-Unis', 'Paramount Pictures', 'Humanoïdes', 'Futuriste', 'Scarlett'),
('BERAUD Fabien', 'Blade Trinity', 2004, 106, 'A l\'aide d\'une manipulation d\'image aussi géniale que machiavélique, les vampires ont réussi à piéger Blade : sur un document vidéo, on le découvre en train de massacrer... un humain. Pour le FBI, Blade devient l\'ennemi à capturer. Pourchassé par les hommes et condamné par les vampires, Blade va devoir se battre sur tous les fronts. Les vampires, qui multiplient les alliances secrètes avec des humains renégats, sont sur le point d\'utiliser son propre ADN pour ressusciter celui qui, il y a bien longtemps, fut le premier et le plus puissant d\'entre eux. Entre course contre la montre et les pièges qui se multiplient, l\'affrontement est total. Cette fois, Blade aussi va devoir montrer les crocs... ', 'http://fr.web.img3.acsta.net/r_1920_1080/pictures/17/01/31/14/48/285473.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18369122&cfilm=46864.html', 'Fantastique', 'Action', 'Etats-Unis', 'David S. Goyer', 'Etats-Unis', 'Wesley Snipes', 'Etats-Unis', 'Kris Kristofferson', 'Etats-Unis', 'Ryan Renolds', 'Canada', 'Jessica Biel', 'Etats-Unis', 'Dominique Purcell', 'Royaume-Unis', 'David S. Goyer', 'Etats-Unis', 'Metropolitain FilmExport', 'Vampires', 'Epée', 'Pieux'),
('BERAUD Fabien', 'Resident Evil : Apocalypse', 2004, 100, 'Alice a survécu à l\'effroyable cauchemar qui a dévasté le complexe scientifique ultrasecret d\'Umbrella Corporation, mais elle n\'est pas la seule à en être ressortie... Un virus mortel s\'est abattu sur la ville de Raccoon et rien ne semble pouvoir lui échapper. Avec un groupe de survivants, Alice, dont le métabolisme a mystérieusement été modifié, doit affronter le pire. Certes, elle a gagné de nouveaux pouvoirs, elle est plus puissante, ses sens sont surmultipliés et sa dextérité est hallucinante, mais ça ne sera pas forcément suffisant... Elle est rejointe dans son combat par Jill Valentine, un ancien membre des forces spéciales d\'Umbrella. Ensemble, elles vont tenter de résoudre les énigmes et faire face à une force maléfique, un ennemi absolu lancé sur leurs traces. Son nom ? Némésis. Son but ? Eliminer toute vie. Cette fois, s\'échapper ne suffira pas. Il va falloir affronter...', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/35/14/37/18388458.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19454632&cfilm=51386.html', 'Action', 'Fantastique', 'France', 'Alexander Witt', 'Chili', 'Milla Jovovich', 'Ukraine', 'Sienna Guillory', 'Royaume-Unis', 'Oded Fehr', 'Israël', 'Thomas Kretschmann', 'Allemagne', 'Sandrine Holt', 'Royaume-Unis', 'Paul W. S. Anderson', 'Royaume-Unis', 'Metropolitain FilmExport', 'Zombies', 'Apocalypse', 'Umbrella'),
('GRASSE JP', 'Star Wars Episode III La Revanche des Sith', 2005, 140, 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\nLes Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi....', 'https://media.senscritique.com/media/000009575628/source_big/Star_Wars_Episode_III_La_Revanche_des_Sith.jpg', 'https://youtu.be/t1qtvKYwTV0', 'Science-fiction', '', 'Etats-Unis', 'George Lucas', 'Etats-Unis', 'Ewan McGregor', 'Ecosse', 'Hayden Christensen', 'Canada', 'Natalie Portman', 'Israël', 'Samuel L. Jackson', 'Etats-Unis', 'Ian McDiarmind', 'Ecosse', 'George Lucas', 'Etats-Unis', 'LucasFilm', 'Jedi', 'Galaxie', 'droïde'),
('GRASSE JP', 'Jumanji', 1995, 104, ' Lors d\'une partie de Jumanji, un jeu très ancien, le jeune Alan est propulsé sous les yeux de son amie d\'enfance, Sarah, dans un étrange pays. Il ne pourra s\'en échapper que lorsqu\'un autre joueur reprendra la partie et le libèrera sur un coup de dés. Vingt-six ans plus tard, il retrouve le monde réel par le coup de dés de deux autres jeunes joueurs.', 'https://media.senscritique.com/media/000016456041/source_big/Jumanji.jpg', 'https://www.youtube.com/watch?v=9P6TZcCk0MM', 'Fantastique', '', 'Etats-Unis', 'Joe Johnston', 'Etats-Unis', 'Robin Williams', 'Etats-Unis', 'Bonnie Hunt', 'Etats-Unis', 'Kristen Dunst', 'Etats-Unis', 'Jonathan Hyde', 'Australie', 'Bradley Pierce', 'Etats-Unis', 'Chris Van Allsburg', 'Etats-Unis', 'TriStar Pictures', 'jeu', 'jungle', 'aventure'),
('GRASSE JP', 'Le Roi Lion', 1994, 89, 'Sur les Hautes terres d’Afrique règne un lion tout-puissant, le roi Mufasa, que tous les hôtes de la jungle respectent et admirent pour sa sagesse et sa générosité. Son jeune fils Simba sait qu’un jour il lui succèdera, conformément aux lois universelles du cycle de la vie, mais il est loin de deviner les épreuves et les sacrifices que lui imposera l’exercice du pouvoir. Pensant être responsable de la mort de son pere, Simba quitte le royaume et se  retrouve pour la première fois seul et démuni face à un monde hostile. C’est alors que le destin place sur sa route un curieux tandem d’amis... ', ' https://disney-planet.fr/wp-content/uploads/2014/08/affiche-roi-lion-01.jpg', 'https://youtu.be/-KfIYw-D4Iw', 'Film d\'animation', '', 'Etats-Unis', 'Roger Allers', 'Etats-Unis', 'MATTHEW BRODERICK', 'Etats-Unis', 'James Earl Jones', 'Etats-Unis', 'Jeremy Irons', 'Royaume-Unis', 'athan Lane', 'Etats-Unis', 'Ernie Sabella', 'Etats-Unis', 'Linda Woolverton', 'Etats-Unis', 'Walt Disney Pictures', 'roi', 'lion', 'HakunaMatata'),
('Marceron Corinne', 'La ligne verte', 2000, 189, 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. ', 'http://fr.web.img5.acsta.net/c_215_290/medias/nmedia/18/66/15/78/19254683.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18650717&cfilm=22779.html', 'Fantastique', 'Policier', 'Etats-Unis', 'Franck Darabon', 'Etats-Unis', 'Tom Hanks', 'Etats-Unis', 'Michael Clarke Duncan', 'Etats-Unis', 'David Morse', 'Etats-Unis', '', '', '', '', 'Franck Darabont', 'Etats-Unis', 'Warner Bros', 'Vegan', 'chaise electrique', 'souris'),
('Marceron Corinne', 'Sleepy Hollow', 1999, 105, 'En 1799, dans une bourgade de La Nouvelle-Angleterre, plusieurs cadavres sont successivement retrouvés décapités. Les têtes ont disparu. Terrifiés, les habitants sont persuadés que ces meurtres sont commis par un étrange et furieux cavalier, dont la rumeur prétend qu\'il est lui-même sans tête', 'http://fr.web.img6.acsta.net/c_215_290/medias/nmedia/18/74/38/21/19255611.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19449367&cfilm=22345.html', 'Fantastique', 'Thriller', 'Etats-Unis', 'Tim Burton', 'Etats-Unis', 'Johnny Deep', 'Etats-Unis', 'Christina Ricci', 'Etats-Unis', 'Christopher Walken', 'Etats-Unis', '', '', '', '', 'Andrew Kevin Walker', 'Etats-Unis', 'Mandalay Pictures', 'Tête', 'cavalier', ''),
('Marceron Corinne', 'Bagdad Café', 1987, 115, 'Après une scène de ménage Jasmin atterrit au Bagdad Café, motel minable entre Disneyland et Las Vegas. La patronne, Brenda, Noire tapageuse et insatisfaite, règne sur tout un petit monde de routiers et de personnages énigmatiques', 'http://fr.web.img2.acsta.net/c_215_290/pictures/18/07/05/09/41/1702585.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19405598&cfilm=3531.html', 'Drame', 'Comédie', 'Etats-Unis', 'Percy Adlon', 'Etats-Unis', 'Marianne Sägebrecht', 'Allemagne', 'CCH Pounder', 'Etats-Unis', 'Jack Palance', 'Etats-Unis', '', '', '', '', 'Percy Adlon', 'Etats-Unis', 'Warner Bros', 'tyrol', '', ''),
('SAUNIER Thibaud', 'Le Plus Beau des combats', 2000, 113, 'En 1971, dans le T. C. Williams High School d\'Alexandria en Virginie, des étudiants noirs sont intégrés dans l\'établissement scolaire jusqu\'alors réservé aux blancs. Cette décision a pour effet d’exacerber les tensions raciales déjà existantes dans la communauté, surtout lorsque l’entraîneur blanc de l’équipe de football américain, Bill Yoast, comprend qu’il devra œuvrer sous la supervision de Herman Boone, un afro-américain. Les deux hommes apprennent pourtant à se respecter, malgré leurs tempéraments fort différents. Ils font de même pour les joueurs de l\'équipe et leurs inculquent des valeurs qui font d’eux des champions respectés', 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/00/02/23/77/69198039_af.jpg', 'https://youtu.be/9zrSalMKvv4', 'Historique', '', 'Etats-Unis', 'Boaz Yakin', 'Etats-Unis', 'Denzel Washington', 'Etats-Unis', 'Will Patton', 'Etats-Unis', 'Ryan Hurst', 'Etats-Unis', 'Wood Harris', 'Etats-Unis', 'Donald Faison', 'Etats-Unis', 'Gregory Allen Howard', 'Etats-Unis', 'Gaumon Buena Vista International', 'football americain', 'racisme', '70s'),
('SAUNIER Thibaud', 'Taken', 2008, 93, 'Ancien agent secret résidant à Los Angeles, Bryan Mills assiste par téléphone à l\'enlèvement, en plein Paris, de sa fille Kim. Devant faire face à un groupe de mafieux albanais spécialisés dans la traite des femmes et le proxénétisme, il aura besoin de tout son talent d\'ex-agent pour l\'en extirper en moins de 96 heures.', 'http://fr.web.img6.acsta.net/medias/nmedia/18/65/13/27/18899329.jpg', 'https://youtu.be/sBychzk2EJQ', 'Thriller', '', 'France', 'Pierre Morel', 'France', 'Liam Neeson', 'Irlande', 'Famke Janssen', 'Pays-Bas', 'Maggie Grace', 'Etats-Unis', 'Katie Cassidy', 'Etats-Unis', 'Jon Gries', 'Etats-Unis', 'Luc Besson', 'France', 'EuropaCorp Distribution', 'Paris', 'enlevement', 'badass'),
('SAUNIER Thibaud', 'La planete des singes', 1968, 112, 'L\'engin spatial américain Icare, parti en 19721 avec à son bord 4 membres d\'équipage, traverse l\'espace à une vitesse proche de la vitesse de la lumière. Au terme d\'un voyage de 18 mois, le vaisseau s\'écrase le 25 novembre 39782 sur une mystérieuse planète, au coeur d\'une région désertique. Les 3 survivants du crash, le capitaine George Taylor et les lieutenants John Landon et Thomas Dodge, découvrent très vite que ce monde est peuplé d\'hommes primitifs dominés par une race de singes évolués.', 'https://p6.storage.canalblog.com/65/06/1349409/105163859_o.jpg', 'https://youtu.be/EPoPewWdM24', 'Science-fiction', '', 'Etats-Unis', 'Franklin J.Schaffner', 'Etats-Unis', 'Charlton Heston', 'Etats-Unis', 'Roddy McDowall', 'Etats-Unis', 'Kim Hunter', 'Etats-Unis', 'Maurice Evans', 'Etats-Unis', 'James Whitmore', 'Etats-Unis', 'Michael Wilson', 'Etats-Unis', 'Swashbuckler Films', 'planete', 'singe', 'futur'),
('YANG Francis', 'Avatar', 2009, 162, 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre.', 'http://fr.web.img4.acsta.net/r_1280_720/medias/nmedia/18/64/43/65/19211318.jpg', 'https://www.youtube.com/watch?v=O1CzgULNRGs', 'Science-fiction', '', 'Etats-Unis', 'James Cameron', 'Canada', 'Sam Worthington', 'Australie', 'Sigourney Weaver', 'Etats-Unis', 'Stephen Lang', 'Etats-Unis', 'Michelle Rodriguez', 'Etats-Unis', 'Giovanni Ribisi', 'Etats-Unis', 'James Cameron', 'Canada', '20th Century Fox', 'Avatar', 'Navi', ''),
('YANG Francis', 'American history x', 1999, 119, 'Ce film tente d\'expliquer l\'origine du racisme et de l\'extrémisme aux États-Unis. Il raconte l\'histoire de Derek qui, voulant venger la mort de son père, abattu par un dealer noir, a épousé les thèses racistes d\'un groupuscule de militants d\'extrême droite et s\'est mis au service de son leader, brutal théoricien prônant la suprématie de la race blanche. Ces théories le mèneront à commettre un double meurtre entraînant son jeune frère, Danny, dans la spirale de la haine.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnLq2eN38vdMlupzRomBtc4k_yVo3K4R2wjgs61gynOzuW7xma', 'https://www.youtube.com/watch?v=wgRbmDfzBuU', 'Drame', '', 'Etats-Unis', 'Tony Kaye', 'Royaume-Unis', 'Edward Norton', 'Etats-Unis', 'Edward Furlong', 'Etats-Unis', 'Beverly D\'Angelo', 'Etats-Unis', 'Avery Brooks', 'Etats-Unis', 'Jennifer Lien', 'Etats-Unis', 'David McKenna', 'Etats-Unis', 'New Line Cinema', 'American', 'History', 'Racisme'),
('YANG Francis', 'Forrest Gump', 1994, 142, 'Au fil des différents interlocuteurs qui viennent s\'asseoir tour à tour à côté de lui sur un banc, Forrest Gump raconte la fabuleuse histoire de sa vie. Sa vie est à l\'image d\'une plume qui se laisse porter par le vent, tout comme Forrest se laisse porter par les événements qu\'il traverse dans l\'Amérique de la seconde moitié du 20e siècle.', 'http://www.linternaute.com/cinema/image_cache/objdbfilm/image/540/107483.jpg', 'https://www.youtube.com/watch?v=q2AP7dAeVhw', 'comédie', 'Drame', 'Etats-Unis', 'Robert Zemeckis', 'Etats-Unis', 'Tom Hanks', 'Etats-Unis', 'Robin Wright', 'Etats-Unis', 'Gary Sinise', 'Etats-Unis', 'Mykelti Williamson', 'Etats-Unis', 'Sally Field', 'Etats-Unis', 'Eric Roth', 'Etats-Unis', 'Paramount Pictures', 'Forrest', 'Gump', ''),
('LAURENT Maximilien', 'JE COMPTE SUR VOUS', 2015, 138, 'Un homme, un téléphone portable, plusieurs millions d\'euros dérobés, une quarantaine détablissements bernés. Drogué à l\'adrénaline que ses arnaques lui procurent, Gilbert Perez manipule et trompe ses victimes avec brio en se faisant passer tour à tour pour leur président puis un agent de la DGSE', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSwonOLwOzr0oVLonsXvm24qbLQAoq9zeXxbwjsozcGGgCldPfd', 'https://www.youtube.com/watch?v=bjJpIfUdReQ', 'Drame', 'Thriller', 'France', 'Pascal Elbé', 'France', 'Vincent ELBAZ', 'France', 'Julie GAYET', 'France', 'Zabou BREITMAN', 'France', 'Ludovik Anne CHARRIER', 'France', 'Isaac SHARRY', 'Maroc', 'Pascal ELBE', 'France', 'France 2 Cinéma', 'pirate', 'telephonique', 'histoire vrai'),
('LAURENT Maximilien', 'SNOWDEN', 2016, 214, 'Edward Joseph Snowden réaliser son rêve quand il rejoint les équipes de la CIA puis de la NSA. Il découvre alors au cœur des Services de Renseignements américains l’ampleur insoupçonnée de la cyber-surveillance. Violant la Constitution, soutenue par de grandes entreprises, la NSA collecte des montagnes de données et piste toutes les formes de télécommunications à un niveau planétaire. Choqué par cette intrusion systématique dans nos vies privées, Snowden décide de rassembler des preuves et de tout divulguer. Devenu lanceur d’alerte, il sacrifiera sa liberté et sa vie privée.', 'http://t0.gstatic.com/images?q=tbn:ANd9GcTkAolD50YnGvMb_-Ka2mYmrqdjTK4jOFHLfnz8WSfUGsJtp2ID', 'https://www.youtube.com/watch?v=k78GKTvBwyE', 'Drame', 'Thriller', 'Allemagne', 'Olivier Stone', 'Etats-Unis', 'Joseph GORDON-LEVITT', 'Etats-Unis', 'Shailene WOOdley', 'Etats-Unis', 'Melisse LEO', 'Etats-Unis', 'Zachary QIUNTO', 'Etats-Unis', 'INicolas CAGE', 'Etats-Unis', 'Olivier STONE', 'Etats-Unis', 'Endgame Entertainment', 'pirate', 'informatique', 'histoire vrai'),
('LAURENT Maximilien', 'THE WALK', 2015, 203, 'Biopic sur le funambule français Philippe Petit, célèbre pour avoir joint et traveser en 1974 les deux tours du World Trade Center sur un fil, suspendu au-dessus du vide.', 'http://t2.gstatic.com/images?q=tbn:ANd9GcRpIG1G2zVhhZrO1rDgL4nXKc6f_wN5HtyXw_IhBsWqorDZ_xvC', 'https://www.youtube.com/watch?v=4kERfpAQGCs', 'Drame', 'Thriller', 'Etats-Unis', 'Robert Zemeckis', 'Etats-Unis', 'Joseph Gordon-Levitt', 'Etats-Unis', 'Ben Kingsley', 'Royaume-Unis', 'James Badge Dale', 'Etats-Unis', 'Ben Schwartz', 'Etats-Unis', 'Charlotte Le Bon', 'Canada', 'Robert Zemeckis', 'Etats-Unis', 'Sony Pictures Entertainment', 'wall street', 'funambule', 'histoire vrai'),
('JUY Laurent', 'TRON', 1982, 96, 'Flynn, un concepteur de jeux vidéo qui s\'est vu voler ses jeux par son ex-employeur, veut à tout prix récupérer une preuve qui lui ferait valoir ses droits. Avec l\'aide d\'Alan et de Lora, deux de ses anciens collègues, il infiltre le MCP (Maître Contrôleur Principal), un ordinateur avide de pouvoir à l\'intelligence artificielle surdéveloppée. Quand ce dernier découvre que Flynn veut s\'infiltrer dans ses circuits, il le téléporte dans un jeu vidéo. Pour s\'évader, Flynn devra compter sur l\'aide de Tron, un programme indépendant inventé par Alan.', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/68/46/16/19028526.jpg', 'https://www.youtube.com/watch?v=6JTUQf7dZcQ', 'Science-fiction', 'Action', 'Etats-Unis', 'Steven Lisberger', 'Etats-Unis', 'Jeff Bridges', 'Etats-Unis', 'Bruce Boxleitner', 'Etats-Unis', 'David Warner', 'Royaume-Unis', 'Cindy Morgan', 'Etats-Unis', 'Barnard Hughes', 'Etats-Unis', 'Steven Lisberger', 'Etats-Unis', 'Walt Disney Pictures', 'jeux vidéos', 'monde virtuel', 'intelligence artificielle'),
('JUY Laurent', 'Wargame', 1983, 111, 'Un jeune passionné d\'informatique, voulant pirater des jeux vidéos, se branche sur un ordinateur secret de l\'armée américaine. Croyant être aux commandes d\'un jeu virtuel, le garçon déclenche sans le savoir le compte à rebours d\'une troisième guerre mondiale.', 'http://fr.web.img6.acsta.net/r_1920_1080/pictures/18/11/27/09/03/3375141.jpg', 'https://www.youtube.com/watch?v=xogbyv108kI', 'Action', 'Thriller', 'Etats-Unis', 'John Badham', 'Etats-Unis', 'MATTHEW BRODERICK', 'Etats-Unis', 'Dabney Colman', 'Etats-Unis', 'John wood', 'Royaume-Unis', 'Ally sheedy', 'Etats-Unis', 'Barry Corbin', 'Etats-Unis', 'Lawrence Lasker', 'Etats-Unis', 'Metro Goldwyn Mayer', 'jeux vidéos', 'pirate informatique', 'guerre'),
('JUY Laurent', 'H2G2 : Le guide du voyageur galactic', 2005, 108, 'Sale journée pour le Terrien Arthur Dent. Sa maison est sur le point d\'être rasée par un bulldozer, il découvre que son meilleur ami, Ford Prefect, est un extraterrestre et pour couronner le tout, la Terre va être pulvérisée dans quelques minutes pour faire de la place à une voie express hyperspatiale.', 'http://fr.web.img4.acsta.net/r_1920_1080/medias/nmedia/18/35/53/34/18431166.jpg', 'https://www.youtube.com/watch?v=8TQIvdFl4aU', 'Science-fiction', 'Comédie', 'Etats-Unis', 'Garth Jennings', 'Royaume-Unis', 'Martin Freeman', 'Royaume-Unis', 'Yasiin Bey', 'Etats-Unis', 'Sam Rockwell', 'Etats-Unis', 'John Malkovich', 'Etats-Unis', 'Zooey Deschanel', 'Etats-Unis', 'Douglas Adams', 'Royaume-Unis', 'Walt Disney Pictures', '42', 'livre électronique', 'marvin'),
('FRED', 'Blade runner', 1982, 120, 'Arthur a une chance de survivre, mais il doit pour cela se faire prendre en stop par un vaisseau spatial, avec l\'aide de Ford. Sa plus grande aventure va commencer au moment où notre propre monde disparaît... Arthur se jette dans l\'inconnu et entame un délirant périple au cours duquel il va découvrir la véritable nature de l\'univers.', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/66/01/66/20217903.jpg', 'https://www.youtube.com/watch?v=gCcx85zbxz4', 'Science-fiction', '', 'Etats-Unis', 'Ridley Scott', 'Royaume-Unis', 'Harisson Ford', 'Etats-Unis', 'Rutger Hauer', 'Pays-Bas', 'Sean Young', 'Etats-Unis', 'Daryl Hannah', 'Etats-Unis', 'M.Emmet Walsh', 'Etats-Unis', 'Philip K. Dick', 'Etats-Unis', 'Warner Bros.', 'futuriste', 'anticipation', 'repliquant'),
('FRED', 'Alien', 1979, 116, 'En 2122, le cargo interstellaire Nostromo, de retour vers la Terre avec son chargement de minerai à la fin de sa mission de raffinerie, capte un signal sonore émis depuis un planétoïde isolé. L\'ordinateur de bord du vaisseau — appelé « Maman » — interrompt alors le trajet du Nostromo et réveille l\'équipage maintenu en biostase (en sommeil artificiel).', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/35/14/60/18363837.jpg', 'https://www.youtube.com/watch?v=LjLamj-b0I8', 'Science-fiction', '', 'Royaume-Unis', 'Ridley Scott', 'Royaume-Unis', 'Sigourney Weaver', 'Etats-Unis', 'Tom Skerritt', 'Etats-Unis', 'Veronica Cartwright', 'Royaume-Unis', 'Harry Dean Stanton', 'Etats-Unis', 'John Hurt', 'Royaume-Unis', 'Dan O\'Bannon', 'Etats-Unis', '20 Th Century Fox', 'espace', 'clandestin', 'extraterreste'),
('FRED', 'Predator', 1987, 97, 'En 1987, un vaisseau spatial extraterrestre pénètre dans l\'atmosphère terrestre et largue une nacelle sur l\'Amérique centrale. Quelque temps après, le major Alan « Dutch » Schaefer (Arnold Schwarzenegger) arrive au Guatemala avec son équipe d\'élite pour une opération visant à retrouver un ministre du cabinet présidentiel perdu avec son second à cause des forces de guérilla en Val Verde (région de fiction).', '', 'https://www.youtube.com/watch?v=9u8vZwvP57Y', 'Science-fiction', '', 'Etats-Unis', 'John MCTierman', 'Etats-Unis', 'Arnold Schwarzenegger', 'Autriche', 'Carl Weathers', 'Etats-Unis', 'Elpidia Carillo', 'Mexique', 'Bill Duke', 'Etats-Unis', 'Jesse Ventura', 'Etats-Unis', 'Jims Thomas', 'Etats-Unis', 'Capricci', 'extraterreste', 'guerre', 'chasse'),
('SYLVIE', 'whisper, libre comme le vent.', 2013, 105, 'C\'est l\'histoire d\'une rencontre entre une adolescente, Mika, et un cheval nommé Whisper. Magnifique, impétueuse et réputée indomptable, la bête se laisse cependant apprivoiser par sa jeune amie. Mais, alors que Whisper est destiné à l\'abattoir, Mika va devoir prouver qu\'il ne mérite pas ce destin en remportant un tournoi d\'équitation.', 'http://fr.web.img6.acsta.net/pictures/15/10/08/09/24/320924.jpg', 'https://www.youtube.com/watch?v=_4skvfN28Eg', 'Aventure', '', 'Allemagne', 'Katja Von Garnier', 'Allemagne', 'Hanna Höppner', 'Allemagne', 'Detlev Buck', 'Allemagne', 'Cornelia Froboess', 'Allemagne', '', '', '', '', 'Lea Schmidbauer', 'Allemagne', 'Constantin Film', 'cheval', 'liberté', 'équitation'),
('SYLVIE', 'Dragons', 2010, 98, 'L\'histoire d\'Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va peu à peu amener Harold et les siens à voir le monde d\'un point de vue totalement différent.', 'http://fr.web.img4.acsta.net/medias/nmedia/18/73/01/74/19343191.jpg', 'https://www.youtube.com/watch?v=rsj6Iv2jE1I', 'Animation', '', 'Etats-Unis', 'Dean DeBlois', 'Etats-Unis', 'Donald Reignoux', 'France', 'Florine Orphelin', 'France', 'Emmanuel Jacomy', 'France', '', '', '', '', 'Adam F.Goldberg', 'Etats-Unis', 'DreamWorks Animation', 'dragon', 'vicking', 'amitié'),
('SYLVIE', 'Prince of Persia : les sables du temps', 2010, 126, 'Un prince rebelle est contraint d\'unir ses forces avec une mystérieuse princesse pour affronter ensemble les forces du mal et protéger une dague antique capable de libérer les Sables du temps, un don de dieu qui peut inverser le cours du temps et permettre à son possesseur de régner en maître absolu sur le monde.', 'https://images-na.ssl-images-amazon.com/images/I/81DgnUVX1eL._SY550_.jpg', 'https://www.youtube.com/watch?v=KRDeYRawLK4', 'Aventure', '', 'Etats-Unis', 'Mike Newell', 'Etats-Unis', 'Jake Gyllenhaal', 'Etats-Unis', 'Gemma Arterton', 'Royaume-Unis', 'Ben Kingsley', 'Royaume-Unis', '', '', '', '', 'Jordan Mechner', 'Etats-Unis', 'Walt Disney Pictures', 'Perse', 'jeu vidéo', 'prince'),
('FRANCOIS', 'Le Voyage de Chihiro', 2002, 125, 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'une harpie méphistophélique.', 'http://images.affiches-et-posters.com//albums/3/7390/AF7303.JPG', 'http://www.allocine.fr/video/player_gen_cmedia=18670499&cfilm=37485.html', 'Animation', 'Aventure', 'Japon', 'Hayao Miyazaki', 'Japon', 'Rumi Hiiragi', 'Japon', 'Miyu Irino', 'Japon', 'Daveigh Chase', 'Etats-Unis', '', '', '', '', 'Hayao Miyazaki', 'Japon', 'Buena Vista International', 'Chihiro', 'fantome', 'magie'),
('FRANCOIS', 'Good Morning England', 2009, 135, 'Carl vient de se faire renvoyer du lycée, et sa mère a décidé qu\'il irait réfléchir à son avenir auprès de son parrain, Quentin. Il se trouve que celui-ci est le patron de Radio Rock, une radio pirate qui émet depuis un bateau en mer du Nord peuplé d\'un équipage éclectique de DJ\'s rock and roll. À leur tête se trouve le Comte, un Américain exubérant, véritable dieu des ondes en synergie totale avec la musique. A ses côtés, ses fidèles animateurs : Dave, ironique, intelligent et d\'un humour acéré ; l\'adorable Simon, qui cherche l\'amour ; l\'énigmatique Midnight Mark, séduisant et silencieux ; Wee Small Hours Bob, le DJ des petites heures du matin, accro à la musique folk et à la drogue, Thick Kevin, qui possède l\'intelligence la plus microscopique du monde ; On-the-Hour John, le chroniqueur des actualités, et Angus \"The Nut\" Nutsford, qui est sans doute l\'homme le plus agaçant d\'Angleterre...', 'http://www.allocine.fr/film/fichefilm-134316/photos/detail/?cmediafile=19064391', 'http://www.allocine.fr/video/player_gen_cmedia=18874442&cfilm=134316.html', 'Comedie', 'Musical', 'Royaume-Unis', 'Richard Curtis', 'Royaume-Unis', 'Tom Sturridge', 'Royaume-Unis', 'Philippe Seymour Hoffman', 'Etats-Unis', 'Rhys Ifans', 'Royaume-Unis', 'Bill Nighy', 'Royaume-Unis', 'Emma Thompson', 'Royaume-Unis', 'Richard Curtis', 'Royaume-Unis', 'StudioCanal', 'Rock', 'Radio-Pirate', 'bateau'),
('FRANCOIS', 'Summer War', 2009, 114, 'Bienvenue dans le monde de OZ : la plateforme communautaire d\'internet. En se connectant depuis un ordinateur, une télévision ou un téléphone, des millions d\'avatars alimentent le plus grand réseau social en ligne pour une nouvelle vie, hors des limites de la réalité.\nKenji, un lycéen timide et surdoué en mathématiques, effectue un job d\'été au service de la maintenance d\'OZ. A sa grande surprise, la jolie Natuski, la fille de ses rêves, lui propose de l\'accompagner à Nagano, sa ville natale. Il se retrouve alors embarqué pour la fête traditionnelle du clan Jinnouchi. Il comprend bientôt que Natsuki ne l\'a invité que pour jouer le rôle du \" futur fiancé \" et faire bonne figure vis-à-vis de sa vénérable grand mère. Au même moment, un virus attaque OZ, déclenchant catastrophe sur catastrophe au niveau planétaire.\nAvec l\'aide de Kenji, tout le clan Jinnouchi se lance alors dans une véritable croisade familiale pour sauver le monde virtuel et ses habitants...', 'http://fr.web.img6.acsta.net/medias/nmedia/18/74/07/75/19434023.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18951740&cfilm=177581.html', 'Animation', '', 'Japon', 'Mamoru Hosoda', 'Japon', 'Mitsuki Tanimura', 'Japon', 'Junko Fuji', 'Japon', 'Ayumu Saitô', 'Japon', 'Namai Sakuraba', 'Japon', '', '', 'Satoko Okudera', 'Japon', 'Eurozoom', 'Réseau', 'virtuel', ''),
('ALAPHILIPPE MAXIME', 'Shutter island', 2010, 129, 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l\'île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d\'une cellule fermée de l\'extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d\'une malade, ou cryptogramme ?', 'http://www.allocine.fr/film/fichefilm-132039/photos/detail/?cmediafile=19151192', 'http://www.allocine.fr/video/player_gen_cmedia=18916868&cfilm=132039.html', 'Thriller', '', 'Etats-Unis', 'Martin Scorsese', 'Etats-Unis', 'Leonardo DIcaprio', 'Etats-Unis', 'Mark Ruffalo', 'Etats-Unis', 'Ben Kingsley', 'Royaume-Unis', 'Michelle Williams', 'Etats-Unis', '', '', 'Laeta Kalogridis', 'Etats-Unis', '', 'trhiller ', 'psychiatrie', 'enquete'),
('ALAPHILIPPE MAXIME', 'Le seigneur des anneaux : Le retour du roi', 2003, 200, 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ?\nTandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis qui s\'abattent sur le royaume...\nChaque victoire se paye d\'immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l\'attention de Sauron afin de donner à Frodon une chance d\'accomplir sa quête.\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l\'Anneau continue de le tenter...', 'http://www.allocine.fr/film/fichefilm-39187/photos/detail/?cmediafile=18366630', 'http://www.allocine.fr/video/player_gen_cmedia=19448603&cfilm=39187.html', 'Fantastique', 'Aventure', 'Etats-Unis', 'Peter Jackson', 'Nouvelle-Zelande', 'Elijah Wood', 'Etats-Unis', 'Sean Astin', 'Etats-Unis', 'Viggo Mortensen', 'Etats-Unis', 'Ian McKellen', 'Royaume-Unis', '', '', 'J.R.R Tolkien', 'Nouvelle-Zelande', 'Warner Bross', 'Anneaux', 'Sauron', 'fantastique'),
('ALAPHILIPPE MAXIME', 'Harry Potter : Le prince de sang mélé', 2009, 160, 'L\'étau démoniaque de Voldemort se resserre sur l\'univers des Moldus et le monde de la sorcellerie. Poudlard a cessé d\'être un havre de paix, le danger rode au coeur du château... Mais Dumbledore est plus décidé que jamais à préparer Harry à son combat final, désormais imminent. Ensemble, le vieux maître et le jeune sorcier vont tenter de percer à jour les défenses de Voldemort. Pour les aider dans cette délicate entreprise, Dumbledore va relancer et manipuler son ancien collègue, le Professeur Horace Slughorn, qu\'il croit en possession d\'informations vitales sur le jeune Voldemort. Mais un autre \"mal\" hante cette année les étudiants : le démon de l\'adolescence ! Harry est de plus en plus attiré par Ginny, qui ne laisse pas indifférent son rival, Dean Thomas ; Lavande Brown a jeté son dévolu sur Ron, mais oublié le pouvoir \"magique\" des chocolats de Romilda Vane ; Hermione, rongée par la jalousie, a décidé de cacher ses sentiments, vaille que vaille. L\'amour est dans tous les coeurs - sauf un. Car un étudiant reste étrangement sourd à son appel. Dans l\'ombre, il poursuit avec acharnement un but aussi mystérieux qu\'inquiétant... jusqu\'à l\'inévitable tragédie qui bouleversera à jamais Poudlard...', 'http://www.allocine.fr/film/fichefilm-116305/photos/detail/?cmediafile=19116952', 'http://www.allocine.fr/video/player_gen_cmedia=18903516&cfilm=116305.html', 'Fantastique', 'Aventure', 'Etats-Unis', 'Daniel Radcliffe', 'Royaume-Unis', 'Rupert Grint', 'Royaume-Unis', 'Emma Watson', 'Royaume-Unis', '', '', '', '', '', '', 'J.K Rowling', 'Royaume-Unis', 'Warner Bros', 'Harry ', 'Potter', 'magie'),
('EDAINS', 'Doctor Strange', 2016, 155, 'Doctor Strange suit l\'histoire du Docteur Stephen Strange, talentueux neurochirurgien qui, après un tragique accident de voiture, doit mettre son égo de côté et apprendre les secrets d\'un monde caché de mysticisme et de dimensions alternatives. Basé à New York, dans le quartier de Greenwich Village, Doctor Strange doit jouer les intermédiaires entre le monde réel et ce qui se trouve au-delà, en utlisant un vaste éventail d\'aptitudes métaphysiques et d\'artefacts pour protéger le Marvel Cinematic Universe.', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=130533.html', 'http://www.allocine.fr/video/player_gen_cmedia=19562026&cfilm=130533.html', 'Fantastique', '', 'Etats-Unis', 'Scott Derrickson', 'Etats-Unis', 'Benedict Cumberbatch', 'Royaume-Unis', 'Chiwetel Umeadi Ejiofor', 'Royaume-Unis', 'Katherine Matilda Swinton', 'Royaume-Unis', 'Rachel Anne McAdams', 'Canada', 'Benedict Wong', 'Royaume-Unis', 'C. Robert Cargill', 'États-Unis', 'Marvel Studios', 'Héros', 'Marvel', 'Docteur'),
('EDAINS', 'Avengers Infinite war', 2018, 149, 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. ', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=218265.html', 'http://www.allocine.fr/video/player_gen_cmedia=19577543&cfilm=218265.html', 'Action', '', 'Etats-Unis', 'Joe Russo\n', 'Etats-Unis', 'Josh Brolin', 'Etats-Unis', 'Robert John Downey Junior', 'Etats-Unis', 'Chris Evans', 'Etats-Unis', 'Mark Alan Ruffalo', 'Etats-Unis', 'Christopher Hemsworth', 'Australie', 'Christopher Markus', '', 'Marvel Studios', 'Héros', 'Marvel', 'Thanos'),
('EDAINS', 'Pacific Rim', 2013, 130, 'Surgies des flots, des hordes de créatures monstrueuses venues d’ailleurs, les «Kaiju», ont déclenché une guerre qui a fait des millions de victimes et épuisé les ressources naturelles de l’humanité pendant des années. Pour les combattre, une arme d’un genre nouveau a été\nmise au point : de gigantesques robots, les «Jaegers», contrôlés simultanément par deux pilotes qui communiquent par télépathie grâce à une passerelle neuronale baptisée le «courant». Mais même les Jaegers semblent impuissants face aux redoutables Kaiju.\nAlors que la défaite paraît inéluctable, les forces armées qui protègent l’humanité n’ont d’autre choix que d’avoir recours à deux héros hors normes : un ancien pilote au bout du rouleau (Charlie Hunnam) et une jeune femme en cours d’entraînement (Rinko Kikuchi) qui font équipe pour manoeuvrer un Jaeger d’apparence obsolète. Ensemble, ils incarnent désormais le dernier rempart de l’humanité contre une apocalypse de plus en plus imminente…', 'http://www.allocine.fr/film/fichefilm_gen_cfilm=191289.html', 'http://www.allocine.fr/video/player_gen_cmedia=19536109&cfilm=191289.html', 'Science-fiction', '', 'Etats-Unis', 'Guillermo del Toro Gómez', 'Mexique', 'Charles Matthew Hunnam', 'Royaume-Unis', 'Yuriko Kikuchi', 'Etats-Unis', 'Idrissa Akuna Elba', 'Royaume-Unis', 'Charles Peckham Day', 'Etats-Unis', 'Francis Ronald Perlman', 'Etats-Unis', 'Guillermo del Toro', 'Mexique', 'Warner Bros', 'Robot', 'Kaiju', 'Japon');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nomUtilisateur` varchar(55) COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`) VALUES
(1, 'ALAPHILIPPE MAXIME'),
(2, 'BERAUD Fabien'),
(3, 'Dherret Quentin'),
(4, 'EDAINS'),
(5, 'FRANCOIS'),
(6, 'FRED'),
(7, 'GRASSE JP'),
(8, 'JUY Laurent'),
(9, 'Lacroix Christophe'),
(10, 'LAURENT Maximilien'),
(11, 'Marceron Corinne'),
(12, 'OUVRARD Fabien'),
(13, 'SAUNIER Thibaud'),
(14, 'SYLVIE'),
(15, 'YANG Francis');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD KEY `FK_appartient_idFilm` (`idFilm`),
  ADD KEY `FK_appartient_idGenre2` (`idGenre2`),
  ADD KEY `idGenre` (`idGenre`,`idFilm`,`idGenre2`) USING BTREE;

--
-- Index pour la table `decris`
--
ALTER TABLE `decris`
  ADD KEY `FK_decris_idFilm` (`idFilm`),
  ADD KEY `idMotCles` (`idMotCles`,`idFilm`) USING BTREE;

--
-- Index pour la table `estOriginaire`
--
ALTER TABLE `estOriginaire`
  ADD KEY `FK_estOriginaire_idFilm` (`idFilm`),
  ADD KEY `idPays` (`idPays`,`idFilm`) USING BTREE;

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`idFilm`),
  ADD KEY `FK_Film_idUtilisateur` (`idUtilisateur`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Index pour la table `genre2`
--
ALTER TABLE `genre2`
  ADD PRIMARY KEY (`idGenre2`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD KEY `FK_joue_idPersonne` (`idPersonne`),
  ADD KEY `idFilm` (`idFilm`,`idPersonne`) USING BTREE;

--
-- Index pour la table `motClef`
--
ALTER TABLE `motClef`
  ADD PRIMARY KEY (`idMotCles`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`idPays`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`idPersonne`),
  ADD KEY `FK_personne_idPays` (`idPays`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD KEY `FK_produit_idPersonne` (`idPersonne`),
  ADD KEY `idFilm` (`idFilm`,`idPersonne`) USING BTREE;

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD KEY `FK_realise_idPersonne` (`idPersonne`),
  ADD KEY `idFilm` (`idFilm`,`idPersonne`) USING BTREE;

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `appartient`
--
ALTER TABLE `appartient`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `decris`
--
ALTER TABLE `decris`
  MODIFY `idMotCles` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `estOriginaire`
--
ALTER TABLE `estOriginaire`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `genre2`
--
ALTER TABLE `genre2`
  MODIFY `idGenre2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `joue`
--
ALTER TABLE `joue`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `motClef`
--
ALTER TABLE `motClef`
  MODIFY `idMotCles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `realise`
--
ALTER TABLE `realise`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `FK_appartient_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_appartient_idGenre` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`),
  ADD CONSTRAINT `FK_appartient_idGenre2` FOREIGN KEY (`idGenre2`) REFERENCES `genre2` (`idGenre2`);

--
-- Contraintes pour la table `decris`
--
ALTER TABLE `decris`
  ADD CONSTRAINT `FK_decris_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_decris_idMotCles` FOREIGN KEY (`idMotCles`) REFERENCES `motClef` (`idMotCles`);

--
-- Contraintes pour la table `estOriginaire`
--
ALTER TABLE `estOriginaire`
  ADD CONSTRAINT `FK_estOriginaire_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_estOriginaire_idPays` FOREIGN KEY (`idPays`) REFERENCES `pays` (`idPays`);

--
-- Contraintes pour la table `Film`
--
ALTER TABLE `Film`
  ADD CONSTRAINT `FK_Film_idUtilisateur` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `FK_joue_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_joue_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_personne_idPays` FOREIGN KEY (`idPays`) REFERENCES `pays` (`idPays`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_produit_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_produit_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `FK_realise_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_realise_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
