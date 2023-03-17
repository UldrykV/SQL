-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 mars 2023 à 12:29
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sav`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `ID_CLIENT` int NOT NULL AUTO_INCREMENT,
  `PRENOM_CLIENT` varchar(30) DEFAULT NULL,
  `ADRESSE_CLIENT` varchar(60) DEFAULT NULL,
  `VILLE_CLIENT` varchar(50) DEFAULT NULL,
  `CP_CLIENT` int DEFAULT NULL,
  `NOM_CLIENT` varchar(30) DEFAULT NULL,
  `TEL_CLIENT` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `NUMERO_COMMANDE` int NOT NULL AUTO_INCREMENT,
  `DATE_COMMANDE` date DEFAULT NULL,
  `ID_CLIENT` int NOT NULL,
  PRIMARY KEY (`NUMERO_COMMANDE`),
  KEY `ID_CLIENT` (`ID_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comporter`
--

DROP TABLE IF EXISTS `comporter`;
CREATE TABLE IF NOT EXISTS `comporter` (
  `ID_PRODUITS` int NOT NULL AUTO_INCREMENT,
  `NUMERO_COMMANDE` int NOT NULL,
  `QT_COMMANDEES` int DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUITS`,`NUMERO_COMMANDE`),
  KEY `NUMERO_COMMANDE` (`NUMERO_COMMANDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `ID_FACTURE` int NOT NULL AUTO_INCREMENT,
  `DATE_FACTURE` date DEFAULT NULL,
  `ADRESSE_FACTURATION` varchar(150) DEFAULT NULL,
  `DATE_LIVRAISON` date NOT NULL,
  PRIMARY KEY (`ID_FACTURE`),
  KEY `DATE_LIVRAISON` (`DATE_LIVRAISON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `DATE_LIVRAISON` date NOT NULL,
  `ID_LIVRAISON` int DEFAULT NULL,
  `QT_LIVRER` int DEFAULT NULL,
  `ADRESSE_LIVRAISON` varchar(150) DEFAULT NULL,
  `NUMERO_COMMANDE` int NOT NULL,
  PRIMARY KEY (`DATE_LIVRAISON`),
  KEY `NUMERO_COMMANDE` (`NUMERO_COMMANDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `ID_PRODUITS` int NOT NULL AUTO_INCREMENT,
  `NOM_PRODUITS` varchar(50) DEFAULT NULL,
  `PRIX_PRODUITS` decimal(5,2) DEFAULT NULL,
  `TYPE_STOCK` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUITS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `ID_TICKET` int NOT NULL AUTO_INCREMENT,
  `DATE_TICKET` date DEFAULT NULL,
  `TYPE_DOSSIER` varchar(4) DEFAULT NULL,
  `ID_PRODUITS` int NOT NULL,
  `ID_USER` int NOT NULL,
  `NUMERO_COMMANDE` int NOT NULL,
  PRIMARY KEY (`ID_TICKET`),
  KEY `ID_PRODUITS` (`ID_PRODUITS`),
  KEY `ID_USER` (`ID_USER`),
  KEY `NUMERO_COMMANDE` (`NUMERO_COMMANDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` int NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NOM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `comporter`
--
ALTER TABLE `comporter`
  ADD CONSTRAINT `comporter_ibfk_1` FOREIGN KEY (`ID_PRODUITS`) REFERENCES `produits` (`ID_PRODUITS`),
  ADD CONSTRAINT `comporter_ibfk_2` FOREIGN KEY (`NUMERO_COMMANDE`) REFERENCES `commande` (`NUMERO_COMMANDE`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`DATE_LIVRAISON`) REFERENCES `livraison` (`DATE_LIVRAISON`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`NUMERO_COMMANDE`) REFERENCES `commande` (`NUMERO_COMMANDE`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ID_PRODUITS`) REFERENCES `produits` (`ID_PRODUITS`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`NUMERO_COMMANDE`) REFERENCES `commande` (`NUMERO_COMMANDE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
