-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2017 at 08:08 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `jeux_video`
--

CREATE TABLE IF NOT EXISTS `jeux_video` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `possesseur` varchar(255) NOT NULL,
  `console` varchar(255) NOT NULL,
  `prix` double NOT NULL DEFAULT '0',
  `nbre_joueurs_max` int(11) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, 'Super Mario Bros', 'Florent', 'NES', 4, 1, 'Un jeu d''anthologie !'),
(2, 'Sonic', 'Patrick', 'Megadrive', 2, 1, 'Pour moi, le meilleur jeu du monde !'),
(3, 'Zelda : ocarina of time', 'Florent', 'Nintendo 64', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, 'Mario Kart 64', 'Florent', 'Nintendo 64', 25, 4, 'Un excellent jeu de kart !'),
(5, 'Super Smash Bros Melee', 'Michel', 'GameCube', 55, 4, 'Un jeu de baston délirant !'),
(6, 'Dead or Alive', 'Patrick', 'Xbox', 60, 4, 'Le plus beau jeu de baston jamais créé'),
(7, 'Dead or Alive Xtreme Beach Volley Ball', 'Patrick', 'Xbox', 60, 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, 'Enter the Matrix', 'Michel', 'PC', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, 'Max Payne 2', 'Michel', 'PC', 50, 1, 'Très réaliste, une sorte de film noir sur fond d''histoire d''amour. A essayer !'),
(10, 'Yoshi''s Island', 'Florent', 'SuperNES', 6, 1, 'Le paradis des Yoshis :o)'),
(11, 'Commandos 3', 'Florent', 'PC', 44, 12, 'Un bon jeu d''action où on dirige un commando pendant la 2ème guerre mondiale !'),
(12, 'Final Fantasy X', 'Patrick', 'PS2', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, 'Pokemon Rubis', 'Florent', 'GBA', 44, 4, 'Pika-Pika-chu !!!'),
(14, 'Starcraft', 'Michel', 'PC', 19, 8, 'Le meilleur jeux pc de tout les temps !'),
(15, 'Grand Theft Auto 3', 'Michel', 'PS2', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .'),
(16, 'Homeworld 2', 'Michel', 'PC', 45, 6, 'Superbe ! o_O'),
(17, 'Aladin', 'Patrick', 'SuperNES', 10, 1, 'Comme le dessin Animé !'),
(18, 'Super Mario Bros 3', 'Michel', 'SuperNES', 10, 2, 'Le meilleur Mario selon moi.'),
(19, 'SSX 3', 'Florent', 'Xbox', 56, 2, 'Un très bon jeu de snow !'),
(20, 'Star Wars : Jedi outcast', 'Patrick', 'Xbox', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'Actua Soccer 3', 'Patrick', 'PS', 30, 2, 'Un jeu de foot assez bof ...'),
(22, 'Time Crisis 3', 'Florent', 'PS2', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant'),
(23, 'X-FILES', 'Patrick', 'PS', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, 'Soul Calibur 2', 'Patrick', 'Xbox', 54, 1, 'Un jeu bien axé sur le combat'),
(25, 'Diablo', 'Florent', 'PS', 20, 1, 'Comme sur PC mais la c''est sur un ecran de télé :) !'),
(26, 'Street Fighter 2', 'Patrick', 'Megadrive', 10, 2, 'Le célèbre jeu de combat !'),
(27, 'Gundam Battle Assault 2', 'Florent', 'PS', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, 'Spider-Man', 'Florent', 'Megadrive', 15, 1, 'Vivez l''aventure de l''homme araignée'),
(29, 'Midtown Madness 3', 'Michel', 'Xbox', 59, 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, 'Tetris', 'Florent', 'Gameboy', 5, 1, 'Qui ne connait pas ? '),
(31, 'The Rocketeer', 'Michel', 'NES', 2, 1, 'Un super un film et un jeu de m*rde ...'),
(32, 'Pro Evolution Soccer 3', 'Patrick', 'PS2', 59, 2, 'Un petit jeu de foot sur PS2'),
(33, 'Ice Hockey', 'Michel', 'NES', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, 'Sydney 2000', 'Florent', 'Dreamcast', 15, 2, 'Les JO de Sydney dans votre salon !'),
(35, 'NBA 2k', 'Patrick', 'Dreamcast', 12, 2, 'A votre avis :p ?'),
(36, 'Aliens Versus Predator : Extinction', 'Michel', 'PS2', 20, 2, 'Un shoot''em up pour pc'),
(37, 'Crazy Taxi', 'Florent', 'Dreamcast', 11, 1, 'Conduite de taxi en folie !'),
(38, 'Le Maillon Faible', 'Mathieu', 'PS2', 10, 1, 'Le jeu de l''émission'),
(39, 'FIFA 64', 'Michel', 'Nintendo 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, 'Qui Veut Gagner Des Millions', 'Florent', 'PS2', 10, 1, 'Le jeu de l''émission'),
(41, 'Monopoly', 'Sebastien', 'Nintendo 64', 21, 4, 'Bheuuu le monopoly sur N64 !'),
(42, 'Taxi 3', 'Corentin', 'PS2', 19, 4, 'Un jeu de voiture sur le film'),
(43, 'Indiana Jones Et Le Tombeau De L''Empereur', 'Florent', 'PS2', 25, 1, 'Notre aventurier préféré est de retour !!!'),
(44, 'F-ZERO', 'Mathieu', 'GBA', 25, 4, 'Un super jeu de course futuriste !'),
(45, 'Harry Potter Et La Chambre Des Secrets', 'Mathieu', 'Xbox', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !'),
(46, 'Half-Life', 'Corentin', 'PC', 15, 32, 'L''autre meilleur jeu de tout les temps (surtout ses mods).'),
(47, 'Myst III Exile', 'Sébastien', 'Xbox', 49, 1, 'Un jeu de réflexion'),
(48, 'Wario World', 'Sebastien', 'Gamecube', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, 'Rollercoaster Tycoon', 'Florent', 'Xbox', 29, 1, 'Jeu de gestion d''un parc d''attraction'),
(50, 'Splinter Cell', 'Patrick', 'Xbox', 53, 1, 'Jeu magnifique !');

-- --------------------------------------------------------

--
-- Table structure for table `minichat`
--

CREATE TABLE IF NOT EXISTS `minichat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `minichat`
--

INSERT INTO `minichat` (`id`, `pseudo`, `message`, `date`) VALUES
(1, '0', '0', '0000-00-00 00:00:00'),
(6, '0', '0', '0000-00-00 00:00:00'),
(7, 'garz', 'dsq', '0000-00-00 00:00:00'),
(8, 'Olivier', 'Pardon?', '0000-00-00 00:00:00'),
(9, 'Grazie', 'Je m''appelle Graziella je suis une fille ', '0000-00-00 00:00:00'),
(10, 'Oliver', 'Ok d''accord', '0000-00-00 00:00:00'),
(11, 'fsdf', 'fdsf', '0000-00-00 00:00:00'),
(12, 'dsfs', 'fdsf', '0000-00-00 00:00:00'),
(13, 'lom', 'zefezfr', '0000-00-00 00:00:00'),
(14, 'sdfsd', 'sfsdf', '0000-00-00 00:00:00'),
(15, 'sdfsf', 'fsdfsfs f zfef', '0000-00-00 00:00:00'),
(16, 'nkl', 'nkn', '0000-00-00 00:00:00'),
(17, 'hellot', 'dsf,ls', '0000-00-00 00:00:00'),
(18, 'dsd', 'dsd', '0000-00-00 00:00:00'),
(19, 'dqsd', 'maintenant', '2017-10-31 08:26:15'),
(20, 'jkl', 'nkl', '2017-10-31 08:26:51'),
(21, 'Grazi', 'jlmjml', '2017-10-31 08:27:49'),
(22, 'kml', ',lm', '2017-10-31 08:34:23'),
(23, 'nkl', ',lm', '2017-10-31 08:34:50'),
(24, 'km', 'lmk?klm,l', '2017-10-31 08:35:12'),
(25, 'km?', 'jlmjml jjpo ', '2017-10-31 08:36:44'),
(26, 'Franky', 'Bonjour il y a quelqu''un?', '2017-10-31 12:38:17'),
(27, 'Grazi', 'Oui je suis la', '2017-10-31 12:38:40'),
(28, 'Grazi', 'Re tu fais quoi?', '2017-10-31 14:11:51'),
(29, 'Grazi', 'tu es la?', '2017-10-31 14:13:43'),
(30, 'Grazi', 'sLAUT', '2017-10-31 14:19:23'),
(31, 'Grazi', 'Ca va?', '2017-10-31 14:19:53'),
(32, 'bonjour', 'dsjklfjs', '2017-10-31 14:20:51'),
(33, 'Grazi', 'kdlmqs', '2017-10-31 14:21:44'),
(34, 'fdsf', 'fsdfd', '2017-10-31 14:23:18'),
(35, 'fsd', 'dsf', '2017-10-31 14:25:11'),
(36, 'Grazi', 'Je teste je teste', '2017-10-31 14:28:53'),
(37, 'Grazi', 'il est tard', '2017-10-31 14:32:41'),
(38, '', 'gkelg', '2017-10-31 14:32:54'),
(39, '', '', '2017-10-31 14:33:05'),
(40, 'Grazi', 'est la', '2017-10-31 14:42:00'),
(41, 'Grazi', 'est la', '2017-10-31 14:44:17'),
(42, 'lm', ',lm', '2017-10-31 14:45:31'),
(43, 'garz', 'gsg', '2017-10-31 14:46:30'),
(44, 'HIL', 'JMJO', '2017-10-31 14:46:37'),
(45, 'Grazi', 'dslmd', '2017-10-31 14:47:09'),
(46, 'kdlm', 'dkezmlf', '2017-10-31 14:47:47'),
(47, 'csdf', 'sfslm', '2017-10-31 14:47:53'),
(48, 'dskld', 'dskld', '2017-10-31 14:49:12'),
(49, 'Grazi', 'adkml', '2017-10-31 14:52:21'),
(50, 'Grazi', 'dklmzad', '2017-10-31 14:54:04'),
(51, 'dklmez', 'd,zlme', '2017-10-31 14:54:16'),
(52, 'dqsd', 'ds', '2017-10-31 14:56:17'),
(53, 'testfdmz?f', 'fzlfmz', '2017-10-31 14:56:50'),
(54, 'testfkzefr', 'dfzef,lmz', '2017-10-31 14:57:43'),
(55, '<br /><font size=''1''><table class=''xdebug-error xe-notice'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1''><tr><th align=''left'' bgcolor=''#f57900'' colspan=', '', '2017-10-31 14:58:21'),
(56, 'Grazi', 'ca marche?', '2017-10-31 14:58:56'),
(57, 'Grazi', 'est la', '2017-10-31 15:00:01'),
(58, 'Grazi', 'dkfla', '2017-10-31 15:01:02'),
(59, 'fekmlzf', 'flezmf', '2017-10-31 15:02:10'),
(60, 'tkflez', 'kfme', '2017-10-31 15:04:04'),
(61, 'Grazie', 'est  fatigu', '2017-10-31 15:04:36'),
(62, 'testGerard', '', '2017-10-31 15:04:51'),
(63, 'testGerard', '', '2017-10-31 15:05:29'),
(64, 'testGerard', '', '2017-10-31 15:06:00'),
(65, 'Grazi', 'je t''aime', '2017-10-31 15:06:15'),
(66, 'Grazi', 'kdlmq', '2017-10-31 15:12:33'),
(67, 'Grazi', 'fezg', '2017-10-31 15:13:39'),
(68, 'garz', 'kdlmz', '2017-10-31 15:35:35'),
(69, 'Gezma', 'd,zlmef', '2017-10-31 15:36:53'),
(70, '<br /><font size=''1''><table class=''xdebug-error xe-notice'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1''><tr><th align=''left'' bgcolor=''#f57900'' colspan=', '', '2017-10-31 15:36:56'),
(71, 'km', 'mkmlk', '2017-10-31 16:32:08'),
(72, ',dlks', 'fsf', '2017-10-31 16:33:13'),
(73, 'dkzle', 'fnkzlekf', '2017-10-31 16:33:19'),
(74, 'Sophie', 'klmkldm', '2017-10-31 16:38:34'),
(75, 'Gerard', 'klmfez', '2017-10-31 16:40:01'),
(76, 'Gerard', 'Comment tu t''appelles', '2017-10-31 16:40:12'),
(77, 'Sophie', 'Ca ne te regarde pas', '2017-10-31 16:40:29'),
(78, 'klmezkrm', 'felzmkfl', '2017-10-31 16:41:23'),
(79, 'sophioe', 'klmfez', '2017-10-31 16:42:03'),
(80, 'Sophie', 'je vais bein', '2017-10-31 16:47:33'),
(81, 'Elodie', 'Et toi?', '2017-10-31 16:47:43'),
(82, 'Elodie', 'tu fais quoi?', '2017-10-31 23:59:38'),
(83, 'Elodie', 'tu fais quoi?', '2017-11-01 00:22:02'),
(84, 'Elodie', 'je suis à Paris et toi?', '2017-11-01 00:22:13'),
(85, 'Sophie', 'Tu viens à l''ecole samedi?', '2017-11-01 00:25:04'),
(86, 'Sophie', 'Est-ce aue je peux envoyer ce que je veux avec ce grand espace?', '2017-11-01 00:31:13'),
(87, '<em>Sophie</em>', '', '2017-11-01 00:32:00'),
(88, 'Grazie', 'lili', '2017-11-01 00:32:47'),
(89, 'Grazie', 'je pense que je vais aller en vacances', '2017-11-01 00:34:06'),
(90, 'Vincent', 'Je suis de nice ', '2017-11-01 00:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE IF NOT EXISTS `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`id`, `titre`, `contenu`) VALUES
(1, 'Soldes', 'BOnjour les soldes commencent aujourd''hui profitez-en'),
(2, 'vacances', 'Aujourd''hui c''est les vacances amusez-vous');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
