-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2021 at 09:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sn31q_infovoyage`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajoute`
--

CREATE TABLE `ajoute` (
  `IdLieu` int(11) NOT NULL,
  `IdUtilisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lieu`
--

CREATE TABLE `lieu` (
  `IdLieu` int(11) NOT NULL,
  `NomLieu` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `idP` varchar(50) NOT NULL,
  `UserNote` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lieu`
--

INSERT INTO `lieu` (`IdLieu`, `NomLieu`, `Description`, `Image`, `idP`, `UserNote`) VALUES
(1, 'Tour eiffel', 'La tour Eiffel est une tour de fer puddlé de 324 mètres de hauteur située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars en bordure de la Seine dans le 7ᵉ arrondissement. Son adresse officielle est 5, avenue Anatole-France.', 'eiffel.jpg', 'FR', 5),
(4, 'Mont saint michel', 'Le Mont-Saint-Michel est une commune française située dans le département de la Manche en Normandie. Elle tire son nom de l\'îlot rocheux consacré à saint Michel où s’élève aujourd’hui l’abbaye du Mont-Saint-Michel.', 'stmichel.jpg', 'FR', 4),
(5, 'Musée du Louvre', 'Le musée du Louvre est un musée situé dans le 1ᵉʳ arrondissement de Paris, en France. Une préfiguration en est imaginée en 1775-1776 par le comte d\'Angiviller, directeur général des Bâtiments du roi, comme lieu de présentation des chefs-d\'œuvre de la collection de la Couronne.', 'louvre.jpg', 'FR', 5);

-- --------------------------------------------------------

--
-- Table structure for table `modifie`
--

CREATE TABLE `modifie` (
  `IdLieu` int(11) NOT NULL,
  `IdUtilisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` varchar(2) NOT NULL,
  `NomPays` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `NomPays`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats arabes unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Åland, Îles'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BL', 'Saint-Barthélémy'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie, État Plurinational de'),
('BQ', 'Bonaire, Saint-Eustache et Saba'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Bouvet, Île'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling), Îles'),
('CD', 'République démocratique du Congo'),
('CF', 'Centrafricaine, République'),
('CG', 'Congo'),
('CH', 'Suisse'),
('CI', 'Côte dIvoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CU', 'Cuba'),
('CV', 'Cap-Vert'),
('CW', 'Curaçao'),
('CX', 'Christmas, Île'),
('CY', 'Chypre'),
('CZ', 'Tchèque, République'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'Dominicaine, République'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Falkland, Îles (Malvinas)'),
('FM', 'Micronésie, États Fédérés de'),
('FO', 'Féroé, Îles'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GG', 'Guernesey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'R.A.S. chinoise de Hong Kong'),
('HM', 'Heard et MacDonald, Îles'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Océan Indien, Territoire Britannique de L\''),
('IQ', 'Irak'),
('IR', 'Iran, République Islamique d\''),
('IS', 'Islande'),
('IT', 'Italie'),
('JE', 'Jersey'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'Corée, République Populaire Démocratique de'),
('KR', 'Corée, République de'),
('KW', 'Koweït'),
('KY', 'Caïmanes, Îles'),
('KZ', 'Kazakhstan'),
('LA', 'Lao, République Démocratique Populaire'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Libye'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'Moldavie'),
('ME', 'Monténégro'),
('MF', 'Saint-Martin (Partie Française)'),
('MG', 'Madagascar'),
('MH', 'Marshall, Îles'),
('MK', 'Macédoine, L\'ex-république Yougoslave de'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'R.A.S. chinoise de Macao'),
('MP', 'Mariannes du Nord, Îles'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Norfolk, Île'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'État de Palestine'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RS', 'Serbie'),
('RU', 'Russie, Fédération de'),
('RW', 'Rwanda'),
('SA', 'Arabie saoudite'),
('SB', 'Salomon, Îles'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard et Île Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('SS', 'Soudan du Sud'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SX', 'Saint-Martin (Partie Néerlandaise)'),
('SY', 'Syrienne, République Arabe'),
('SZ', 'Swaziland'),
('TC', 'Turks et Caïques, Îles'),
('TD', 'Tchad'),
('TF', 'Terres australes françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan, Province de Chine'),
('TZ', 'Tanzanie, République Unie de'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles mineures éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'État de la Cité du Vatican'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela, République Bolivarienne du'),
('VG', 'Îles Vierges britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viêt Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis-et-Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `COL 1` varchar(4) DEFAULT NULL,
  `COL 2` varchar(43) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`COL 1`, `COL 2`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats arabes unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Åland, Îles'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BL', 'Saint-Barthélémy'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie, État Plurinational de'),
('BQ', 'Bonaire, Saint-Eustache et Saba'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Bouvet, Île'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling), Îles'),
('CD', 'République démocratique du Congo'),
('CF', 'Centrafricaine, République'),
('CG', 'Congo'),
('CH', 'Suisse'),
('CI', 'Côte dIvoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CU', 'Cuba'),
('CV', 'Cap-Vert'),
('CW', 'Curaçao'),
('CX', 'Christmas, Île'),
('CY', 'Chypre'),
('CZ', 'Tchèque, République'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'Dominicaine, République'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Falkland, Îles (Malvinas)'),
('FM', 'Micronésie, États Fédérés de'),
('FO', 'Féroé, Îles'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GG', 'Guernesey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'R.A.S. chinoise de Hong Kong'),
('HM', 'Heard et MacDonald, Îles'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Océan Indien, Territoire Britannique de L\''),
('IQ', 'Irak'),
('IR', 'Iran, République Islamique d\''),
('IS', 'Islande'),
('IT', 'Italie'),
('JE', 'Jersey'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'Corée, République Populaire Démocratique de'),
('KR', 'Corée, République de'),
('KW', 'Koweït'),
('KY', 'Caïmanes, Îles'),
('KZ', 'Kazakhstan'),
('LA', 'Lao, République Démocratique Populaire'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Libye'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'Moldavie'),
('ME', 'Monténégro'),
('MF', 'Saint-Martin (Partie Française)'),
('MG', 'Madagascar'),
('MH', 'Marshall, Îles'),
('MK', 'Macédoine, L\'ex-république Yougoslave de'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'R.A.S. chinoise de Macao'),
('MP', 'Mariannes du Nord, Îles'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Norfolk, Île'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'État de Palestine'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RS', 'Serbie'),
('RU', 'Russie, Fédération de'),
('RW', 'Rwanda'),
('SA', 'Arabie saoudite'),
('SB', 'Salomon, Îles'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard et Île Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('SS', 'Soudan du Sud'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SX', 'Saint-Martin (Partie Néerlandaise)'),
('SY', 'Syrienne, République Arabe'),
('SZ', 'Swaziland'),
('TC', 'Turks et Caïques, Îles'),
('TD', 'Tchad'),
('TF', 'Terres australes françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan, Province de Chine'),
('TZ', 'Tanzanie, République Unie de'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles mineures éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'État de la Cité du Vatican'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela, République Bolivarienne du'),
('VG', 'Îles Vierges britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viêt Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis-et-Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `login`, `nom`, `prenom`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@mail.com', '098f6bcd4621d373cade4e832627b4f6', 'admin'),
(2, 'juju', 'dechau', 'julien', 'juju@email.com', '0348dcd774a2892097b9d5c84ce882d3', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajoute`
--
ALTER TABLE `ajoute`
  ADD PRIMARY KEY (`IdLieu`,`IdUtilisateur`),
  ADD KEY `IdUtilisateur` (`IdUtilisateur`);

--
-- Indexes for table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`IdLieu`),
  ADD KEY `idP` (`idP`);

--
-- Indexes for table `modifie`
--
ALTER TABLE `modifie`
  ADD PRIMARY KEY (`IdLieu`,`IdUtilisateur`),
  ADD KEY `IdUtilisateur` (`IdUtilisateur`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `IdLieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
