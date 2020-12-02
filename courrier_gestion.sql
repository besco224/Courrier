-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 08 fév. 2020 à 01:39
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `courrier_gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `ajout_courriers`
--

CREATE TABLE `ajout_courriers` (
  `id_courrier` int(11) NOT NULL,
  `numero` varchar(800) NOT NULL,
  `categorie` varchar(500) NOT NULL,
  `reference` varchar(800) NOT NULL,
  `confidentiel` varchar(800) NOT NULL,
  `initiateur` varchar(500) DEFAULT NULL,
  `expediteur` varchar(555) DEFAULT NULL,
  `destinataire` varchar(500) DEFAULT NULL,
  `priorite` varchar(800) NOT NULL,
  `objet` varchar(900) NOT NULL,
  `date_arriver` date NOT NULL,
  `date_courrier` date NOT NULL,
  `image` varchar(500) NOT NULL,
  `transmission` varchar(500) NOT NULL,
  `type_courrier` varchar(800) NOT NULL,
  `synthese` text NOT NULL,
  `date_limite` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ajout_courriers`
--

INSERT INTO `ajout_courriers` (`id_courrier`, `numero`, `categorie`, `reference`, `confidentiel`, `initiateur`, `expediteur`, `destinataire`, `priorite`, `objet`, `date_arriver`, `date_courrier`, `image`, `transmission`, `type_courrier`, `synthese`, `date_limite`, `updated_at`, `created_at`, `supprimer`) VALUES
(1, 'rere', 'arrive', 'ererr', 'oui', 'Modernisation du Système d\'Information', 'ereerdf', NULL, 'normal', 'rrrerre', '2020-02-04', '2020-02-04', '1580913762.png', '3', '11', 'hgghghhg', '2020-02-05', '2020-02-05 14:42:42', '2020-02-05 14:42:42', 0),
(2, 'gffgg22', 'arrive', 'gghgh', 'non', 'Modernisation du Système d\'Information', 'hhhhggh', NULL, 'urgent', 'gghgh', '2020-02-04', '2020-02-04', '1580913879.png', '3', '11', 'fgggfgfg', '2020-02-05', '2020-02-05 14:44:39', '2020-02-05 14:44:39', 0),
(3, 'gffgg22', 'arrive', 'gghgh', 'non', 'Modernisation du Système d\'Information', 'hhhhggh', NULL, 'urgent', 'gghgh', '2020-02-04', '2020-02-04', '1580913906.png', '3', '11', 'fgggfgfg', '2020-02-05', '2020-02-05 14:45:06', '2020-02-05 14:45:06', 0),
(4, 'ssdsd', 'depart', 'sssds', 'oui', 'Moricire Savane', NULL, 'ddd', 'normal', 'ssddd', '2020-02-04', '2020-02-04', '1580914517.png', '3', '12', 'fffgfgfgfg', '2020-02-21', '2020-02-05 14:55:17', '2020-02-05 14:55:17', 0),
(5, 'hhhjj', 'interne', 'hhjjhjh', 'oui', 'Moricire Savane', NULL, 'jhjhjj', 'normal', 'hhhjj', '2020-02-04', '2020-02-04', '1580914669.jpeg', '3', '8', 'Ousmane Cissé', '2022-05-25', '2020-02-05 14:57:49', '2020-02-05 14:57:49', 0);

-- --------------------------------------------------------

--
-- Structure de la table `configurations`
--

CREATE TABLE `configurations` (
  `id_configuration` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `yt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `editers`
--

CREATE TABLE `editers` (
  `id_texte` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(500) NOT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editers`
--

INSERT INTO `editers` (`id_texte`, `contenu`, `created_at`, `updated_at`, `prenom`, `supprimer`) VALUES
(2, '<p>Le plus grand DRH du MIPPP</p>', '2019-11-28 11:09:06', '2019-11-28 11:36:54', 'CAMARA OUSMANE CAMUS', 0);

-- --------------------------------------------------------

--
-- Structure de la table `parametres`
--

CREATE TABLE `parametres` (
  `id_parametre` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel1` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel2` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bp` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parametres`
--

INSERT INTO `parametres` (`id_parametre`, `logo`, `adresse`, `mail`, `tel1`, `tel2`, `bp`, `facebook`, `twitter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'logo.jpg', 'Parc des Expositions 12 route de Mirecourt 54500 Vandoeuvre-lès-Nancy', 'b', 'b', 'b', 'Parc des Expositions Siège Social 1 Place de la République, CS 60663 54063 Nancy Cedex', 'b', 'b', 'b', NULL, '2019-06-26 14:31:33');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `affichage` varchar(500) NOT NULL,
  `contenu` text NOT NULL,
  `hierarchie` varchar(500) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_service`, `nom`, `affichage`, `contenu`, `hierarchie`, `updated_at`, `created_at`, `supprimer`) VALUES
(6, 'Ousmane Cissé', 'Oui', '<p>Responsable des sevices de Modernisation du Syst&eacute;me informatique MIPPP</p>', 'Ministre', '2020-01-30 10:39:30', '2020-01-29 15:29:29', 0),
(7, 'Moricire Savane', 'Non', '<p>L&#39;homme de l&#39;Etat en Guin&eacute;e</p>', 'Secrétaire Générale', '2020-01-30 13:22:02', '2020-01-30 10:41:34', 0),
(8, 'Halima Bah', 'Oui', '<p>Secretaire Generale</p>', 'Ministre', '2020-02-06 12:33:24', '2020-01-30 10:53:41', 0),
(9, 'hgghgh', 'Non', '<p>ghggh</p>', 'Secrétaire Générale', '2020-02-06 12:30:46', '2020-02-06 12:30:46', 0),
(10, 'Modernisation du Système d\'information', 'Non', '<p>Syst&eacute;me Informatique</p>', 'Secrétaire Générale', '2020-02-06 12:32:11', '2020-02-06 12:32:11', 0);

-- --------------------------------------------------------

--
-- Structure de la table `text_sites`
--

CREATE TABLE `text_sites` (
  `id_text` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `text_sites`
--

INSERT INTO `text_sites` (`id_text`, `type`, `text`, `created_at`, `updated_at`) VALUES
(1, NULL, '<h3>Chers exposants, choisissez FIG!</h3>\r\n\r\n<p>La Foire Internationale de Nancy vous offre une occasion exceptionnelle pour&nbsp;:</p>\r\n\r\n<ul>\r\n	<li><strong>Toucher un potentiel de + de 108 000 clients</strong></li>\r\n	<li><strong>Booster votre chiffre d&rsquo;affaires</strong></li>\r\n	<li><strong>Rencontrer un public captif et de nouveaux prospects</strong></li>\r\n	<li><strong>Promouvez votre marque, vos produits, vos nouveaut&eacute;s</strong></li>\r\n	<li><strong>D&eacute;velopper gratuitement votre notori&eacute;t&eacute;</strong> <strong>gr&acirc;ce aux r&eacute;seaux sociaux et supports de communication de la Foire, aux articles quotidiens et interviews de la presse et des radios r&eacute;gionales, &agrave; une visibilit&eacute; sur le podium animation de la Foire.</strong></li>\r\n</ul>', NULL, '2019-06-25 15:35:37');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id_type` int(11) NOT NULL,
  `nom_type` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id_type`, `nom_type`, `status`, `updated_at`, `created_at`, `supprimer`) VALUES
(1, 'Courrier', 'Non', '2020-02-02 14:46:22', '2020-02-02 14:07:28', 1),
(2, 'Invitations du Ministre', 'Oui', '2020-02-02 14:41:16', '2020-02-02 14:08:55', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `actif` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `poste`, `service`, `remember_token`, `created_at`, `updated_at`, `actif`) VALUES
(11, 'ALIOU DIALLO', 'aliou.diallo@apipguinee.com', NULL, '$2y$10$tiZqn3kGGaPv/BSe8NHZr.5p1l/aZY0jpdN0Eil124H/l8nRX3gRW', 'Administrateur', 'Modernisation du Système d\'information', 'oJ5Ah6ReP1yT2XfRyih57fpPXMjZUl4ggmlQXA4CqzX2dt6qb0MUJpYIrByb', '2019-03-28 11:01:11', '2020-02-06 15:32:38', 0),
(17, 'Root', 'root@root.com', NULL, '$2y$10$UK6yANAvDxcgzYxdJK7eZuQUvTCDvskIKKt2wtHSLn9RNzT/z6ChS', 'Administrateur', '0', NULL, '2019-04-04 14:02:00', '2019-04-04 14:02:00', 0),
(18, 'Besco Cisse', 'ocisse@invest.gov.gn', NULL, '$2y$10$SEtZy6jH24LuWjAYgIXwP.oFYWoeHaEQraEaY95Ce7P4KpeZe/rg.', 'Administrateur', 'Modernisation du Système d\'information', '1x25NgEqRKwj7CQTygEmNOcezXPYPWMtErOt7ubYtg2bKHn8UwTJF0PhheHJ', '2019-09-18 10:14:49', '2020-02-06 15:34:09', 0),
(19, 'Ousmane Cisse', 'ocisse@invest.gov.gn', NULL, '$2y$10$0hMmDROiQ2HYwIO7mv37x.0HN52upnLhPO45787oLcnEXUyvIZVqy', 'Administrateur', '0', NULL, '2019-10-09 15:34:43', '2019-10-09 15:34:43', 0),
(20, 'Keita Fode', 'belamar300@gmail.com', NULL, '$2y$10$R2UReyJVE7qzsvzu2SytcOwjsj/eHukHC8CIFtCdt7xgzDG80xzzK', 'Simple', '0', 'GAJKpUX7Lpqm1rQUDT7mNfEQ9A8RR2WxipDPXSpTsCfhE2DEKvVjfkmFyaWH', '2019-12-05 13:08:49', '2019-12-05 13:08:49', 0),
(21, 'Moricire', 'msavane@invest.gov.gn', NULL, '$2y$10$DAciQWnyl5BULUe55qRMZ.MjPnOK7R858l2UyjUNuYggOJx3sxk1S', 'Administrateur', '0', NULL, '2020-01-23 10:08:14', '2020-01-23 10:08:14', 0),
(22, 'Ousmane Cisse', 'belamar300@gmail.com', NULL, '$2y$10$osFyP7uUk9e4PcLWi2LlneZu13VOrumJ.4YbgRcMd3CpCAoWFYxlW', 'Simple', '0', NULL, '2020-01-29 02:39:48', '2020-01-29 02:39:48', 0),
(23, 'Besco Diallo', 'belamar300@gmail.com', NULL, '$2y$10$OKu7dSKqdFMUxl9edkxQtuqpKqPCpWTn2Ef/ZNgvWtKpIw6vS1JFW', 'Administrateur', 'Halima Bah', NULL, '2020-02-06 13:46:13', '2020-02-06 15:02:07', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ajout_courriers`
--
ALTER TABLE `ajout_courriers`
  ADD PRIMARY KEY (`id_courrier`);

--
-- Index pour la table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id_configuration`);

--
-- Index pour la table `editers`
--
ALTER TABLE `editers`
  ADD PRIMARY KEY (`id_texte`);

--
-- Index pour la table `parametres`
--
ALTER TABLE `parametres`
  ADD PRIMARY KEY (`id_parametre`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`);

--
-- Index pour la table `text_sites`
--
ALTER TABLE `text_sites`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ajout_courriers`
--
ALTER TABLE `ajout_courriers`
  MODIFY `id_courrier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id_configuration` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `editers`
--
ALTER TABLE `editers`
  MODIFY `id_texte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `parametres`
--
ALTER TABLE `parametres`
  MODIFY `id_parametre` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `text_sites`
--
ALTER TABLE `text_sites`
  MODIFY `id_text` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
