-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 23 fév. 2024 à 17:01
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `weatherapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `ID` int(11) NOT NULL,
  `name` text,
  `currentTempérature` int(11) DEFAULT NULL,
  `currentHumidity` int(11) DEFAULT NULL,
  `currentWedSpeed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`ID`, `name`, `currentTempérature`, `currentHumidity`, `currentWedSpeed`) VALUES
(1, 'Benimellal', 39, 2, 60),
(2, 'Marrakech', 50, 1, 40);

-- --------------------------------------------------------

--
-- Structure de la table `cityhistory`
--

CREATE TABLE `cityhistory` (
  `HistoriacalDataID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `Temperature` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cityhistory`
--

INSERT INTO `cityhistory` (`HistoriacalDataID`, `ID`, `EventDate`, `Temperature`) VALUES
(1, 1, '2024-02-27', 70),
(2, 2, '2024-02-27', 24);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `cityhistory`
--
ALTER TABLE `cityhistory`
  ADD PRIMARY KEY (`HistoriacalDataID`),
  ADD KEY `ID` (`ID`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cityhistory`
--
ALTER TABLE `cityhistory`
  ADD CONSTRAINT `cityhistory_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `city` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
