-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 12 sep. 2022 à 11:17
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_voyages`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `description` text NOT NULL,
  `pseudo_user` varchar(80) NOT NULL,
  `id_city` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `id_user`, `description`, `pseudo_user`, `id_city`, `updated_at`) VALUES
(216, 'Bogota, la capitale', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam voluptatibus, earum dicta corporis vero dolor asperiores illo voluptatem ea quos reiciendis sapiente reprehenderit est impedit consequuntur, error architecto dignissimos obcaecati corrupti magni quibusdam pariatur incidunt assumenda qui. Ab, nobis sapiente itaque suscipit id numquam modi, vitae rem molestias, inventore ea.', '2022-09-08 22:31:40', 102, 'Je vous raconte mon voyage !', 'lnvr31', 1, NULL),
(217, 'Le carnaval de Barranquilla', 'Nam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolorNam voluptatibus, earum dicta corporis vero dolor.', '2022-09-08 22:33:11', 102, 'Une suberbe expérience !', 'lnvr31', 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(60) NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `city`, `ordre`) VALUES
(1, 'Bogota', 1),
(2, 'Medellin', 2),
(3, 'Cali', 3),
(4, 'Carthagène', 4),
(5, 'Barranquilla', 5),
(6, 'Bucaramanga', 6),
(7, 'Pereira', 7),
(8, 'Ibagué', 8),
(9, 'Santa Marta', 9),
(10, 'Autre', 10);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `id_post` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `id_user`, `created_at`, `id_post`, `updated_at`) VALUES
(81, 'Jccs c sdc sdc sd csd cscsc', 102, '2022-08-25 19:51:19', 211, NULL),
(70, 'test2', 102, '2022-08-04 14:24:05', 202, NULL),
(69, 'testtt', 102, '2022-08-04 12:20:41', 202, NULL),
(68, 'Mon commentaire en test', 102, '2022-08-03 15:06:59', 201, '2022-08-04 18:01:36'),
(67, 'Mon avis !<br />\r\n', 10, '2022-06-02 13:01:19', 200, NULL),
(66, 'Commentaire !<br />\r\n', 10, '2022-06-02 13:00:52', 199, NULL),
(65, 'Mon commentaire<br />\r\n', 12, '2022-06-02 12:56:38', 199, NULL),
(77, 'fghj', 102, '2022-08-16 22:45:46', 205, NULL),
(80, 'xwcxwcw', 102, '2022-08-16 23:27:39', 201, NULL),
(82, 'vdfvdfv', 102, '2022-08-25 20:14:21', 213, NULL),
(83, 'szszs', 102, '2022-08-25 20:30:44', 214, NULL),
(84, 'csdcdsc', 102, '2022-08-26 14:59:30', 215, NULL),
(85, 'Nam voluptatibus, earum dicta corporis vero dolor', 102, '2022-09-08 22:32:15', 216, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `id_post` int(11) NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recup_password`
--

DROP TABLE IF EXISTS `recup_password`;
CREATE TABLE IF NOT EXISTS `recup_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) NOT NULL,
  `token` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `token` varchar(20) NOT NULL,
  `validation` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`, `avatar`, `token`, `validation`) VALUES
(110, 'test31test', '$2y$10$XtmQV0lFPHCGmwpyhTx5AOb9WhpSFH2adwCVgfwXeXao0Zq0bDwlO', 'lfrnvr@gmail.com', 'default.jpg', 'valide', 1),
(102, 'lnvr31a', '$2y$10$Y0M9VnjHNPIhDOLBNumK/OIPrc6HFp5p1r8FSTByKxkDRcOzD9/I.', 'loenannvr31@gmail.com', '102.jpg', 'valide', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
