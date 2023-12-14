-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 déc. 2023 à 20:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `newss`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` int(11) NOT NULL,
  `titre` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `description`, `date_publication`) VALUES
(16, 'Découverte d\\\'une nouvelle espèce marine', ' Des scientifiques annoncent la découverte d\\\'une nouvelle espèce de créature marine au fond de l\\\'océan.', '2023-12-10 01:47:25'),
(17, 'Avancées majeures dans la recherche sur ', 'Des chercheurs font des progrès significatifs dans la compréhension et le traitement du cancer.\r\n', '2023-12-10 01:48:22'),
(18, 'Événements mondiaux de 2021', ' Récapitulatif des principaux événements mondiaux de l\\\'année 2021, y compris la pandémie de COVID-19 et les développements politiques.', '2023-12-10 01:49:11'),
(19, 'Découverte d\\\'une nouvelle espèce marine', '\r\nDes scientifiques annoncent la découverte d\\\'une nouvelle espèce de créature marine au fond de l\\\'océan.\r\n', '2023-12-10 01:51:00'),
(20, 'Avancées majeures dans la recherche sur ', '\r\nDes chercheurs font des progrès significatifs dans la compréhension et le traitement du cancer.\r\n\r\n\r\n', '2023-12-10 01:51:30'),
(22, 'Lancement réussi d\'une mission spatiale ', 'Une équipe internationale d\'astronautes a réussi à lancer une mission spatiale vers Mars, avec l\'objectif d\'explorer davantage la planète rouge et d\'approfondir notre compréhension de l\'univers.', '2023-12-13 19:53:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
