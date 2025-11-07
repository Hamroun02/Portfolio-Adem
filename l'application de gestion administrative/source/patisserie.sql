-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 mai 2024 à 18:52
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `patisserie`
--

-- --------------------------------------------------------

--
-- Structure de la table `association_commande_produit`
--

CREATE TABLE `association_commande_produit` (
  `id_association` int(11) NOT NULL,
  `id_commande` int(11) DEFAULT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `association_commande_produit`
--

INSERT INTO `association_commande_produit` (`id_association`, `id_commande`, `id_produit`, `quantite`) VALUES
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 5, 3),
(4, 4, 7, 2),
(5, 5, 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_utilisateur`, `date`, `statut`) VALUES
(1, 1, '2024-04-24', 'En cours'),
(2, 2, '2024-04-24', 'En cours'),
(3, 3, '2024-04-24', 'En cours'),
(4, 4, '2024-04-24', 'En cours'),
(5, 5, '2024-04-24', 'En cours');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom`, `description`, `prix`, `quantite_stock`) VALUES
(1, 'Tarte aux Fruits', 'Délicieuse tarte garnie de fruits frais.', 15.99, 20),
(2, 'Éclair au Chocolat', 'Éclair moelleux au chocolat fondant.', 2.99, 50),
(3, 'Mille-feuille', 'Classique mille-feuille croustillant et crémeux.', 4.49, 30),
(4, 'Macaron', 'Macarons colorés et croquants garnis de ganache.', 1.49, 100),
(5, 'Tiramisu', 'Dessert italien à base de mascarpone et de café.', 6.99, 25),
(6, 'Croissant', 'Croissant au beurre doré et croustillant.', 1.99, 80),
(7, 'Chou à la Crème', 'Choux à la crème vanille ou chocolat.', 1.29, 60),
(8, 'Pain au Chocolat', 'Pain feuilleté au chocolat.', 2.49, 40),
(9, 'Tarte au Citron', 'Tarte acidulée garnie de crème au citron.', 3.99, 35),
(10, 'Éclair à la Vanille', 'Éclair à la vanille garni de crème pâtissière.', 2.99, 45);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id_reclamation` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id_reclamation`, `id_utilisateur`, `message`) VALUES
(1, 1, 'Le produit était endommagé à la livraison.'),
(2, 2, 'J\'ai reçu le mauvais produit.'),
(3, 3, 'Le produit était en retard.'),
(4, 4, 'La qualité du produit était insatisfaisante.'),
(5, 5, 'Le produit était manquant dans la commande.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `email`, `mot_de_passe`, `role`) VALUES
(1, 'Adem', 'Hamroun', 'adem.hamroun@esen.tn', 'adem1234', 'admin'),
(2, 'Khaled', 'Abdelatif', 'khaled.abdelatif@esen.tn', '123456789', 'admin'),
(3, 'Ali', 'Lahmer', 'ali.lahmer@esen.tn', 'abdjdch', 'user'),
(4, 'Amir', 'Lasfer', 'amir.lasfer@esen.tn', '0000000', 'user'),
(5, 'Ahmed', 'Benzarti', 'ahmed.benzarti@esen.tn', 'ahmed001', 'user'),
(6, 'Mohamed', 'Hamami', 'mohamed.hamami@esen.tn', 'mohamed1238', 'user'),
(7, 'Bayrem', 'Daas', 'bayrem.daas@esen.tn', 'bayrem@@', 'user'),
(8, 'Ghada', 'Hawari', 'ghada.hawari@esen.tn', 'ghada12345', 'user'),
(9, 'Haifa', 'Ben Salah', 'haifa.ben salah@esen.tn', 'haifa852', 'user'),
(10, 'Chayma', 'Ben Ali', 'chayma.ben ali@esen.tn', 'chayma123', 'user'),
(11, 'Salim', 'Ben Hamed', 'salim.Benhamed@esen.tn', 'salim002', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `association_commande_produit`
--
ALTER TABLE `association_commande_produit`
  ADD PRIMARY KEY (`id_association`),
  ADD KEY `id_commande` (`id_commande`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id_reclamation`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `association_commande_produit`
--
ALTER TABLE `association_commande_produit`
  ADD CONSTRAINT `association_commande_produit_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`),
  ADD CONSTRAINT `association_commande_produit_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
