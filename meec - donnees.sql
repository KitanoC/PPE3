-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mars 2020 à 10:40
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `meec`
--

--
-- Déchargement des données de la table `allee`
--

INSERT INTO `allee` (`numAllee`, `numQuai`) VALUES
('001', '001'),
('002', '001');

--
-- Déchargement des données de la table `conteneur`
--

INSERT INTO `conteneur` (`contCode`, `contType`, `tailCode`) VALUES
('33', 3, 3),
('52', 5, 2),
('22', 2, 2),
('41', 4, 1),
('21', 2, 1),
('23', 2, 3),
('42', 4, 2),
('12', 1, 2),
('31', 3, 1),
('11', 1, 1),
('13', 1, 3),
('32', 3, 2),
('51', 5, 1);

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`numEmp`, `numAllee`, `numQuai`) VALUES
('001', '001', '001'),
('001', '002', '001'),
('002', '001', '001'),
('002', '002', '001'),
('003', '001', '001'),
('003', '002', '001'),
('004', '001', '001'),
('004', '002', '001');

--
-- Déchargement des données de la table `leconteneur`
--

INSERT INTO `leconteneur` (`numCont`, `numCli`, `dateA`, `contCode`, `codePosition`) VALUES
('CSQU3054383', NULL, NULL, '41', '0010010040');

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`numPosition`, `numQuai`, `numAllee`, `numEmp`, `etage`, `numCont`) VALUES
('0010010043', '001', '001', '004', '3', NULL),
('0010010042', '001', '001', '004', '2', NULL),
('0010010041', '001', '001', '004', '1', NULL),
('0010010040', '001', '001', '004', '0', 'CSQU3054383'),
('0010010033', '001', '001', '003', '3', NULL),
('0010010032', '001', '001', '003', '2', NULL),
('0010010031', '001', '001', '003', '1', NULL),
('0010010030', '001', '001', '003', '0', NULL),
('0010010023', '001', '001', '002', '3', NULL),
('0010010022', '001', '001', '002', '2', NULL),
('0010010021', '001', '001', '002', '1', NULL),
('0010010020', '001', '001', '002', '0', NULL),
('0010010013', '001', '001', '001', '3', NULL),
('0010010012', '001', '001', '001', '2', NULL),
('0010010011', '001', '001', '001', '1', NULL),
('0010010010', '001', '001', '001', '0', NULL),
('0010020010', '001', '002', '001', '0', NULL),
('0010020011', '001', '002', '001', '1', NULL),
('0010020012', '001', '002', '001', '2', NULL),
('0010020013', '001', '002', '001', '3', NULL),
('0010020020', '001', '002', '002', '0', NULL),
('0010020021', '001', '002', '002', '1', NULL),
('0010020022', '001', '002', '002', '2', NULL),
('0010020023', '001', '002', '002', '3', NULL),
('0010020030', '001', '002', '003', '0', NULL),
('0010020031', '001', '002', '003', '1', NULL),
('0010020032', '001', '002', '003', '2', NULL),
('0010020033', '001', '002', '003', '3', NULL),
('0010020040', '001', '002', '004', '0', NULL),
('0010020041', '001', '002', '004', '1', NULL),
('0010020042', '001', '002', '004', '2', NULL),
('0010020043', '001', '002', '004', '3', NULL);

--
-- Déchargement des données de la table `quai`
--

INSERT INTO `quai` (`numQuai`) VALUES
('001');

--
-- Déchargement des données de la table `taille`
--

INSERT INTO `taille` (`tailCode`, `tailLong`, `tailLarg`, `tailHaut`) VALUES
(1, 20, 8, 8),
(2, 40, 8, 8),
(3, 40, 8, 9);

--
-- Déchargement des données de la table `typeconteneur`
--

INSERT INTO `typeconteneur` (`contType`, `typeLibel`) VALUES
(1, 'Classique'),
(2, 'Reefer'),
(3, 'Tank'),
(4, 'Open Top'),
(5, 'Flat-Rack');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
