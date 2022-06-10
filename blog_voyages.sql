-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 juin 2022 à 12:39
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `id_user`, `description`, `pseudo_user`, `id_city`) VALUES
(199, 'Mon article sur Bogota', 'Lorem ipsum dolor sit amet. Rem reprehenderit quam ea dolor commodi ut illo cupiditate quo odio labore eos omnis culpa est sunt doloremque. Et suscipit voluptatibus At ducimus fuga non possimus esse et consectetur voluptatem ab dolorem soluta qui odit deleniti ut nesciunt dolores.<br />\r\n<br />\r\nIn aliquid repellat non dignissimos dolores et labore impedit est ullam esse est deserunt voluptas? Aut quam accusantium aut atque aliquam quo beatae quia ad enim quisquam aut ipsa velit! Ut omnis sunt sit veniam laborum ad fuga pariatur qui cumque voluptas. Sed obcaecati possimus hic exercitationem commodi aut nihil quis est Quis est excepturi sequi.', '2022-06-02 14:56:18', 12, 'La description de mon article ', 'Loe31', 1),
(200, 'Mon article sur Medellin', 'Ea dignissimos voluptas sit accusamus deserunt ea voluptatem incidunt ea repudiandae beatae. Non distinctio fugit est reiciendis culpa quo accusantium praesentium aut porro cupiditate in maiores officia eos iste laudantium ut quia illo.', '2022-06-02 14:57:38', 12, 'Voici ma nouvelle description', 'Loe31', 2);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `id_user`, `created_at`, `id_post`) VALUES
(67, 'Mon avis !<br />\r\n', 10, '2022-06-02 13:01:19', 200),
(66, 'Commentaire !<br />\r\n', 10, '2022-06-02 13:00:52', 199),
(65, 'Mon commentaire<br />\r\n', 12, '2022-06-02 12:56:38', 199);

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
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`, `avatar`) VALUES
(10, 'lnvr31', '$2y$10$zwGok3UTvXhHHbtu18Iwku9TqQlDr4EedkPVH8RYUkHajnoF89tta', 'loenannvr31@gmail.com', ''),
(12, 'Loe31', '$2y$10$pNKhvFtYRJeMC4fXDpCptOz71J54c.uw3GdoB6CarQki5XeI0pJIi', 'lfrnvr@gmail.com', '12.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
