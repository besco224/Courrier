-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 28 juil. 2020 à 14:41
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
-- Base de données :  `momo`
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
  `comment` text,
  `commentaire` text,
  `fichier` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `traiter` varchar(500) DEFAULT NULL,
  `clot` varchar(255) DEFAULT NULL,
  `encour` varchar(255) DEFAULT NULL,
  `user_name` varchar(500) NOT NULL,
  `user_service` varchar(255) NOT NULL,
  `direction_affecter` varchar(500) DEFAULT NULL,
  `date_limite` date NOT NULL,
  `date_limite2` date DEFAULT NULL,
  `date_affectation` timestamp NULL DEFAULT NULL,
  `annotation` varchar(500) DEFAULT NULL,
  `affecter` varchar(500) DEFAULT NULL,
  `archiver` varchar(500) DEFAULT NULL,
  `numeroboite` varchar(255) DEFAULT NULL,
  `anneearchiver` varchar(255) DEFAULT NULL,
  `datearchive` timestamp NULL DEFAULT NULL,
  `user_archive` varchar(255) DEFAULT NULL,
  `user_affecter` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supprimer` int(11) NOT NULL DEFAULT '0',
  `vu` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id_personnel` int(11) NOT NULL,
  `matricule` varchar(500) NOT NULL,
  `categorie` varchar(2500) NOT NULL,
  `nom` varchar(500) NOT NULL,
  `prenom` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `fonction` varchar(500) NOT NULL,
  `service` varchar(500) NOT NULL,
  `profile` varchar(500) NOT NULL,
  `hierarchie` varchar(500) DEFAULT NULL,
  `corps` varchar(500) NOT NULL,
  `numeroacte` varchar(500) DEFAULT NULL,
  `acteengagement` varchar(500) DEFAULT NULL,
  `anneenaissance` date NOT NULL,
  `anneeretraite` date NOT NULL,
  `anciennete` varchar(500) DEFAULT NULL,
  `tel` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `dateengagement` varchar(255) DEFAULT NULL,
  `lieu` varchar(255) NOT NULL,
  `situationmatrimonial` varchar(255) NOT NULL,
  `nompere` varchar(255) NOT NULL,
  `nommere` varchar(255) NOT NULL,
  `grade` varchar(500) DEFAULT NULL,
  `echelon` varchar(500) DEFAULT NULL,
  `indice` varchar(500) DEFAULT NULL,
  `positionstatus` varchar(500) DEFAULT NULL,
  `mappartenance` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(11, 'Assistante de la Secrétaire générale', 'Oui', '<p>Assistante de la Secr&eacute;taire g&eacute;n&eacute;rale</p>', 'Secrétaire Générale', '2020-02-25 09:35:32', '2020-02-25 09:35:32', 0),
(12, 'Inspecteur Générale Adjoint', 'Oui', '<table cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Inspecteur G&eacute;n&eacute;rale Adjoint</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'Cheffe Cabinet', '2020-02-25 09:41:17', '2020-02-25 09:41:17', 0),
(13, 'Directrice Adjointe du Bureau de Stratégie et de Développement', 'Oui', '<p>Directrice Adjointe du Bureau de Strat&eacute;gie et de D&eacute;veloppement</p>', 'Secrétaire Générale', '2020-04-08 20:35:11', '2020-02-25 09:42:44', 1),
(14, 'Directeur National Adjoint de la Promotion du Secteur Privé et de la compétitivité pays', 'Oui', '<p>Directeur National Adjoint de la Promotion du Secteur Priv&eacute; et de la comp&eacute;titivit&eacute; pays</p>', 'Secrétaire Générale', '2020-02-25 09:44:13', '2020-02-25 09:44:13', 0),
(15, 'Directeur National Adjoint des Investissements Privés et du contenu local', 'Oui', '<p>Directeur National Adjoint des Investissements Priv&eacute;s et du contenu local</p>', 'Secrétaire Générale', '2020-02-25 09:45:23', '2020-02-25 09:45:23', 0),
(16, 'Directeur National des Investissements Privés et du contenu local', 'Oui', '<p>Directeur National des Investissements Priv&eacute;s et du contenu local</p>', 'Secrétaire Générale', '2020-04-08 20:34:13', '2020-02-25 09:48:04', 1),
(17, 'Conseiller Principal', 'Oui', '<p>Conseiller Principal</p>', 'Cheffe Cabinet', '2020-02-25 09:49:38', '2020-02-25 09:49:38', 0);

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
(2, 'Invitations du Ministre', 'Oui', '2020-02-02 14:41:16', '2020-02-02 14:08:55', 0),
(3, 'Lettre d\'invitation', 'Oui', '2020-03-09 09:17:14', '2020-03-09 09:17:14', 0);

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
(17, 'Root', 'root@root.com', NULL, '$2y$10$UK6yANAvDxcgzYxdJK7eZuQUvTCDvskIKKt2wtHSLn9RNzT/z6ChS', 'Administrateur', '0', NULL, '2019-04-04 14:02:00', '2019-04-04 14:02:00', 0),
(43, 'Administrateur', 'admin@gmail.com', NULL, '$2y$10$kDK/U/AUpac8AY9otLcS/eIVOdeYCm0hqsXFYwDf.p.cKqvQKpHZa', 'Administrateur', 'Conseiller Principal', 'rMAzYOPNhxIGPH4lwmcGDHDD6lzDyYXhvxzdtJUpvCxfJw6yBTZWuo7IBbMH', '2020-07-20 00:32:00', '2020-07-20 00:32:00', 0);

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
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id_personnel`);

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
  MODIFY `id_courrier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id_personnel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `text_sites`
--
ALTER TABLE `text_sites`
  MODIFY `id_text` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
