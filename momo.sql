-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 28 nov. 2020 à 01:09
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

--
-- Déchargement des données de la table `ajout_courriers`
--

INSERT INTO `ajout_courriers` (`id_courrier`, `numero`, `categorie`, `reference`, `confidentiel`, `initiateur`, `expediteur`, `destinataire`, `priorite`, `objet`, `date_arriver`, `date_courrier`, `image`, `transmission`, `type_courrier`, `synthese`, `comment`, `commentaire`, `fichier`, `image2`, `traiter`, `clot`, `encour`, `user_name`, `user_service`, `direction_affecter`, `date_limite`, `date_limite2`, `date_affectation`, `annotation`, `affecter`, `archiver`, `numeroboite`, `anneearchiver`, `datearchive`, `user_archive`, `user_affecter`, `updated_at`, `created_at`, `supprimer`, `vu`) VALUES
(89, 'ffddfs', 'arrive', 'sdfsd', 'oui', NULL, NULL, NULL, 'normal', 'sdfsfd', '2020-08-02', '2020-08-02', '1596377668.pdf', 'Ministre', 'Invitations du Ministre', 'sfdfsfds', NULL, 'dsdsqd', NULL, NULL, NULL, NULL, 'Encour_traiter', 'Administrateur', 'Conseiller Principal', 'Conseiller Principal', '2020-08-02', '2020-08-02', NULL, '2503', 'affecter', NULL, NULL, NULL, NULL, NULL, 'Conseiller Principal', '2020-11-24 13:48:01', '2020-08-02 13:14:28', 0, 1),
(90, 'Dossier12522', 'arrive', '255/2020', 'oui', 'Conseiller Principal', 'momoousmane', NULL, 'normal', 'Solution', '2020-09-07', '2020-09-07', '1599483854.pdf', 'Ministre', 'Lettre d\'invitation', 'qsfgqfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 12:04:14', '2020-09-07 12:04:14', 0, 0),
(91, 'mii', 'arrive', 'hjjh', 'oui', 'Conseiller Principal', 'gfg', NULL, 'urgent', 'ghghg', '2020-09-07', '2020-09-07', '1599483989.pdf', 'Ministre', 'Lettre d\'invitation', 'vvbvb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-07 12:06:29', '2020-09-07 12:06:29', 0, 0),
(92, 'hgsgd', 'arrive', 'dsnds', 'non', 'Conseiller Principal', 'sdds', NULL, 'normal', 'sdsd', '2020-09-16', '2020-09-16', '1600252317.pdf', 'Ministre', 'Invitations du Ministre', 'dsnbbn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 09:31:57', '2020-09-16 09:31:57', 0, 0),
(93, 'gghghous', 'arrive', 'nbb', 'non', 'Conseiller Principal', 'dfgd', NULL, 'normal', 'ffgd', '2020-09-16', '2020-09-16', '1600252454.pdf', 'Ministre', 'Lettre d\'invitation', 'dfdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 09:34:14', '2020-09-16 09:34:14', 0, 0),
(94, 'lkklh', 'arrive', 'bbvb', 'oui', 'Conseiller Principal', 'hhh', NULL, 'normal', 'ghggh', '2020-09-16', '2020-09-16', '1600253887.pdf', 'Ministre', 'Lettre d\'invitation', 'bhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 09:58:07', '2020-09-16 09:58:07', 0, 0),
(95, '5255mml', 'arrive', 'gfd', 'non', 'Conseiller Principal', 'dfdg', NULL, 'urgent', 'dfgdf', '2020-09-16', '2020-09-16', '1600254038.pdf', 'Ministre', 'Invitations du Ministre', 'fddf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 10:00:38', '2020-09-16 10:00:38', 0, 0),
(96, 'jjkhh6525', 'arrive', 'ffgf', 'oui', 'Conseiller Principal', 'ggggf', NULL, 'normal', 'bvgg', '2020-09-16', '2020-09-16', '1600254653.pdf', 'Ministre', 'Invitations du Ministre', 'vgfgfgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 10:10:53', '2020-09-16 10:10:53', 0, 0),
(97, 'Diallo300', 'arrive', 'HHHH30', 'non', 'Conseiller Principal', 'ghsqg', NULL, 'normal', 'gfqsdgg', '2020-09-16', '2020-09-16', '1600259127.pdf', 'Ministre', 'Invitations du Ministre', 'wxxc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 11:25:27', '2020-09-16 11:25:27', 0, 0),
(98, 'mll52', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hghg', NULL, 'urgent', 'hghg', '2020-09-16', '2020-09-16', '1600259352.pdf', 'Ministre', 'Lettre d\'invitation', 'hhgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 11:29:12', '2020-09-16 11:29:12', 0, 0),
(99, 'nbnb', 'arrive', 'nbnb', 'non', 'Conseiller Principal', 'nbnb', NULL, 'urgent', 'nbb', '2020-09-16', '2020-09-16', '1600259602.pdf', 'Ministre', 'Invitations du Ministre', 'nbbbn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 11:33:22', '2020-09-16 11:33:22', 0, 0),
(100, 'nbnb', 'arrive', 'nbnb', 'non', 'Conseiller Principal', 'nbnb', NULL, 'urgent', 'nbb', '2020-09-16', '2020-09-16', '1600263337.pdf', 'Ministre', 'Invitations du Ministre', 'nbbbn', NULL, NULL, NULL, NULL, 'Courrier_traite', NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-05 07:15:25', '2020-09-16 12:35:37', 0, 0),
(101, '652MIPPP', 'arrive', '255/02/MIPPPl', 'oui', 'Conseiller Principal', 'momofd', NULL, 'normal', 'Methodologie', '2020-09-21', '2020-09-21', '1600688782.pdf', 'Ministre', 'Lettre d\'invitation', 'cxds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 10:46:22', '2020-09-21 10:46:22', 0, 0),
(102, '652MIPPP', 'arrive', '255/02/MIPPPl', 'oui', 'Conseiller Principal', 'momofd', NULL, 'normal', 'Methodologie', '2020-09-21', '2020-09-21', '1600688857.pdf', 'Ministre', 'Lettre d\'invitation', 'cxds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 10:47:37', '2020-09-21 10:47:37', 0, 0),
(103, 'lkl500', 'arrive', 'ml', 'non', 'Conseiller Principal', 'hgg', NULL, 'normal', 'gg', '2020-09-21', '2020-09-21', '1600690661.pdf', 'Ministre', 'Invitations du Ministre', 'fffgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 11:17:41', '2020-09-21 11:17:41', 0, 0),
(104, 'lkl500', 'arrive', 'ml', 'non', 'Conseiller Principal', 'hgg', NULL, 'normal', 'gg', '2020-09-21', '2020-09-21', '1600690797.pdf', 'Ministre', 'Invitations du Ministre', 'fffgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 11:19:57', '2020-09-21 11:19:57', 0, 0),
(105, 'lkl500', 'arrive', 'ml', 'non', 'Conseiller Principal', 'hgg', NULL, 'normal', 'gg', '2020-09-21', '2020-09-21', '1600691742.pdf', 'Ministre', 'Invitations du Ministre', 'fffgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 11:35:42', '2020-09-21 11:35:42', 0, 0),
(106, 'ghhg', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hhghg', NULL, 'tres_urgent', 'hghg', '2020-09-22', '2020-09-22', '1600763621.pdf', 'Ministre', 'Lettre d\'invitation', 'bhhhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22 07:33:41', '2020-09-22 07:33:41', 0, 0),
(107, 'ghhg', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hhghg', NULL, 'tres_urgent', 'hghg', '2020-09-22', '2020-09-22', '1600763775.pdf', 'Ministre', 'Lettre d\'invitation', 'bhhhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22 07:36:15', '2020-09-22 07:36:15', 0, 0),
(108, 'ghhg', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hhghg', NULL, 'tres_urgent', 'hghg', '2020-09-22', '2020-09-22', '1600764655.pdf', 'Ministre', 'Lettre d\'invitation', 'bhhhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22 07:50:55', '2020-09-22 07:50:55', 0, 0),
(109, 'ghhg', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hhghg', NULL, 'tres_urgent', 'hghg', '2020-09-22', '2020-09-22', '1600764883.pdf', 'Ministre', 'Lettre d\'invitation', 'bhhhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22 07:54:43', '2020-09-22 07:54:43', 0, 0),
(110, 'ghhg', 'arrive', 'hghg', 'non', 'Conseiller Principal', 'hhghg', NULL, 'tres_urgent', 'hghg', '2020-09-22', '2020-09-22', '1600766920.pdf', 'Ministre', 'Lettre d\'invitation', 'bhhhg', 'heff', NULL, NULL, NULL, 'Courrier_traite', NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 10:29:30', '2020-09-22 08:28:40', 0, 0),
(111, '5855/MIPP', 'arrive', 'hbgg', 'non', 'Conseiller Principal', 'hhjh', NULL, 'normal', 'hh', '2020-09-23', '2020-09-23', '1600858057.pdf', 'Ministre', 'Invitations du Ministre', 'bbnbn', NULL, NULL, NULL, NULL, 'Courrier_traite', NULL, NULL, 'Administrateur', 'Conseiller Principal', NULL, '2020-09-23', NULL, NULL, NULL, NULL, 'Courrier_archive', '5566', '2020', NULL, 'Conseiller Principal', NULL, '2020-11-26 10:37:40', '2020-09-23 09:47:37', 0, 0);

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
-- Structure de la table `courrier_services`
--

CREATE TABLE `courrier_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `courrier_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `annotation` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `rapports`
--

CREATE TABLE `rapports` (
  `id_rapport` int(11) NOT NULL,
  `typerapport` varchar(500) NOT NULL,
  `date_debut` date NOT NULL,
  `contenu` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rapports`
--

INSERT INTO `rapports` (`id_rapport`, `typerapport`, `date_debut`, `contenu`, `image`, `user_name`, `created_at`, `updated_at`, `supprimer`) VALUES
(1, 'Compte Rendu', '2020-09-01', 'Les USA', '1598950393.pdf', 'Administrateur', '2020-09-01 07:53:13', '2020-09-04 10:52:03', 0);

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
  `user_name` varchar(300) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_service`, `nom`, `affichage`, `contenu`, `hierarchie`, `user_name`, `updated_at`, `created_at`, `supprimer`) VALUES
(11, 'Assistante de la Secrétaire générale', 'Oui', '<p>Assistante de la Secr&eacute;taire g&eacute;n&eacute;rale</p>', 'Secrétaire Générale', '', '2020-02-25 09:35:32', '2020-02-25 09:35:32', 0),
(12, 'Inspecteur Générale Adjoint', 'Oui', '<table cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Inspecteur G&eacute;n&eacute;rale Adjoint</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'Cheffe Cabinet', '', '2020-02-25 09:41:17', '2020-02-25 09:41:17', 0),
(13, 'Directrice Adjointe du Bureau de Stratégie et de Développement', 'Oui', '<p>Directrice Adjointe du Bureau de Strat&eacute;gie et de D&eacute;veloppement</p>', 'Secrétaire Générale', '', '2020-04-08 20:35:11', '2020-02-25 09:42:44', 1),
(14, 'Directeur National Adjoint de la Promotion du Secteur Privé et de la compétitivité pays', 'Oui', '<p>Directeur National Adjoint de la Promotion du Secteur Priv&eacute; et de la comp&eacute;titivit&eacute; pays</p>', 'Secrétaire Générale', '', '2020-02-25 09:44:13', '2020-02-25 09:44:13', 0),
(15, 'Directeur National Adjoint des Investissements Privés et du contenu local', 'Oui', '<p>Directeur National Adjoint des Investissements Priv&eacute;s et du contenu local</p>', 'Secrétaire Générale', '', '2020-02-25 09:45:23', '2020-02-25 09:45:23', 0),
(16, 'Directeur National des Investissements Privés et du contenu local', 'Oui', '<p>Directeur National des Investissements Priv&eacute;s et du contenu local</p>', 'Secrétaire Générale', '', '2020-04-08 20:34:13', '2020-02-25 09:48:04', 1),
(17, 'Conseiller Principal', 'Oui', '<p>Conseiller Principal</p>', 'Cheffe Cabinet', 'Conseiller Principal', '2020-02-25 09:49:38', '2020-02-25 09:49:38', 0),
(18, 'Momoservice', 'Oui', 'Contenu', 'Secrétaire Générale', 'Conseiller Principal', '2020-08-28 12:35:36', '2020-08-28 12:35:36', 0);

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
-- Structure de la table `typerapports`
--

CREATE TABLE `typerapports` (
  `id_typerapport` int(11) NOT NULL,
  `nom_rapport` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supprimer` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typerapports`
--

INSERT INTO `typerapports` (`id_typerapport`, `nom_rapport`, `status`, `user_name`, `created_at`, `updated_at`, `supprimer`, `user_id`) VALUES
(3, 'Compte Rendu', 'Oui', 'Administrateur', '2020-08-29 07:26:55', '2020-09-03 09:00:20', 0, 43),
(4, 'Conférence de Presse', 'Oui', 'Administrateur', '2020-09-04 09:37:20', '2020-09-04 10:16:25', 0, 43);

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
(3, 'Lettre d\'invitation', 'Oui', '2020-03-09 09:17:14', '2020-03-09 09:17:14', 0),
(4, 'Demande de Stage', 'Oui', '2020-11-26 09:54:27', '2020-11-26 09:54:27', 0);

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
  `actif` int(11) NOT NULL DEFAULT '0',
  `service_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `poste`, `service`, `remember_token`, `created_at`, `updated_at`, `actif`, `service_id`) VALUES
(17, 'Root', 'root@root.com', NULL, '$2y$10$UK6yANAvDxcgzYxdJK7eZuQUvTCDvskIKKt2wtHSLn9RNzT/z6ChS', 'Administrateur', '0', NULL, '2019-04-04 14:02:00', '2019-04-04 14:02:00', 0, NULL),
(43, 'Administrateur', 'admin@gmail.com', NULL, '$2y$10$kDK/U/AUpac8AY9otLcS/eIVOdeYCm0hqsXFYwDf.p.cKqvQKpHZa', 'Administrateur', 'Conseiller Principal', 'Rc0RnqyPejBpxgqpi9w7IgCy4rHLeTLXFwAzV8uSv1AFpVsB6ZxVhcocamHK', '2020-07-20 00:32:00', '2020-11-26 10:43:38', 0, NULL),
(44, 'Ousmane', 'admin@gmail.com', NULL, '$2y$10$WWxtGFR5sThwSN5V5G783e3Awn/Kk1dKnXZcN4KrqEsZQInjeLXPS', 'Secretariat_central', 'Conseiller Principal', NULL, '2020-08-02 12:42:27', '2020-08-02 12:42:27', 0, NULL),
(45, 'Oumoune', 'oumou@invest.gov.gn', NULL, '$2y$10$dhqOT6Y42x3G/3OSrE4ww.R.doc8tH5VbmotdbgqXKC.c9APD.Lqm', 'Administrateur', 'Assistante de la Secrétaire générale', NULL, '2020-08-28 11:01:37', '2020-08-28 11:01:37', 0, NULL),
(46, 'Ousmane', 'diaby@invest.gov.gn', NULL, '$2y$10$ohO9K4rPkmdv0qFtshBJ8O2EFbh/7HZ1VJoNzFldF6zJSS6/xYdI6', 'Administrateur', 'Conseiller Principal', NULL, '2020-08-28 11:53:03', '2020-08-28 11:53:03', 0, NULL),
(47, 'Dalein', 'belamar300@gmail.com', NULL, '$2y$10$ckr/J7yhP43z.cSfXQHrVesjeIj01RRAO1Z/J3/BZ2O3qL/56mj66', 'Directeur', 'Conseiller Principal', 'tyfCIIMw86QoXjgCCLvEZaEWS6rXows2ThnWztEtZpOG8CzSrSA39fVWtJ0x', '2020-09-03 08:21:51', '2020-09-03 08:21:51', 0, NULL),
(48, 'Cissé Ousmane', 'momo@invest.gov.gn', NULL, '$2y$10$QyN0XILm35TJIHZBM/tmvO/wKC/t.axSzZ4IR7RMA/0e6urCQZQhu', 'Administrateur', 'Conseiller Principal', NULL, '2020-11-25 09:04:15', '2020-11-25 09:04:15', 0, NULL);

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
-- Index pour la table `courrier_services`
--
ALTER TABLE `courrier_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courrier_services_service_id_index` (`service_id`),
  ADD KEY `courrier_services_courrier_id_index` (`courrier_id`),
  ADD KEY `courrier_services_user_id_foreign` (`user_id`);

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
-- Index pour la table `rapports`
--
ALTER TABLE `rapports`
  ADD PRIMARY KEY (`id_rapport`);

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
-- Index pour la table `typerapports`
--
ALTER TABLE `typerapports`
  ADD PRIMARY KEY (`id_typerapport`);

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
  MODIFY `id_courrier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id_configuration` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `courrier_services`
--
ALTER TABLE `courrier_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT pour la table `rapports`
--
ALTER TABLE `rapports`
  MODIFY `id_rapport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `text_sites`
--
ALTER TABLE `text_sites`
  MODIFY `id_text` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `typerapports`
--
ALTER TABLE `typerapports`
  MODIFY `id_typerapport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
