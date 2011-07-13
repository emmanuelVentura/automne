-- --------------------------------------------------------

--
-- Structure de la table `actionsTimestamps`
--

DROP TABLE IF EXISTS `actionsTimestamps`;
CREATE TABLE `actionsTimestamps` (
  `type_at` varchar(50) NOT NULL default '',
  `date_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `module_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `actionsTimestamps`
--

-- --------------------------------------------------------

--
-- Structure de la table `blocksFiles_archived`
--

DROP TABLE IF EXISTS `blocksFiles_archived`;
CREATE TABLE `blocksFiles_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFiles_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFiles_deleted`
--

DROP TABLE IF EXISTS `blocksFiles_deleted`;
CREATE TABLE `blocksFiles_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFiles_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFiles_edited`
--

DROP TABLE IF EXISTS `blocksFiles_edited`;
CREATE TABLE `blocksFiles_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFiles_edited`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFiles_edition`
--

DROP TABLE IF EXISTS `blocksFiles_edition`;
CREATE TABLE `blocksFiles_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFiles_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFiles_public`
--

DROP TABLE IF EXISTS `blocksFiles_public`;
CREATE TABLE `blocksFiles_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFiles_public`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFlashes_archived`
--

DROP TABLE IF EXISTS `blocksFlashes_archived`;
CREATE TABLE `blocksFlashes_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `width` int(4) unsigned NOT NULL default '200',
  `height` int(4) unsigned NOT NULL default '100',
  `name` varchar(100) NOT NULL default '',
  `version` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `flashvars` text NOT NULL,
  `attributes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFlashes_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFlashes_deleted`
--

DROP TABLE IF EXISTS `blocksFlashes_deleted`;
CREATE TABLE `blocksFlashes_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `width` int(4) unsigned NOT NULL default '200',
  `height` int(4) unsigned NOT NULL default '100',
  `name` varchar(100) NOT NULL default '',
  `version` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `flashvars` text NOT NULL,
  `attributes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFlashes_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFlashes_edited`
--

DROP TABLE IF EXISTS `blocksFlashes_edited`;
CREATE TABLE `blocksFlashes_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `width` int(4) unsigned NOT NULL default '200',
  `height` int(4) unsigned NOT NULL default '100',
  `name` varchar(100) NOT NULL default '',
  `version` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `flashvars` text NOT NULL,
  `attributes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFlashes_edited`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFlashes_edition`
--

DROP TABLE IF EXISTS `blocksFlashes_edition`;
CREATE TABLE `blocksFlashes_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `width` int(4) unsigned NOT NULL default '200',
  `height` int(4) unsigned NOT NULL default '100',
  `name` varchar(100) NOT NULL default '',
  `version` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `flashvars` text NOT NULL,
  `attributes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFlashes_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksFlashes_public`
--

DROP TABLE IF EXISTS `blocksFlashes_public`;
CREATE TABLE `blocksFlashes_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `width` int(4) unsigned NOT NULL default '200',
  `height` int(4) unsigned NOT NULL default '100',
  `name` varchar(100) NOT NULL default '',
  `version` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `flashvars` text NOT NULL,
  `attributes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksFlashes_public`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksImages_archived`
--

DROP TABLE IF EXISTS `blocksImages_archived`;
CREATE TABLE `blocksImages_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `enlargedFile` varchar(255) NOT NULL default '',
  `externalLink` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksImages_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksImages_deleted`
--

DROP TABLE IF EXISTS `blocksImages_deleted`;
CREATE TABLE `blocksImages_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `enlargedFile` varchar(255) NOT NULL default '',
  `externalLink` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksImages_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksImages_edited`
--

DROP TABLE IF EXISTS `blocksImages_edited`;
CREATE TABLE `blocksImages_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `enlargedFile` varchar(255) NOT NULL default '',
  `externalLink` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `label` (`label`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksImages_edited`
--

INSERT INTO `blocksImages_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `label`, `file`, `enlargedFile`, `externalLink`) VALUES(4, 3, 'first', 'a132ad8e6542489be399526940001ee82', 'image', '', 'p3_7333fffc806233ad382709b1af305da0Nenuphars.png', '', '0||||_top||0,0|');

-- --------------------------------------------------------

--
-- Structure de la table `blocksImages_edition`
--

DROP TABLE IF EXISTS `blocksImages_edition`;
CREATE TABLE `blocksImages_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `enlargedFile` varchar(255) NOT NULL default '',
  `externalLink` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksImages_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksImages_public`
--

DROP TABLE IF EXISTS `blocksImages_public`;
CREATE TABLE `blocksImages_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `file` varchar(255) NOT NULL default '',
  `enlargedFile` varchar(255) NOT NULL default '',
  `externalLink` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `label` (`label`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksImages_public`
--

INSERT INTO `blocksImages_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `label`, `file`, `enlargedFile`, `externalLink`) VALUES(4, 3, 'first', 'a132ad8e6542489be399526940001ee82', 'image', '', 'p3_7333fffc806233ad382709b1af305da0Nenuphars.png', '', '0||||_top||0,0|');

-- --------------------------------------------------------

--
-- Structure de la table `blocksRawDatas_archived`
--

DROP TABLE IF EXISTS `blocksRawDatas_archived`;
CREATE TABLE `blocksRawDatas_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksRawDatas_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksRawDatas_deleted`
--

DROP TABLE IF EXISTS `blocksRawDatas_deleted`;
CREATE TABLE `blocksRawDatas_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksRawDatas_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksRawDatas_edited`
--

DROP TABLE IF EXISTS `blocksRawDatas_edited`;
CREATE TABLE `blocksRawDatas_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksRawDatas_edited`
--

INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(1, 24, 'first', 'a4ed02469a210827de89cd64d2bb8b35', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"48";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(23, 30, 'first', '61cbcc65130ccda86b96e663734ab490', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"52";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(7, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"25";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"26";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(9, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"27";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(10, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"28";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(22, 29, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"45";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(14, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"39";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(15, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"37";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(12, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"38";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(18, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"35";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(20, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"51";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(2, 2, 'first', '0dd66805b82fd392344cf9a535159768', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"49";}}}');

-- --------------------------------------------------------

--
-- Structure de la table `blocksRawDatas_edition`
--

DROP TABLE IF EXISTS `blocksRawDatas_edition`;
CREATE TABLE `blocksRawDatas_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksRawDatas_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksRawDatas_public`
--

DROP TABLE IF EXISTS `blocksRawDatas_public`;
CREATE TABLE `blocksRawDatas_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksRawDatas_public`
--

INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(1, 24, 'first', 'a4ed02469a210827de89cd64d2bb8b35', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"48";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(23, 30, 'first', '61cbcc65130ccda86b96e663734ab490', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"52";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(7, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"25";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"26";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(9, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"27";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(10, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"28";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(22, 29, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"45";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(12, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"38";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(15, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"37";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(14, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"39";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(20, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"51";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(18, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"35";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(2, 2, 'first', '0dd66805b82fd392344cf9a535159768', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"49";}}}');

-- --------------------------------------------------------

--
-- Structure de la table `blocksTexts_archived`
--

DROP TABLE IF EXISTS `blocksTexts_archived`;
CREATE TABLE `blocksTexts_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksTexts_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksTexts_deleted`
--

DROP TABLE IF EXISTS `blocksTexts_deleted`;
CREATE TABLE `blocksTexts_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksTexts_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksTexts_edited`
--

DROP TABLE IF EXISTS `blocksTexts_edited`;
CREATE TABLE `blocksTexts_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksTexts_edited`
--

INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(567, 9, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 'texte', '<p>Ce formulaire vous permet d''envoyer une demande de contact. Pour le transformer (Champs, actions, email de destination), modifiez le dans les propriétés du module "Formulaire".</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(653, 9, 'first', 'd227e9c886232aa6c2bbbddb2b348ad4', 'texte', '<p>&#160;Automne est un CMS open-source français édité par l''agence <a target="_blank" href="http://www.ws-interactive.fr">WS Interactive</a>.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(642, 26, 'first', 'd9357a8e2eaabff878edd590a3390747', 'texte', '<p>Les rangées de contenu sont les gabarits qui vont contenir l’information. Elles peuvent recevoir tous types de contenu : texte, image, flash, vidéo… Par exemple, des rangées titres, sous-titres, textes, textes et média sont certaines des rangées par défaut d''Automne.</p>\n<p>Une rangée est pré-formatée. Cela permet de conserver l''homogénéité de la présentation du site Internet.<b><br />\n</b></p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(647, 26, 'first', '8bcb8cc07038c43efc0b850a5e120569', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(651, 26, 'first', 'efa99bdc885c7e3d486c9073dd4b3ea5', 'texte', '<p>&#160;L''organisation des rangées dans une page est particulièrement simple. Vous pouvez les glisser-déposer à l''endroit ou vous le souhaitez.</p>\n<p>Les zones de saisies sont clairement indiquées et vous pouvez modifier l''ensemble du contenu très simplement à l''aide d''outils de mise en forme très intuitifs : mise en forme des textes à l''aide de l''éditeur WYSIWYG, redimensionner et recadrer des images, créer des liens vers d''autres sites ou vers une page donnée de votre site.</p>\n<p>Vous pouvez même décider d''importer le contenu de vos modules à n''importe quel endroit de vos textes. Si le contenu du module vient à disparaitre (suppression, dépublication, ...), il disparaitra simplement et sans erreur de tous les textes ou vous y faite référence.</p>\n<p><strong>Créez vos propres rangées avec le type d’information et la présentation que vous souhaitez.</strong></p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(660, 27, 'first', '4564d92b193505d71f29b5ae69dddde0', 'texte', '<h2>Modules en PHP</h2>\n<p>Grâce à l''<a target="_blank" href="http://www.automne-cms.org/api/">API d''Automne</a>&#160;vous pouvez aussi développer des modules plus complexes que le Polymod ne saurait traiter.</p>\n<p>Ces modules, créés en PHP peuvent alors réaliser tout type d''opération métier complexe en s''intégrant parfaitement à l''interface d''Automne.</p>\n<p>Vous pouvez ainsi lier Automne à vos bases de données métier ou encore créer des modules de mailing, d''e-commerce, interroger des web services distants et ajouter bien d''autres fonctionnalités encore.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(593, 27, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 'texte', '<p>Créer ou installez des modules supplémentaires pour ajouter des fonctionnalités propres aux besoins de chaque site.</p>\n<p>Par défaut Automne contient les modules les plus courants : &#160;actualités, médiathèque,&#160;formulaires ou création d''URLs courtes avec le module Alias par exemple.</p>\n<p><strong>Grâce au générateur d''application intégré, ajoutez autant de modules supplémentaires que vous le souhaitez.</strong></p>\n<h2>Le générateur de modules</h2>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(591, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'texte', '<p>Une des particularités d’Automne est son générateur de module intégré appelé <abbr title="Polymorphic Module">Polymod</abbr>.</p>\n<p>L''assistant de création de module vous permet de créer des structures personnalisées et de relier plusieurs objets entre eux (comme une actualité et un commentaire par exemple).</p>\n<p>La création de la structure des objets de vos modules se fait entièrement via l''interface de gestion des modules d''Automne, sans écrire la moindre ligne de code. Et ce n''est pas tout, Automne génère ensuite l''interface d''administration correspondante de manière entièrement automatisée. Toujours pas la moindre ligne de PHP à écrire alors que vous pouvez déjà commencer à insérer des données dans vos modules.&#160;</p>\n<p>La gestion de l''affichage de vos modules se fait ensuite via des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenus</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenus</a></htmltemplate></display></atm-linx> en utilisant les balises XML d''Automne.</p>\n<p>Exemple :&#160; les modules <atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>Actualités</noselection><display><htmltemplate><a  href="{{href}}">Actualités</a></htmltemplate></display></atm-linx> et <atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>Médiathèque</noselection><display><htmltemplate><a  href="{{href}}">Médiathèque</a></htmltemplate></display></atm-linx> fourni dans cette démonstration ont été entièrement créés à partir du générateur de modules d''Automne. Ils peuvent être modifiés pour être ajustés à ce que vous souhaitez de très simplement.</p>\n<p>Il est donc facile de créer ses propres modules à l''aide du Polymod et de les partager ensuite avec la communauté.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(192, 5, 'first', '68a1b1d8a072af0eb92f6392eb309ad1', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(667, 3, 'first', '9110334505c2e7ace9a292686b89c405', 'texte', '<p>Si vous disposez d''un compte <strong>« Administrateur »</strong>, alors vous avez la possibilité de tout transformer sur cette démonstration, par exemple :</p>\n<ul>\n    <li>administrer les modules ;</li>\n    <li>valider la modification des pages ;</li>\n    <li>modifier les rangées et les modèles de page ;</li>\n    <li>modifier les paramètres d''Automne,</li>\n    <li>gérer les utilisateurs,&#160;</li>\n    <li>et bien d''autres choses &#160;...</li>\n</ul>\n<h2>Continuer la visite</h2>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="29"/></start></selection><noselection>Automne</noselection><display><htmltemplate><a  href="{{href}}">Automne</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="33"/></start></selection><noselection>Nouveautés</noselection><display><htmltemplate><a  href="{{href}}">Nouveautés</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="30"/></start></selection><noselection>Pré-requis</noselection><display><htmltemplate><a  href="{{href}}">Pré-requis</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>Fonctionnalités</noselection><display><htmltemplate><a  href="{{href}}">Fonctionnalités</a></htmltemplate></display></atm-linx></li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(633, 3, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(665, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'texte', '<p>Vous êtes sur le site de démonstration d''Automne qui a pour but de vous présenter les grands principes et la philosophie de ce CMS orienté utilisateur.</p>\n<p>Cette démonstration ne vous permet d''avoir accès qu''à une partie des possibilités offertes par Automne, pour avoir un aperçu complet des fonctionnalités, nous vous invitons à <a target="_blank" href="http://www.automne-cms.org/web/fr/242-telechargements.php">télécharger</a> et à installer Automne.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(625, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'texte', '<p>Automne intègre&#160;<strong>un puissant moteur de recherche</strong>&#160;qui&#160;vous permet de rechercher sur l''ensemble des contenus et des éléments, quel que soit leurs type : &#160;contenus des pages ou des modules, utilisateurs, modèles, etc.</p>\n<p>De plus, les résultats retournés sont fonction des droits de l''utilisateur.&#160;Celui-ci s''avère vite indispensable à l''usage et vous fera gagner un temps précieux dans la gestion de vos sites.</p>\n<p>Chaque module possède un moteur de recherche spécifique avec des filtres par mots-clés ou n''importe quel autre type de champs.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(612, 38, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(615, 38, 'first', '27253551d67fd5f23b3269719a3f5364', 'texte', '<p>Grâce à l''aide contextuelle intégrée, le moindre bouton de l''interface n''aura plus de secret pour vous. Nous avons fait en sorte d''expliciter la fonction de chacun d''entre eux afin que vous ne posiez plus de questions.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(619, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'texte', '<p>Nous avons aussi intégré <strong>une aide technique pour vous assister</strong> dans la création de modèles de pages, de rangées de contenus et de modules.</p>\n<p>Cette aide détaille entre autres la fonction et la syntaxe des différentes balises XML mais aussi les variables à votre disposition pour les modèles de page ou les rangées.</p>\n<p>Une <strong>aide spécifique à chaque module</strong> crée avec le générateur&#160;<atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Polymod</noselection><display><htmltemplate><a  href="{{href}}">Polymod</a></htmltemplate></display></atm-linx> est également générée. Elle se révèle particulièrement utile lors de la création des rangées de contenus associés pour avoir facilement accès aux variables et aux différentes fonctions offertes par Automne.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(605, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'texte', '<p>Il existe trois types de droits fondamentaux :</p>\n<ul>\n    <li>Le droit d''écriture qui équivaut à un&#160;droit d''administration ;</li>\n    <li>Le droit de lecture qui équivaut à un droit de visibilité ;</li>\n    <li>Aucun droit, ce qui empêche un utilisateurs d''avoir accès à un contenu.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(606, 35, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 'texte', '<p>Automne dispose d''un <strong>système intelligent de gestion des droits des utilisateurs.</strong> Il permet une gestion fine des droits, tant dans les différentes pages que dans les contenus des différents modules. Ce système permet d''appliquer l''ensemble de ces droits sur tout types d''éléments gérés par Automne.</p>\n<p>Ces droits peuvent être attribués sur les pages mais aussi sur les modules, les modèles de pages, les rangées de contenu et sur les différentes actions d''administration. L''ensemble de ces droits sont applicables aux utilisateurs et aux groupes d''utilisateurs ayant accès au site.</p>\n<p>Il existe un droit particulier intitulé <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>droit de validation.</noselection><display><htmltemplate><a  href="{{href}}">droit de validation.</a></htmltemplate></display></atm-linx>&#160;Ce droit permet de donner à l''utilisateur la possibilité de valider le travail des autres utilisateurs pour publier le contenu sur le site en ligne.</p>\n<p>Exemple :</p>\n<ul>\n    <li><em>L''utilisateur A peut avoir des droits d''administration sur certaines pages et un droit limité sur les modèles de pages, ce qui lui permettra de ne créer que des pages utilisant les modèles qu''il peut utiliser.</em></li>\n    <li><em>L''utilisateur B peut avoir les droits d''administration sur la partie française des actualités et uniquement le droit de visibilité sur la partie anglaise des. Il ne pourra ainsi modifier que les actualités Française du site.</em></li>\n    <li><em>L''utilisateur C peut avoir les droits d''administrations sur le module médiathèque mais aucun droit sur les actualités et les pages du site. Il ne pourra donc que gérer les éléments de la médiathèque que d''autres utilisateurs pourront ensuite utiliser dans les actualités ou les pages du site.</em></li>\n</ul>\n<p>Bien entendu vous pouvez spécifier finement tous les droits que vous souhaitez et vous pouvez même <strong>créer des groupes d''utilisateur comportant des droits spécifiques</strong> qui seront additionné aux utilisateurs appartenant à différents groupes.</p>\n<h3>Gestion des droits à partir des groupes</h3>\n<p>Vous avez six groupes utilisateurs distinct :</p>\n<ul>\n    <li>administration des actualités en français ;</li>\n    <li>administration des actualités en anglais ;</li>\n    <li>administration des pages du site en français ;</li>\n    <li>administration des pages du site en anglais ;</li>\n    <li>validation des modifications sur les actualités ;</li>\n    <li>validation des modifications sur les pages.</li>\n</ul>\n<p>En associant un ou plusieurs de ces groupes à des utilisateurs, vous leur donnerez les droits correspondants vous permettant ainsi de créer et de gérer simplement des combinaisons plus ou moins complexes de droits d''administration.</p>\n<p>De plus, dans le cas de sites extranet ou intranet, vous pouvez aussi réaliser ce type de combinaison sur le droit de visibilité des différents contenus du site, permettant ainsi de créer des <strong>zones de contenu sécurisées</strong> sur votre site.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(597, 28, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(602, 28, 'first', '8d231671f5511d2e3004c79991317d93', 'texte', '<h2>Utilisateurs et groupes</h2>\n<p>Le<atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>&#160;super administrateur</noselection><display><htmltemplate><a  href="{{href}}">&#160;super administrateur</a></htmltemplate></display></atm-linx>&#160;possède <strong>tous les droits sur l’application.</strong></p>\n<p>Il peut ensuite designer d''autres administrateurs, créer des groupes et définir les différents rôles nécessaires à la gestion des sites. Chacun utilisateur dispose alors de droits très précis sur les différents modules d''Automne.</p>\n<p>Vos utilisateurs n''auront à leur disposition que les outils qui leurs sont nécessaires. Leur domaines d''interventions seront définies par votre politique éditoriale.</p>\n<p>Il est naturellement possible, grâce au <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>circuit de publication</noselection><display><htmltemplate><a  href="{{href}}">circuit de publication</a></htmltemplate></display></atm-linx>&#160;de soumettre les données saisies à la validation d''une autorité supérieure. Ainsi le contenu pourra être vérifié, corrigé et validé avant sa mise en ligne.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(610, 37, 'first', '7fac447905b2c5da7fb86162c1656561', 'texte', '<p>&#160;Une fois les différents <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>rôles</noselection><display><htmltemplate><a  href="{{href}}">rôles</a></htmltemplate></display></atm-linx> définis, les responsables éditoriaux ont tous les outils nécessaires pour suivre les modifications effectuées sur le site :</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(611, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'texte', '<ul>\n    <li>Un système d''alerte email automatique informe les validateurs en temps réel des modifications qui ont été opérées sur le site ;</li>\n    <li>Le validateur peut alors vérifier les modifications faites sur le contenu et les accepter, les refuser ou les modifier.</li>\n    <li>Un système d''icônes simple et clair permet à tout moment de connaitre le statut des éléments : si ils sont publiés, dépubliés, ou attente d''une validation.</li>\n    <li>La publication en ligne des modifications n''est effective que lorsqu''elles sont approuvées par le validateur. Ce droit particulier est paramétrable dans la <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>gestion des utilisateurs.</noselection><display><htmltemplate><a  href="{{href}}">gestion des utilisateurs.</a></htmltemplate></display></atm-linx></li>\n    <li>Le suivi d''activité stocke toute l''historique des modifications effectuées dans Automne.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(585, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'texte', '<p>Un des principes fondamental à respecter lors de la gestion de site web est la <strong>séparation entre le contenu et la présentation.</strong>&#160;Le fond et la forme doivent être totalement indépendant l’un de l’autre.</p>\n<p>Cela permettra de concevoir des sites pouvant s''afficher sur différents types de terminaux :&#160;</p>\n<ul>\n    <li>ordinateur de bureau</li>\n    <li>téléphone mobile</li>\n    <li>télévision</li>\n    <li>imprimante</li>\n    <li>etc.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(587, 25, 'first', '55319cd65490d790a905969af656ee08', 'texte', '<p>Lors de la création du modèle de page, on détermine, par l’insertion de balises XML propres à Automne, l’emplacement des différentes zones modifiables et des menus de navigation.</p>\n<p>Exemple d''insertion d''une zone modifiable relative au module de gestion de page :</p>\n<p class="code"><code>&lt;atm-clientspace module="standard" id="main-content" /&gt;</code></p>\n<p>On peut ainsi délimiter facilement les zones d''intervention des rédacteurs dans les pages.</p>\n<p>De plus grâce aux modèles de page, on assure une présentation homogène des pages du site et on facilite la mise à jour et la maintenance de l''ensemble du site.</p>\n<p>Les utilisateurs ont ensuite à leur disposition des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenu</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenu</a></htmltemplate></display></atm-linx> à insérer dans les zones modifiables qui leur permettront d''insérer tous types de contenu.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(632, 2, 'first', '0dd66805b82fd392344cf9a535159768', 'texte', '<p>Automne est un CMS open-source français conçu pour simplifier la gestion de sites web, que ce soit pour les contributeurs ou les dévelopeurs.</p>\n<p>L’interface d’Automne se greffe sur le site web et vous permet d’éditer le contenu de vos pages de manière intuitive.</p>\n<p>Commme tous les CMS, Automne propose un système de <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>modèles de page</noselection><display><htmltemplate><a  href="{{href}}">modèles de page</a></htmltemplate></display></atm-linx> qui utilise la syntaxe <abbr title="eXtensible Markup Language">XML</abbr>. Même chose pour les <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>modèles de blocs de contenus</noselection><display><htmltemplate><a  href="{{href}}">modèles de blocs de contenus</a></htmltemplate></display></atm-linx> - ou rangées.</p>\n<p>Automne est un CMS stable et performant, il peut vous aider à gérer plusieurs sites ou plusieurs versions de sites. 10 000 pages en 5 langues ne lui font pas peur.</p>\n<p>Automne est extensible et intégre un <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>assistant de création de modules</noselection><display><htmltemplate><a  href="{{href}}">assistant de création de modules</a></htmltemplate></display></atm-linx> - le <abbr title="Polymorphic Module">Polymod</abbr>. Créez votre structure en quelques clics et Automne genère l’interface d’administration pour vous.</p>\n<p>La gestion de l’affichage se fait ensuite grâce au meta-langage d’Automne, pour les <atm-linx type="direct"><selection><start><nodespec type="node" value="31"/></start></selection><noselection>modules simples</noselection><display><htmltemplate><a  href="{{href}}">modules simples</a></htmltemplate></display></atm-linx> quelques balises XML suffisent.</p>\n<p>Vous l’aurez compris, Automne est là avant tout pour vous faciliter la vie.</p>\n<p>Comme tout logiciel libre, vous pouvez contribuer à Automne, en faisant des <a target="_blank" href="http://www.automne-cms.org/todo/">suggestions d’évolution</a>, en remontant <a target="_blank" href="http://www.automne-cms.org/bug/">des bugs</a> ou même en contribuant au <a target="_blank" href="https://launchpad.net/automne">code source</a>.</p>\n<p>Le site communautaire <a target="_blank" href="http://www.automne-cms.org">www.automne-cms.org</a> et son <a target="_blank" href="http://forum.automne-cms.org">forum</a> sont là pour vous aider dans votre découverte d''Automne.</p>\n<p>Si vous souhaitez avoir des <a target="_blank" href="http://www.automne-cms.org/support/">formations ou obtenir un support professionnel</a>, nous avons des offres sur mesure à vous proposer.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(556, 3, 'first', '6ff77816cb91134d254f1b0723fa0022', 'texte', '<h2>Vos droits sur ce site de démonstration</h2>\n<h3>Que pouvez-vous faire ?</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(666, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'texte', '<p>Si vous disposez d’un compte utilisateur <strong>« Rédacteur »</strong>&#160;, vous avez accès à l’interface d''administration d’Automne 4 et vous pouvez donc opérer certaines modifications. <strong><br />\n</strong></p>\n<p>Vous pouvez par exemple :</p>\n<ul>\n    <li>modifier, créer et copier des pages ;</li>\n    <li>modifier votre profil ;</li>\n    <li>modifier, créer ou supprimer des éléments du module actualité, médiathèque, etc.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(258, 3, 'first', '8be44600466b3bd947f5b2c5cb45bf01', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(637, 30, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(674, 30, 'first', 'ffcabb4c56442c5a6e6659260c7110fb', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(675, 30, 'first', '61cbcc65130ccda86b96e663734ab490', 'texte', '<h2>Automne - un système LAMP</h2>\n<p>Automne est basé sur un ensemble de logiciels libres : Linux - Apache - MySQL - PHP.</p>\n<p>Il peut aussi éventuellement fonctionner sous Windows ou Mac OSX.</p>\n<p>Pour tout savoir sur les pré-requis logiciels nécessaires pour faire fonctionner Automne, rendez vous sur <a target="_blank" href="http://www.automne-cms.org/requirements/">la page dédiée aux pré-requis sur le site de la communauté Automne</a>.</p>\n<h2>Automne - un outil Open Source</h2>\n<p>Automne est un outil gratuit. Il&#160;est basé sur la licence GNU-GPL Version 2 ou supérieure.</p>\n<p>Il n''y a donc aucun frais de licence et vous disposez des droits suivant sur le programme :</p>\n<ul>\n    <li>Liberté d''exécuter le logiciel, pour n''importe quel usage ;</li>\n    <li>Liberté d''étudier le fonctionnement d''un programme et de l''adapter à ses besoins, ce qui passe par l''accès aux codes sources ;</li>\n    <li>Liberté de redistribuer des copies ;</li>\n    <li>Liberté d''améliorer le programme et de rendre publiques les modifications afin que l''ensemble de la communauté en bénéficie.</li>\n</ul>\n<p>Rendez vous sur <a target="_blank" href="http://www.automne-cms.org/licence/">la page Licence du site Automne</a> pour plus de détails sur cette licence.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(560, 24, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(570, 24, 'first', 'a76b35963e7853924f49b447d533f5ab', 'texte', '<p>Puissant système de gestion de contenu, Automne permet de gérer des sites de plusieurs milliers de pages, d''en modifier simplement la structure et l''apparence grâce aux <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>modèles de pages</noselection><display><htmltemplate><a  href="{{href}}">modèles de pages</a></htmltemplate></display></atm-linx> et de modifier intuitivement le contenu grâce au principe des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenu.</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenu.</a></htmltemplate></display></atm-linx></p>\n<p>Les nombreuses fonctionnalités pour le site Internet, simples ou complexes, peuvent être générées automatiquement par le <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>générateur de module</noselection><display><htmltemplate><a  href="{{href}}">générateur de module</a></htmltemplate></display></atm-linx>&#160;ou bien développées directement en code PHP.</p>\n<p>Automne dispose d''un système de <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>gestion des utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">gestion des utilisateurs</a></htmltemplate></display></atm-linx> et <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>groupes d''utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">groupes d''utilisateurs</a></htmltemplate></display></atm-linx> basé sur des rôles distincts permettant une <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>gestion très fine des droits.</noselection><display><htmltemplate><a  href="{{href}}">gestion très fine des droits.</a></htmltemplate></display></atm-linx> Votre environnement de travail est homogène et ne présente que les fonctionnalités sur lesquelles vous avez le droit d''agir.</p>\n<p>Pour en savoir plus sur chacune de ces fonctionnalités, rendez-vous sur les rubriques dédiées :&#160;</p>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>Modèles de pages</noselection><display><htmltemplate><a  href="{{href}}">Modèles de pages</a></htmltemplate></display></atm-linx> (structure et apparence),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>Rangées de contenu</noselection><display><htmltemplate><a  href="{{href}}">Rangées de contenu</a></htmltemplate></display></atm-linx> (blocs pré-formatés prêt à l''emploi),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Modules </noselection><display><htmltemplate><a  href="{{href}}">Modules </a></htmltemplate></display></atm-linx>(création et gestion de vos applications dynamiques),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>Gestion des utilisateurs et des groupes d''utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">Gestion des utilisateurs et des groupes d''utilisateurs</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>Gestion des droits d''accès</noselection><display><htmltemplate><a  href="{{href}}">Gestion des droits d''accès</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>Workflow de publication des contenus</noselection><display><htmltemplate><a  href="{{href}}">Workflow de publication des contenus</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="38"/></start></selection><noselection>Aide aux utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">Aide aux utilisateurs</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="34"/></start></selection><noselection>Fonctions avancées</noselection><display><htmltemplate><a  href="{{href}}">Fonctions avancées</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(626, 34, 'first', '592c2e33c7971c02ec553000d0eaea43', 'texte', '<h2>La gestion multi-sites</h2>\n<p>Une seule et même interface d''Automne peut gérer autant de sites que vous le souhaitez. Chacun peut posséder son propre nom de domaine, sa propre langue et ses propres éléments (modèles de pages, rangées). Vous pouvez accorder des droits sur un ou plusieurs sites à vos collaborateurs.</p>\n<h2>Espaces sécurisés</h2>\n<p>Le système évolué de gestion des droits permet de réaliser des <strong>espaces sécurisés</strong> sur vos sites. Par l’intermédiaire d’un compte d''utilisateur et d''un mot de de passe, votre site Internet se transforme en&#160;<strong>Extranet ou en Intranet&#160;</strong>appliquant ainsi les <strong>droits et restrictions</strong> sur les pages et les contenus que vous aurez spécifié. Les restrictions mises en place sont <strong>invisibles </strong>à ceux qui ne possèdent pas les droits de les voir évitant ainsi toute frustration de vos utilisateurs.</p>\n<h2>Connexion LDAP</h2>\n<p>L''intérêt principal d''un annuaire LDAP est la <strong>normalisation de l''authentification.</strong> Cet annuaire regroupe toutes les informations de type de l’utilisateur (nom, prénom, service, fonction, etc.).</p>\n<p>Automne permet de récupérer automatiquement les informations de l’annuaire afin de définir les utilisateurs et leurs droits. &#160;Par exemple la personne travaillant au service des ressources humaines, aura automatiquement accès à la page ressources humaines alors que d’autres collègues n’y auront pas accès.</p>\n<p>Lors de l’ouverture de session, les identifiants et mot de passe sont envoyées à cet annuaire qui transmet alors les informations de l’utilisateur</p>\n<h2>Authentification unique</h2>\n<p>L''authentification unique (en anglais <strong>SSO</strong>&#160;signifie Single Sign On) est une méthode permettant à un utilisateur de ne procéder qu''à une seule authentification pour accéder à plusieurs applications informatiques ou sites web sécurisés.</p>\n<p>Automne dispose aujourd’hui de cette technologie et les utilisateurs pourront directement être connectés à l’interface d''Automne dés l’ouverture de session sur leur machine.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(604, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'texte', '<p>On peut créer autant de groupes qu''il y a de rôles à définir et faire appartenir les utilisateurs à un ou plusieurs groupes. Automne calculera ensuite la somme des <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>droits</noselection><display><htmltemplate><a  href="{{href}}">droits</a></htmltemplate></display></atm-linx> correspondants.</p>\n<p>On peut donc avoir un groupe qui n''aura accès qu''à certaines parties de l''arborescence, un autre qu''à certaines catégories d''un module et faire appartenir ensuite certains utilisateurs à ces deux groupes.</p>\n<p>Automne vous offre une totale liberté dans l''organisation et la répartition du travail collaboratif.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(664, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'texte', '<p>Pas envie de lire toute la <a target="_blank" href="http://doc.automne-cms.org">documentation</a> ? Passez la souris au dessus des onglets du module de page, des icônes de statut, des différents boutons ou champs présents dans les fenêtres ou les formulaires de saisie des modules et vous aurez toutes les explications nécessaires.</p>\n<p>Vous ne vous rappelez plus des valeurs possibles à spécifier pour l''indexation d''une page par les moteurs de recherche ? Pas grave, l''aide d''Automne est là pour ça.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(652, 26, 'first', '22f3ce37f32ed90e7efcb5e2c3379e88', 'texte', '<p>La syntaxe XML d''Automne vous permet de créer vos propres rangées de contenu en vous laissant une liberté totale sur la manière de structurer vos informations.</p>\n<p>Une rangée peut contenir un ou plusieurs blocs de contenus reliés à un ou plusieurs modules. Grâce au meta-language d''Automne, vous pouvez créer des rangées qui afficheront du contenu dynamique sous écrire la moindre ligne de code PHP.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(562, 24, 'first', '5abba99264b62fec356b41e30aeddf41', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(627, 29, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(669, 29, 'first', '530e1be13c69bcfec950100e6c6421a3', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(670, 29, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 'texte', '<p>Automne est un CMS <a target="_blank" href="http://fr.wikipedia.org/wiki/Open_source">open source,</a> performant et ergonomique. Ce système de gestion de contenu français est déjà utilisé par de grandes entreprises, des organismes public et des associations de toutes tailles.</p>\n<p>Automne offre un environnement sécurisé et collaboratif pour gérer des sites et des applications web.</p>\n<h2>Performant et évolutif</h2>\n<p>Robuste pour sa capacité de gérer plusieurs milliers de pages avec un langage orienté objet. Automne respecte les normes et recommandations du W3C ainsi que les  recommandations en terne d’accessibilité.</p>\n<p>Doté d''un assistant de création de <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>modules de gestion</noselection><display><htmltemplate><a  href="{{href}}">modules de gestion</a></htmltemplate></display></atm-linx>, vous pourrez enrichir  les <atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>fonctionnalités de votre site Internet</noselection><display><htmltemplate><a  href="{{href}}">fonctionnalités de votre site Internet</a></htmltemplate></display></atm-linx> selon vos besoins.</p>\n<h2>Taillé pour l''entreprise</h2>\n<p>Automne vous permet de créer et de gérer votre site Internet, Extranet ou Intranet. Il permet de créer des sites Internet institutionnels de qualité professionnelle très rapidement mais aussi de développer des applications web évoluées. Tout cela en restant dans un contexte simple et intuitif qui offre aux utilisateurs toutes les fonctionnalités nécessaires.</p>\n<h2>Pérénité et sécurité</h2>\n<p>Utilisé dès ses débuts par de grands comptes, il offre aux PME un cadre agréable pour le travail collaboratif et la gestion.</p>\n<p>De par son modèle libre, vous êtes assurés d''avoir des mises à jour régulières pour vos sites.</p>\n<p>Automne est développé par des professionnels certifiés possédant plusieurs années d''expérience en PHP et en architecture logicielle. Tous les développements sont vérifiés et respectent un haut niveau de qualité et de sécurité.</p>\n<p>Automne est gratuit et librement téléchargeable sur <a target="_blank" href="http://sourceforge.net/projects/automne/">Sourceforge</a>. Il emploie des technologies open-source indépendantes ce qui vous assure de pouvoir l''utiliser longtemps sans dépendre d''une entreprise éditrice.</p>\n<p>Par ailleurs, vous disposez d''un <a target="_blank" href="http://www.automne.ws/forum/">forum communautaire</a> pour signaler tout problème que vous rencontreriez.</p>\n<p>Il vous est aussi possible d''obtenir un support et des formations dispensés par des professionnels. Pour plus d''information, rendez vous sur <a target="_blank" href="http://www.automne-cms.org">le site web du CMS Automne</a>.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(668, 31, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 'texte', '<p>Voici quelques exemples de modules intégrés à cette démonstration. Il est possible d''en ajouter d''autres très simplement.&#160;</p>\n<h2>Module Actualités</h2>\n<ul>\n    <li>Gestion d''articles ;</li>\n    <li>Gestion des catégories d''articles ;</li>\n    <li>Moteur de recherche côté client.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>Exemple d''affichage du module Actualités</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Actualités</a></htmltemplate></display></atm-linx></p>\n<h2>Module Médiathèque</h2>\n<p>Le module Médiathèque installé par défaut permet de :&#160;</p>\n<ul>\n    <li>Stocker différents types de média : vidéo, image, son dans une base commune ;</li>\n    <li>Utiliser des médias externes simplement. Vous pouvez inclure directement les médias Youtube, Flickr, Scribd, Dailymotion, Vimeo, etc. dans votre site en copiant leur URL.</li>\n    <li>Trier selon le type de média ;</li>\n    <li>Gestion de l''arborescence des catégories ;</li>\n    <li>Effectuer des recherche par mots clés ;</li>\n    <li>Insérer des médias dans l''éditeur visuel lors de l''édition des pages.</li>\n</ul>\n<p>Une fois l''objet dans la base du module, il est réutilisable dans les pages et les autres modules autant de fois qu''on le souhaite.</p>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>Exemple d''affichage du module Médiathèque</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Médiathèque</a></htmltemplate></display></atm-linx>&#160;</p>\n<h2>Module Formulaire</h2>\n<p>L''assistant de création de formulaires vous aidera à mettre en place tout type de formulaires :</p>\n<ul>\n    <li>Permet l''envoi de mail, l''écriture dans une base de données, l''identification des utilisateurs, de récolter des avis, de faire des sondages ...</li>\n    <li>Un assistant de création de formulaire vous aidera à mettre en place des formulaires tout aussi simple que complexes.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="9"/></start></selection><noselection>Exemple d''affichage du module Formulaire</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Formulaire</a></htmltemplate></display></atm-linx></p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(672, 33, 'first', 'adbbb020aeadb2df9957a83e19e55211', 'texte', '<p>Automne se distingue de ses concurrents grâce notamment à :</p>\n<ul>\n    <li>une interface administrateur<strong>&#160;ergonomique, intuitive et réactive;</strong></li>\n    <li>l''intégration de l''interface sur votre site, pas de backoffice;</li>\n    <li>une prise en main rapide qui ne demande aucune connaissance technique;</li>\n    <li><strong>une aide contextuelle</strong>&#160;omniprésente dans le logiciel;</li>\n    <li>un assistant de création de modules personnalisés;</li>\n    <li>une optimisation des performances native;&#160;</li>\n    <li>l''utilisation d''outils de briques technologiques modernes et éprouvés : PHP5, ExtJS, Zend Framework, etc. ;</li>\n    <li>gestion des <strong>langues internationales</strong>&#160;et des alphabets particuliers;</li>\n    <li>l''intégration d''un moteur de recherche full-text pour les contenus;</li>\n    <li>et bien plus encore ...</li>\n</ul>\n<p>Mais surtout, Automne est maintenu par une équipe de professionnels passionnés !</p>\n<ul>\n    <li><a target="_blank" href="http://www.automne-cms.org/forum/">Ils vous aideront</a> à faire en sorte que votre projet devienne réalité.</li>\n    <li>Ils écouteront <a target="_blank" href="http://www.automne-cms.org/bug/">vos remarques</a> et <a target="_blank" href="http://www.automne-cms.org/todo/">vos idées</a> pour améliorer les versions futures.</li>\n</ul>\n<p>Nous ne sommes pas une communauté de millions d''utilisateurs au milieu desquels vous n''êtes qu''un numéro. Pour une fois, vos retours comptent vraiment, alors ...</p>\n<p>N''hésitez pas à faire appel à nous !</p>');

-- --------------------------------------------------------

--
-- Structure de la table `blocksTexts_edition`
--

DROP TABLE IF EXISTS `blocksTexts_edition`;
CREATE TABLE `blocksTexts_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksTexts_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksTexts_public`
--

DROP TABLE IF EXISTS `blocksTexts_public`;
CREATE TABLE `blocksTexts_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksTexts_public`
--

INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(633, 3, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(665, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'texte', '<p>Vous êtes sur le site de démonstration d''Automne qui a pour but de vous présenter les grands principes et la philosophie de ce CMS orienté utilisateur.</p>\n<p>Cette démonstration ne vous permet d''avoir accès qu''à une partie des possibilités offertes par Automne, pour avoir un aperçu complet des fonctionnalités, nous vous invitons à <a target="_blank" href="http://www.automne-cms.org/web/fr/242-telechargements.php">télécharger</a> et à installer Automne.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(556, 3, 'first', '6ff77816cb91134d254f1b0723fa0022', 'texte', '<h2>Vos droits sur ce site de démonstration</h2>\n<h3>Que pouvez-vous faire ?</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(666, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'texte', '<p>Si vous disposez d’un compte utilisateur <strong>« Rédacteur »</strong>&#160;, vous avez accès à l’interface d''administration d’Automne 4 et vous pouvez donc opérer certaines modifications. <strong><br />\n</strong></p>\n<p>Vous pouvez par exemple :</p>\n<ul>\n    <li>modifier, créer et copier des pages ;</li>\n    <li>modifier votre profil ;</li>\n    <li>modifier, créer ou supprimer des éléments du module actualité, médiathèque, etc.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(587, 25, 'first', '55319cd65490d790a905969af656ee08', 'texte', '<p>Lors de la création du modèle de page, on détermine, par l’insertion de balises XML propres à Automne, l’emplacement des différentes zones modifiables et des menus de navigation.</p>\n<p>Exemple d''insertion d''une zone modifiable relative au module de gestion de page :</p>\n<p class="code"><code>&lt;atm-clientspace module="standard" id="main-content" /&gt;</code></p>\n<p>On peut ainsi délimiter facilement les zones d''intervention des rédacteurs dans les pages.</p>\n<p>De plus grâce aux modèles de page, on assure une présentation homogène des pages du site et on facilite la mise à jour et la maintenance de l''ensemble du site.</p>\n<p>Les utilisateurs ont ensuite à leur disposition des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenu</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenu</a></htmltemplate></display></atm-linx> à insérer dans les zones modifiables qui leur permettront d''insérer tous types de contenu.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(642, 26, 'first', 'd9357a8e2eaabff878edd590a3390747', 'texte', '<p>Les rangées de contenu sont les gabarits qui vont contenir l’information. Elles peuvent recevoir tous types de contenu : texte, image, flash, vidéo… Par exemple, des rangées titres, sous-titres, textes, textes et média sont certaines des rangées par défaut d''Automne.</p>\n<p>Une rangée est pré-formatée. Cela permet de conserver l''homogénéité de la présentation du site Internet.<b><br />\n</b></p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(647, 26, 'first', '8bcb8cc07038c43efc0b850a5e120569', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(651, 26, 'first', 'efa99bdc885c7e3d486c9073dd4b3ea5', 'texte', '<p>&#160;L''organisation des rangées dans une page est particulièrement simple. Vous pouvez les glisser-déposer à l''endroit ou vous le souhaitez.</p>\n<p>Les zones de saisies sont clairement indiquées et vous pouvez modifier l''ensemble du contenu très simplement à l''aide d''outils de mise en forme très intuitifs : mise en forme des textes à l''aide de l''éditeur WYSIWYG, redimensionner et recadrer des images, créer des liens vers d''autres sites ou vers une page donnée de votre site.</p>\n<p>Vous pouvez même décider d''importer le contenu de vos modules à n''importe quel endroit de vos textes. Si le contenu du module vient à disparaitre (suppression, dépublication, ...), il disparaitra simplement et sans erreur de tous les textes ou vous y faite référence.</p>\n<p><strong>Créez vos propres rangées avec le type d’information et la présentation que vous souhaitez.</strong></p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(637, 30, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(674, 30, 'first', 'ffcabb4c56442c5a6e6659260c7110fb', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(675, 30, 'first', '61cbcc65130ccda86b96e663734ab490', 'texte', '<h2>Automne - un système LAMP</h2>\n<p>Automne est basé sur un ensemble de logiciels libres : Linux - Apache - MySQL - PHP.</p>\n<p>Il peut aussi éventuellement fonctionner sous Windows ou Mac OSX.</p>\n<p>Pour tout savoir sur les pré-requis logiciels nécessaires pour faire fonctionner Automne, rendez vous sur <a target="_blank" href="http://www.automne-cms.org/requirements/">la page dédiée aux pré-requis sur le site de la communauté Automne</a>.</p>\n<h2>Automne - un outil Open Source</h2>\n<p>Automne est un outil gratuit. Il&#160;est basé sur la licence GNU-GPL Version 2 ou supérieure.</p>\n<p>Il n''y a donc aucun frais de licence et vous disposez des droits suivant sur le programme :</p>\n<ul>\n    <li>Liberté d''exécuter le logiciel, pour n''importe quel usage ;</li>\n    <li>Liberté d''étudier le fonctionnement d''un programme et de l''adapter à ses besoins, ce qui passe par l''accès aux codes sources ;</li>\n    <li>Liberté de redistribuer des copies ;</li>\n    <li>Liberté d''améliorer le programme et de rendre publiques les modifications afin que l''ensemble de la communauté en bénéficie.</li>\n</ul>\n<p>Rendez vous sur <a target="_blank" href="http://www.automne-cms.org/licence/">la page Licence du site Automne</a> pour plus de détails sur cette licence.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(606, 35, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 'texte', '<p>Automne dispose d''un <strong>système intelligent de gestion des droits des utilisateurs.</strong> Il permet une gestion fine des droits, tant dans les différentes pages que dans les contenus des différents modules. Ce système permet d''appliquer l''ensemble de ces droits sur tout types d''éléments gérés par Automne.</p>\n<p>Ces droits peuvent être attribués sur les pages mais aussi sur les modules, les modèles de pages, les rangées de contenu et sur les différentes actions d''administration. L''ensemble de ces droits sont applicables aux utilisateurs et aux groupes d''utilisateurs ayant accès au site.</p>\n<p>Il existe un droit particulier intitulé <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>droit de validation.</noselection><display><htmltemplate><a  href="{{href}}">droit de validation.</a></htmltemplate></display></atm-linx>&#160;Ce droit permet de donner à l''utilisateur la possibilité de valider le travail des autres utilisateurs pour publier le contenu sur le site en ligne.</p>\n<p>Exemple :</p>\n<ul>\n    <li><em>L''utilisateur A peut avoir des droits d''administration sur certaines pages et un droit limité sur les modèles de pages, ce qui lui permettra de ne créer que des pages utilisant les modèles qu''il peut utiliser.</em></li>\n    <li><em>L''utilisateur B peut avoir les droits d''administration sur la partie française des actualités et uniquement le droit de visibilité sur la partie anglaise des. Il ne pourra ainsi modifier que les actualités Française du site.</em></li>\n    <li><em>L''utilisateur C peut avoir les droits d''administrations sur le module médiathèque mais aucun droit sur les actualités et les pages du site. Il ne pourra donc que gérer les éléments de la médiathèque que d''autres utilisateurs pourront ensuite utiliser dans les actualités ou les pages du site.</em></li>\n</ul>\n<p>Bien entendu vous pouvez spécifier finement tous les droits que vous souhaitez et vous pouvez même <strong>créer des groupes d''utilisateur comportant des droits spécifiques</strong> qui seront additionné aux utilisateurs appartenant à différents groupes.</p>\n<h3>Gestion des droits à partir des groupes</h3>\n<p>Vous avez six groupes utilisateurs distinct :</p>\n<ul>\n    <li>administration des actualités en français ;</li>\n    <li>administration des actualités en anglais ;</li>\n    <li>administration des pages du site en français ;</li>\n    <li>administration des pages du site en anglais ;</li>\n    <li>validation des modifications sur les actualités ;</li>\n    <li>validation des modifications sur les pages.</li>\n</ul>\n<p>En associant un ou plusieurs de ces groupes à des utilisateurs, vous leur donnerez les droits correspondants vous permettant ainsi de créer et de gérer simplement des combinaisons plus ou moins complexes de droits d''administration.</p>\n<p>De plus, dans le cas de sites extranet ou intranet, vous pouvez aussi réaliser ce type de combinaison sur le droit de visibilité des différents contenus du site, permettant ainsi de créer des <strong>zones de contenu sécurisées</strong> sur votre site.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(192, 5, 'first', '68a1b1d8a072af0eb92f6392eb309ad1', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(605, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'texte', '<p>Il existe trois types de droits fondamentaux :</p>\n<ul>\n    <li>Le droit d''écriture qui équivaut à un&#160;droit d''administration ;</li>\n    <li>Le droit de lecture qui équivaut à un droit de visibilité ;</li>\n    <li>Aucun droit, ce qui empêche un utilisateurs d''avoir accès à un contenu.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(593, 27, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 'texte', '<p>Créer ou installez des modules supplémentaires pour ajouter des fonctionnalités propres aux besoins de chaque site.</p>\n<p>Par défaut Automne contient les modules les plus courants : &#160;actualités, médiathèque,&#160;formulaires ou création d''URLs courtes avec le module Alias par exemple.</p>\n<p><strong>Grâce au générateur d''application intégré, ajoutez autant de modules supplémentaires que vous le souhaitez.</strong></p>\n<h2>Le générateur de modules</h2>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(591, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'texte', '<p>Une des particularités d’Automne est son générateur de module intégré appelé <abbr title="Polymorphic Module">Polymod</abbr>.</p>\n<p>L''assistant de création de module vous permet de créer des structures personnalisées et de relier plusieurs objets entre eux (comme une actualité et un commentaire par exemple).</p>\n<p>La création de la structure des objets de vos modules se fait entièrement via l''interface de gestion des modules d''Automne, sans écrire la moindre ligne de code. Et ce n''est pas tout, Automne génère ensuite l''interface d''administration correspondante de manière entièrement automatisée. Toujours pas la moindre ligne de PHP à écrire alors que vous pouvez déjà commencer à insérer des données dans vos modules.&#160;</p>\n<p>La gestion de l''affichage de vos modules se fait ensuite via des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenus</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenus</a></htmltemplate></display></atm-linx> en utilisant les balises XML d''Automne.</p>\n<p>Exemple :&#160; les modules <atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>Actualités</noselection><display><htmltemplate><a  href="{{href}}">Actualités</a></htmltemplate></display></atm-linx> et <atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>Médiathèque</noselection><display><htmltemplate><a  href="{{href}}">Médiathèque</a></htmltemplate></display></atm-linx> fourni dans cette démonstration ont été entièrement créés à partir du générateur de modules d''Automne. Ils peuvent être modifiés pour être ajustés à ce que vous souhaitez de très simplement.</p>\n<p>Il est donc facile de créer ses propres modules à l''aide du Polymod et de les partager ensuite avec la communauté.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(653, 9, 'first', 'd227e9c886232aa6c2bbbddb2b348ad4', 'texte', '<p>&#160;Automne est un CMS open-source français édité par l''agence <a target="_blank" href="http://www.ws-interactive.fr">WS Interactive</a>.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(567, 9, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 'texte', '<p>Ce formulaire vous permet d''envoyer une demande de contact. Pour le transformer (Champs, actions, email de destination), modifiez le dans les propriétés du module "Formulaire".</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(562, 24, 'first', '5abba99264b62fec356b41e30aeddf41', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(664, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'texte', '<p>Pas envie de lire toute la <a target="_blank" href="http://doc.automne-cms.org">documentation</a> ? Passez la souris au dessus des onglets du module de page, des icônes de statut, des différents boutons ou champs présents dans les fenêtres ou les formulaires de saisie des modules et vous aurez toutes les explications nécessaires.</p>\n<p>Vous ne vous rappelez plus des valeurs possibles à spécifier pour l''indexation d''une page par les moteurs de recherche ? Pas grave, l''aide d''Automne est là pour ça.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(612, 38, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(615, 38, 'first', '27253551d67fd5f23b3269719a3f5364', 'texte', '<p>Grâce à l''aide contextuelle intégrée, le moindre bouton de l''interface n''aura plus de secret pour vous. Nous avons fait en sorte d''expliciter la fonction de chacun d''entre eux afin que vous ne posiez plus de questions.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(619, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'texte', '<p>Nous avons aussi intégré <strong>une aide technique pour vous assister</strong> dans la création de modèles de pages, de rangées de contenus et de modules.</p>\n<p>Cette aide détaille entre autres la fonction et la syntaxe des différentes balises XML mais aussi les variables à votre disposition pour les modèles de page ou les rangées.</p>\n<p>Une <strong>aide spécifique à chaque module</strong> crée avec le générateur&#160;<atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Polymod</noselection><display><htmltemplate><a  href="{{href}}">Polymod</a></htmltemplate></display></atm-linx> est également générée. Elle se révèle particulièrement utile lors de la création des rangées de contenus associés pour avoir facilement accès aux variables et aux différentes fonctions offertes par Automne.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(610, 37, 'first', '7fac447905b2c5da7fb86162c1656561', 'texte', '<p>&#160;Une fois les différents <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>rôles</noselection><display><htmltemplate><a  href="{{href}}">rôles</a></htmltemplate></display></atm-linx> définis, les responsables éditoriaux ont tous les outils nécessaires pour suivre les modifications effectuées sur le site :</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(611, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'texte', '<ul>\n    <li>Un système d''alerte email automatique informe les validateurs en temps réel des modifications qui ont été opérées sur le site ;</li>\n    <li>Le validateur peut alors vérifier les modifications faites sur le contenu et les accepter, les refuser ou les modifier.</li>\n    <li>Un système d''icônes simple et clair permet à tout moment de connaitre le statut des éléments : si ils sont publiés, dépubliés, ou attente d''une validation.</li>\n    <li>La publication en ligne des modifications n''est effective que lorsqu''elles sont approuvées par le validateur. Ce droit particulier est paramétrable dans la <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>gestion des utilisateurs.</noselection><display><htmltemplate><a  href="{{href}}">gestion des utilisateurs.</a></htmltemplate></display></atm-linx></li>\n    <li>Le suivi d''activité stocke toute l''historique des modifications effectuées dans Automne.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(632, 2, 'first', '0dd66805b82fd392344cf9a535159768', 'texte', '<p>Automne est un CMS open-source français conçu pour simplifier la gestion de sites web, que ce soit pour les contributeurs ou les dévelopeurs.</p>\n<p>L’interface d’Automne se greffe sur le site web et vous permet d’éditer le contenu de vos pages de manière intuitive.</p>\n<p>Commme tous les CMS, Automne propose un système de <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>modèles de page</noselection><display><htmltemplate><a  href="{{href}}">modèles de page</a></htmltemplate></display></atm-linx> qui utilise la syntaxe <abbr title="eXtensible Markup Language">XML</abbr>. Même chose pour les <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>modèles de blocs de contenus</noselection><display><htmltemplate><a  href="{{href}}">modèles de blocs de contenus</a></htmltemplate></display></atm-linx> - ou rangées.</p>\n<p>Automne est un CMS stable et performant, il peut vous aider à gérer plusieurs sites ou plusieurs versions de sites. 10 000 pages en 5 langues ne lui font pas peur.</p>\n<p>Automne est extensible et intégre un <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>assistant de création de modules</noselection><display><htmltemplate><a  href="{{href}}">assistant de création de modules</a></htmltemplate></display></atm-linx> - le <abbr title="Polymorphic Module">Polymod</abbr>. Créez votre structure en quelques clics et Automne genère l’interface d’administration pour vous.</p>\n<p>La gestion de l’affichage se fait ensuite grâce au meta-langage d’Automne, pour les <atm-linx type="direct"><selection><start><nodespec type="node" value="31"/></start></selection><noselection>modules simples</noselection><display><htmltemplate><a  href="{{href}}">modules simples</a></htmltemplate></display></atm-linx> quelques balises XML suffisent.</p>\n<p>Vous l’aurez compris, Automne est là avant tout pour vous faciliter la vie.</p>\n<p>Comme tout logiciel libre, vous pouvez contribuer à Automne, en faisant des <a target="_blank" href="http://www.automne-cms.org/todo/">suggestions d’évolution</a>, en remontant <a target="_blank" href="http://www.automne-cms.org/bug/">des bugs</a> ou même en contribuant au <a target="_blank" href="https://launchpad.net/automne">code source</a>.</p>\n<p>Le site communautaire <a target="_blank" href="http://www.automne-cms.org">www.automne-cms.org</a> et son <a target="_blank" href="http://forum.automne-cms.org">forum</a> sont là pour vous aider dans votre découverte d''Automne.</p>\n<p>Si vous souhaitez avoir des <a target="_blank" href="http://www.automne-cms.org/support/">formations ou obtenir un support professionnel</a>, nous avons des offres sur mesure à vous proposer.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(604, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'texte', '<p>On peut créer autant de groupes qu''il y a de rôles à définir et faire appartenir les utilisateurs à un ou plusieurs groupes. Automne calculera ensuite la somme des <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>droits</noselection><display><htmltemplate><a  href="{{href}}">droits</a></htmltemplate></display></atm-linx> correspondants.</p>\n<p>On peut donc avoir un groupe qui n''aura accès qu''à certaines parties de l''arborescence, un autre qu''à certaines catégories d''un module et faire appartenir ensuite certains utilisateurs à ces deux groupes.</p>\n<p>Automne vous offre une totale liberté dans l''organisation et la répartition du travail collaboratif.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(667, 3, 'first', '9110334505c2e7ace9a292686b89c405', 'texte', '<p>Si vous disposez d''un compte <strong>« Administrateur »</strong>, alors vous avez la possibilité de tout transformer sur cette démonstration, par exemple :</p>\n<ul>\n    <li>administrer les modules ;</li>\n    <li>valider la modification des pages ;</li>\n    <li>modifier les rangées et les modèles de page ;</li>\n    <li>modifier les paramètres d''Automne,</li>\n    <li>gérer les utilisateurs,&#160;</li>\n    <li>et bien d''autres choses &#160;...</li>\n</ul>\n<h2>Continuer la visite</h2>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="29"/></start></selection><noselection>Automne</noselection><display><htmltemplate><a  href="{{href}}">Automne</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="33"/></start></selection><noselection>Nouveautés</noselection><display><htmltemplate><a  href="{{href}}">Nouveautés</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="30"/></start></selection><noselection>Pré-requis</noselection><display><htmltemplate><a  href="{{href}}">Pré-requis</a></htmltemplate></display></atm-linx></li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>Fonctionnalités</noselection><display><htmltemplate><a  href="{{href}}">Fonctionnalités</a></htmltemplate></display></atm-linx></li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(570, 24, 'first', 'a76b35963e7853924f49b447d533f5ab', 'texte', '<p>Puissant système de gestion de contenu, Automne permet de gérer des sites de plusieurs milliers de pages, d''en modifier simplement la structure et l''apparence grâce aux <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>modèles de pages</noselection><display><htmltemplate><a  href="{{href}}">modèles de pages</a></htmltemplate></display></atm-linx> et de modifier intuitivement le contenu grâce au principe des <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>rangées de contenu.</noselection><display><htmltemplate><a  href="{{href}}">rangées de contenu.</a></htmltemplate></display></atm-linx></p>\n<p>Les nombreuses fonctionnalités pour le site Internet, simples ou complexes, peuvent être générées automatiquement par le <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>générateur de module</noselection><display><htmltemplate><a  href="{{href}}">générateur de module</a></htmltemplate></display></atm-linx>&#160;ou bien développées directement en code PHP.</p>\n<p>Automne dispose d''un système de <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>gestion des utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">gestion des utilisateurs</a></htmltemplate></display></atm-linx> et <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>groupes d''utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">groupes d''utilisateurs</a></htmltemplate></display></atm-linx> basé sur des rôles distincts permettant une <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>gestion très fine des droits.</noselection><display><htmltemplate><a  href="{{href}}">gestion très fine des droits.</a></htmltemplate></display></atm-linx> Votre environnement de travail est homogène et ne présente que les fonctionnalités sur lesquelles vous avez le droit d''agir.</p>\n<p>Pour en savoir plus sur chacune de ces fonctionnalités, rendez-vous sur les rubriques dédiées :&#160;</p>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>Modèles de pages</noselection><display><htmltemplate><a  href="{{href}}">Modèles de pages</a></htmltemplate></display></atm-linx> (structure et apparence),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>Rangées de contenu</noselection><display><htmltemplate><a  href="{{href}}">Rangées de contenu</a></htmltemplate></display></atm-linx> (blocs pré-formatés prêt à l''emploi),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Modules </noselection><display><htmltemplate><a  href="{{href}}">Modules </a></htmltemplate></display></atm-linx>(création et gestion de vos applications dynamiques),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>Gestion des utilisateurs et des groupes d''utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">Gestion des utilisateurs et des groupes d''utilisateurs</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>Gestion des droits d''accès</noselection><display><htmltemplate><a  href="{{href}}">Gestion des droits d''accès</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>Workflow de publication des contenus</noselection><display><htmltemplate><a  href="{{href}}">Workflow de publication des contenus</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="38"/></start></selection><noselection>Aide aux utilisateurs</noselection><display><htmltemplate><a  href="{{href}}">Aide aux utilisateurs</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="34"/></start></selection><noselection>Fonctions avancées</noselection><display><htmltemplate><a  href="{{href}}">Fonctions avancées</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(560, 24, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(626, 34, 'first', '592c2e33c7971c02ec553000d0eaea43', 'texte', '<h2>La gestion multi-sites</h2>\n<p>Une seule et même interface d''Automne peut gérer autant de sites que vous le souhaitez. Chacun peut posséder son propre nom de domaine, sa propre langue et ses propres éléments (modèles de pages, rangées). Vous pouvez accorder des droits sur un ou plusieurs sites à vos collaborateurs.</p>\n<h2>Espaces sécurisés</h2>\n<p>Le système évolué de gestion des droits permet de réaliser des <strong>espaces sécurisés</strong> sur vos sites. Par l’intermédiaire d’un compte d''utilisateur et d''un mot de de passe, votre site Internet se transforme en&#160;<strong>Extranet ou en Intranet&#160;</strong>appliquant ainsi les <strong>droits et restrictions</strong> sur les pages et les contenus que vous aurez spécifié. Les restrictions mises en place sont <strong>invisibles </strong>à ceux qui ne possèdent pas les droits de les voir évitant ainsi toute frustration de vos utilisateurs.</p>\n<h2>Connexion LDAP</h2>\n<p>L''intérêt principal d''un annuaire LDAP est la <strong>normalisation de l''authentification.</strong> Cet annuaire regroupe toutes les informations de type de l’utilisateur (nom, prénom, service, fonction, etc.).</p>\n<p>Automne permet de récupérer automatiquement les informations de l’annuaire afin de définir les utilisateurs et leurs droits. &#160;Par exemple la personne travaillant au service des ressources humaines, aura automatiquement accès à la page ressources humaines alors que d’autres collègues n’y auront pas accès.</p>\n<p>Lors de l’ouverture de session, les identifiants et mot de passe sont envoyées à cet annuaire qui transmet alors les informations de l’utilisateur</p>\n<h2>Authentification unique</h2>\n<p>L''authentification unique (en anglais <strong>SSO</strong>&#160;signifie Single Sign On) est une méthode permettant à un utilisateur de ne procéder qu''à une seule authentification pour accéder à plusieurs applications informatiques ou sites web sécurisés.</p>\n<p>Automne dispose aujourd’hui de cette technologie et les utilisateurs pourront directement être connectés à l’interface d''Automne dés l’ouverture de session sur leur machine.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(585, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'texte', '<p>Un des principes fondamental à respecter lors de la gestion de site web est la <strong>séparation entre le contenu et la présentation.</strong>&#160;Le fond et la forme doivent être totalement indépendant l’un de l’autre.</p>\n<p>Cela permettra de concevoir des sites pouvant s''afficher sur différents types de terminaux :&#160;</p>\n<ul>\n    <li>ordinateur de bureau</li>\n    <li>téléphone mobile</li>\n    <li>télévision</li>\n    <li>imprimante</li>\n    <li>etc.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(660, 27, 'first', '4564d92b193505d71f29b5ae69dddde0', 'texte', '<h2>Modules en PHP</h2>\n<p>Grâce à l''<a target="_blank" href="http://www.automne-cms.org/api/">API d''Automne</a>&#160;vous pouvez aussi développer des modules plus complexes que le Polymod ne saurait traiter.</p>\n<p>Ces modules, créés en PHP peuvent alors réaliser tout type d''opération métier complexe en s''intégrant parfaitement à l''interface d''Automne.</p>\n<p>Vous pouvez ainsi lier Automne à vos bases de données métier ou encore créer des modules de mailing, d''e-commerce, interroger des web services distants et ajouter bien d''autres fonctionnalités encore.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(602, 28, 'first', '8d231671f5511d2e3004c79991317d93', 'texte', '<h2>Utilisateurs et groupes</h2>\n<p>Le<atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>&#160;super administrateur</noselection><display><htmltemplate><a  href="{{href}}">&#160;super administrateur</a></htmltemplate></display></atm-linx>&#160;possède <strong>tous les droits sur l’application.</strong></p>\n<p>Il peut ensuite designer d''autres administrateurs, créer des groupes et définir les différents rôles nécessaires à la gestion des sites. Chacun utilisateur dispose alors de droits très précis sur les différents modules d''Automne.</p>\n<p>Vos utilisateurs n''auront à leur disposition que les outils qui leurs sont nécessaires. Leur domaines d''interventions seront définies par votre politique éditoriale.</p>\n<p>Il est naturellement possible, grâce au <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>circuit de publication</noselection><display><htmltemplate><a  href="{{href}}">circuit de publication</a></htmltemplate></display></atm-linx>&#160;de soumettre les données saisies à la validation d''une autorité supérieure. Ainsi le contenu pourra être vérifié, corrigé et validé avant sa mise en ligne.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(597, 28, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(625, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'texte', '<p>Automne intègre&#160;<strong>un puissant moteur de recherche</strong>&#160;qui&#160;vous permet de rechercher sur l''ensemble des contenus et des éléments, quel que soit leurs type : &#160;contenus des pages ou des modules, utilisateurs, modèles, etc.</p>\n<p>De plus, les résultats retournés sont fonction des droits de l''utilisateur.&#160;Celui-ci s''avère vite indispensable à l''usage et vous fera gagner un temps précieux dans la gestion de vos sites.</p>\n<p>Chaque module possède un moteur de recherche spécifique avec des filtres par mots-clés ou n''importe quel autre type de champs.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(652, 26, 'first', '22f3ce37f32ed90e7efcb5e2c3379e88', 'texte', '<p>La syntaxe XML d''Automne vous permet de créer vos propres rangées de contenu en vous laissant une liberté totale sur la manière de structurer vos informations.</p>\n<p>Une rangée peut contenir un ou plusieurs blocs de contenus reliés à un ou plusieurs modules. Grâce au meta-language d''Automne, vous pouvez créer des rangées qui afficheront du contenu dynamique sous écrire la moindre ligne de code PHP.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(627, 29, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(669, 29, 'first', '530e1be13c69bcfec950100e6c6421a3', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(670, 29, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 'texte', '<p>Automne est un CMS <a target="_blank" href="http://fr.wikipedia.org/wiki/Open_source">open source,</a> performant et ergonomique. Ce système de gestion de contenu français est déjà utilisé par de grandes entreprises, des organismes public et des associations de toutes tailles.</p>\n<p>Automne offre un environnement sécurisé et collaboratif pour gérer des sites et des applications web.</p>\n<h2>Performant et évolutif</h2>\n<p>Robuste pour sa capacité de gérer plusieurs milliers de pages avec un langage orienté objet. Automne respecte les normes et recommandations du W3C ainsi que les  recommandations en terne d’accessibilité.</p>\n<p>Doté d''un assistant de création de <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>modules de gestion</noselection><display><htmltemplate><a  href="{{href}}">modules de gestion</a></htmltemplate></display></atm-linx>, vous pourrez enrichir  les <atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>fonctionnalités de votre site Internet</noselection><display><htmltemplate><a  href="{{href}}">fonctionnalités de votre site Internet</a></htmltemplate></display></atm-linx> selon vos besoins.</p>\n<h2>Taillé pour l''entreprise</h2>\n<p>Automne vous permet de créer et de gérer votre site Internet, Extranet ou Intranet. Il permet de créer des sites Internet institutionnels de qualité professionnelle très rapidement mais aussi de développer des applications web évoluées. Tout cela en restant dans un contexte simple et intuitif qui offre aux utilisateurs toutes les fonctionnalités nécessaires.</p>\n<h2>Pérénité et sécurité</h2>\n<p>Utilisé dès ses débuts par de grands comptes, il offre aux PME un cadre agréable pour le travail collaboratif et la gestion.</p>\n<p>De par son modèle libre, vous êtes assurés d''avoir des mises à jour régulières pour vos sites.</p>\n<p>Automne est développé par des professionnels certifiés possédant plusieurs années d''expérience en PHP et en architecture logicielle. Tous les développements sont vérifiés et respectent un haut niveau de qualité et de sécurité.</p>\n<p>Automne est gratuit et librement téléchargeable sur <a target="_blank" href="http://sourceforge.net/projects/automne/">Sourceforge</a>. Il emploie des technologies open-source indépendantes ce qui vous assure de pouvoir l''utiliser longtemps sans dépendre d''une entreprise éditrice.</p>\n<p>Par ailleurs, vous disposez d''un <a target="_blank" href="http://www.automne.ws/forum/">forum communautaire</a> pour signaler tout problème que vous rencontreriez.</p>\n<p>Il vous est aussi possible d''obtenir un support et des formations dispensés par des professionnels. Pour plus d''information, rendez vous sur <a target="_blank" href="http://www.automne-cms.org">le site web du CMS Automne</a>.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(668, 31, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 'texte', '<p>Voici quelques exemples de modules intégrés à cette démonstration. Il est possible d''en ajouter d''autres très simplement.&#160;</p>\n<h2>Module Actualités</h2>\n<ul>\n    <li>Gestion d''articles ;</li>\n    <li>Gestion des catégories d''articles ;</li>\n    <li>Moteur de recherche côté client.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>Exemple d''affichage du module Actualités</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Actualités</a></htmltemplate></display></atm-linx></p>\n<h2>Module Médiathèque</h2>\n<p>Le module Médiathèque installé par défaut permet de :&#160;</p>\n<ul>\n    <li>Stocker différents types de média : vidéo, image, son dans une base commune ;</li>\n    <li>Utiliser des médias externes simplement. Vous pouvez inclure directement les médias Youtube, Flickr, Scribd, Dailymotion, Vimeo, etc. dans votre site en copiant leur URL.</li>\n    <li>Trier selon le type de média ;</li>\n    <li>Gestion de l''arborescence des catégories ;</li>\n    <li>Effectuer des recherche par mots clés ;</li>\n    <li>Insérer des médias dans l''éditeur visuel lors de l''édition des pages.</li>\n</ul>\n<p>Une fois l''objet dans la base du module, il est réutilisable dans les pages et les autres modules autant de fois qu''on le souhaite.</p>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>Exemple d''affichage du module Médiathèque</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Médiathèque</a></htmltemplate></display></atm-linx>&#160;</p>\n<h2>Module Formulaire</h2>\n<p>L''assistant de création de formulaires vous aidera à mettre en place tout type de formulaires :</p>\n<ul>\n    <li>Permet l''envoi de mail, l''écriture dans une base de données, l''identification des utilisateurs, de récolter des avis, de faire des sondages ...</li>\n    <li>Un assistant de création de formulaire vous aidera à mettre en place des formulaires tout aussi simple que complexes.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="9"/></start></selection><noselection>Exemple d''affichage du module Formulaire</noselection><display><htmltemplate><a  href="{{href}}">Exemple d''affichage du module Formulaire</a></htmltemplate></display></atm-linx></p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(258, 3, 'first', '8be44600466b3bd947f5b2c5cb45bf01', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(672, 33, 'first', 'adbbb020aeadb2df9957a83e19e55211', 'texte', '<p>Automne se distingue de ses concurrents grâce notamment à :</p>\n<ul>\n    <li>une interface administrateur<strong>&#160;ergonomique, intuitive et réactive;</strong></li>\n    <li>l''intégration de l''interface sur votre site, pas de backoffice;</li>\n    <li>une prise en main rapide qui ne demande aucune connaissance technique;</li>\n    <li><strong>une aide contextuelle</strong>&#160;omniprésente dans le logiciel;</li>\n    <li>un assistant de création de modules personnalisés;</li>\n    <li>une optimisation des performances native;&#160;</li>\n    <li>l''utilisation d''outils de briques technologiques modernes et éprouvés : PHP5, ExtJS, Zend Framework, etc. ;</li>\n    <li>gestion des <strong>langues internationales</strong>&#160;et des alphabets particuliers;</li>\n    <li>l''intégration d''un moteur de recherche full-text pour les contenus;</li>\n    <li>et bien plus encore ...</li>\n</ul>\n<p>Mais surtout, Automne est maintenu par une équipe de professionnels passionnés !</p>\n<ul>\n    <li><a target="_blank" href="http://www.automne-cms.org/forum/">Ils vous aideront</a> à faire en sorte que votre projet devienne réalité.</li>\n    <li>Ils écouteront <a target="_blank" href="http://www.automne-cms.org/bug/">vos remarques</a> et <a target="_blank" href="http://www.automne-cms.org/todo/">vos idées</a> pour améliorer les versions futures.</li>\n</ul>\n<p>Nous ne sommes pas une communauté de millions d''utilisateurs au milieu desquels vous n''êtes qu''un numéro. Pour une fois, vos retours comptent vraiment, alors ...</p>\n<p>N''hésitez pas à faire appel à nous !</p>');

-- --------------------------------------------------------

--
-- Structure de la table `blocksVarchars_archived`
--

DROP TABLE IF EXISTS `blocksVarchars_archived`;
CREATE TABLE `blocksVarchars_archived` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksVarchars_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksVarchars_deleted`
--

DROP TABLE IF EXISTS `blocksVarchars_deleted`;
CREATE TABLE `blocksVarchars_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksVarchars_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksVarchars_edited`
--

DROP TABLE IF EXISTS `blocksVarchars_edited`;
CREATE TABLE `blocksVarchars_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksVarchars_edited`
--

INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(50, 2, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 'stitre', ' Automne, la gestion de contenu libre et intuitive');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(54, 29, 'first', '6600f0d4c66704194be3cfd3b144cc51', 'titre', 'Automne');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(43, 35, 'first', 'bd159ce9706787ad5cdda03cbd03de7e', 'titre', 'Gestion des droits');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(46, 38, 'first', '3a8e6888f4d5e7036861b7863814f35e', 'stitre', 'Aide technique');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(30, 31, 'first', '2e05b6ab8648c84e56b486ea0bbf09fc', 'titre', 'Exemples de modules');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(34, 8, 'first', 'd2d4e5e21d0e19cc40dfc62fa94d20df', 'titre', 'Plan du site');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(39, 25, 'first', 'f9cbbf6b3c5ac7cbb1a803ab380d36f3', 'titre', 'Les modèles de pages');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(36, 24, 'first', 'd92af30786e78deab57f106f9398e830', 'stitre', 'Les grands principes d''Automne\n');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(33, 9, 'first', '9ce6e306ff41794fc8cac477c349a086', 'titre', 'Contact');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(59, 9, 'first', '759d757b5beb586dd93fecdbd1cd6c3b', 'titre', 'WS Interactive, 15 quai Lombard 31000 Toulouse, France');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(31, 24, 'first', '26396451d4054e05237066375ccd6e8e', 'titre', 'Fonctionnalités');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(38, 26, 'first', '51acc66642f99a940dc8eb94504c131b', 'titre', 'Les rangées de contenu');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(40, 27, 'first', '5d7229d29d8f71d7b30d9f830db58735', 'titre', 'Les modules de gestion');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(42, 28, 'first', '7be68b66b22b4b190536a89f91d4da32', 'titre', 'Gestion des utilisateurs');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(44, 35, 'first', '18f076b2de7e3b4310097f83ac547533', 'stitre', 'Contrôle d''accès à base de rôles');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(45, 37, 'first', 'f94004914e89f986916e96a4731db322', 'titre', 'Le circuit de validation');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(24, 38, 'first', 'e76f4966a4808ea827d71853fd371ee3', 'stitre', 'Aide contextuelle');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(47, 38, 'first', '67834d6b4d508349b9b2892e4932e718', 'stitre', 'Moteur de recherche interne');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(49, 34, 'first', '3b670218b85e117891afe278e7049563', 'titre', 'Fonctionnalités avancées');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(51, 5, 'first', '413bd2c305740ddba9c4883228604ab1', 'titre', 'Actualités');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(52, 6, 'first', '608b203e1d2422c57d5f890bcef33f36', 'titre', 'Médiathèque');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 29, 'first', 'ef68332801171f3678986a9192ea85db', 'stitre', '');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(57, 33, 'first', 'b5e288a53dc78ea05a6535356abeac07', 'titre', 'Points forts');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(56, 30, 'first', '59655220bef9a6a88d8c2e35b30ba1d0', 'titre', 'Pré-requis');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(32, 3, 'first', '8af055ba864f1f9fc7572b993e54c6d7', 'titre', 'Présentation');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(48, 38, 'first', 'e1c9a76f8a25f03b479f1aaac1d48932', 'titre', 'L''aide aux utilisateurs');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(4, 3, 'first', 'a909549cfffa588cae12e01ad4152f1f8', 'titre', 'Présentation Titre h1');

-- --------------------------------------------------------

--
-- Structure de la table `blocksVarchars_edition`
--

DROP TABLE IF EXISTS `blocksVarchars_edition`;
CREATE TABLE `blocksVarchars_edition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksVarchars_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `blocksVarchars_public`
--

DROP TABLE IF EXISTS `blocksVarchars_public`;
CREATE TABLE `blocksVarchars_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` int(11) unsigned NOT NULL default '0',
  `clientSpaceID` varchar(100) NOT NULL default '',
  `rowID` varchar(100) NOT NULL default '',
  `blockID` varchar(100) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `page` (`page`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `blocksVarchars_public`
--

INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(50, 2, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 'stitre', ' Automne, la gestion de contenu libre et intuitive');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(4, 3, 'first', 'a909549cfffa588cae12e01ad4152f1f8', 'titre', 'Présentation Titre h1');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(43, 35, 'first', 'bd159ce9706787ad5cdda03cbd03de7e', 'titre', 'Gestion des droits');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(48, 38, 'first', 'e1c9a76f8a25f03b479f1aaac1d48932', 'titre', 'L''aide aux utilisateurs');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(30, 31, 'first', '2e05b6ab8648c84e56b486ea0bbf09fc', 'titre', 'Exemples de modules');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(34, 8, 'first', 'd2d4e5e21d0e19cc40dfc62fa94d20df', 'titre', 'Plan du site');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(39, 25, 'first', 'f9cbbf6b3c5ac7cbb1a803ab380d36f3', 'titre', 'Les modèles de pages');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(31, 24, 'first', '26396451d4054e05237066375ccd6e8e', 'titre', 'Fonctionnalités');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(59, 9, 'first', '759d757b5beb586dd93fecdbd1cd6c3b', 'titre', 'WS Interactive, 15 quai Lombard 31000 Toulouse, France');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(33, 9, 'first', '9ce6e306ff41794fc8cac477c349a086', 'titre', 'Contact');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(36, 24, 'first', 'd92af30786e78deab57f106f9398e830', 'stitre', 'Les grands principes d''Automne\n');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(38, 26, 'first', '51acc66642f99a940dc8eb94504c131b', 'titre', 'Les rangées de contenu');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(40, 27, 'first', '5d7229d29d8f71d7b30d9f830db58735', 'titre', 'Les modules de gestion');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(42, 28, 'first', '7be68b66b22b4b190536a89f91d4da32', 'titre', 'Gestion des utilisateurs');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(44, 35, 'first', '18f076b2de7e3b4310097f83ac547533', 'stitre', 'Contrôle d''accès à base de rôles');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(45, 37, 'first', 'f94004914e89f986916e96a4731db322', 'titre', 'Le circuit de validation');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(47, 38, 'first', '67834d6b4d508349b9b2892e4932e718', 'stitre', 'Moteur de recherche interne');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(24, 38, 'first', 'e76f4966a4808ea827d71853fd371ee3', 'stitre', 'Aide contextuelle');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(46, 38, 'first', '3a8e6888f4d5e7036861b7863814f35e', 'stitre', 'Aide technique');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(49, 34, 'first', '3b670218b85e117891afe278e7049563', 'titre', 'Fonctionnalités avancées');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(51, 5, 'first', '413bd2c305740ddba9c4883228604ab1', 'titre', 'Actualités');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(52, 6, 'first', '608b203e1d2422c57d5f890bcef33f36', 'titre', 'Médiathèque');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(54, 29, 'first', '6600f0d4c66704194be3cfd3b144cc51', 'titre', 'Automne');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(57, 33, 'first', 'b5e288a53dc78ea05a6535356abeac07', 'titre', 'Points forts');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(56, 30, 'first', '59655220bef9a6a88d8c2e35b30ba1d0', 'titre', 'Pré-requis');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(32, 3, 'first', '8af055ba864f1f9fc7572b993e54c6d7', 'titre', 'Présentation');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 29, 'first', 'ef68332801171f3678986a9192ea85db', 'stitre', '');

-- --------------------------------------------------------

--
-- Structure de la table `contactDatas`
--

DROP TABLE IF EXISTS `contactDatas`;
CREATE TABLE `contactDatas` (
  `id_cd` int(11) unsigned NOT NULL auto_increment,
  `service_cd` varchar(100) NOT NULL default '',
  `jobTitle_cd` varchar(100) NOT NULL default '',
  `addressField1_cd` varchar(255) NOT NULL default '',
  `addressField2_cd` varchar(255) NOT NULL default '',
  `addressField3_cd` varchar(255) NOT NULL default '',
  `zip_cd` varchar(20) NOT NULL default '',
  `city_cd` varchar(100) NOT NULL default '',
  `state_cd` varchar(50) NOT NULL default '',
  `country_cd` varchar(100) NOT NULL default '',
  `phone_cd` varchar(20) NOT NULL default '',
  `cellphone_cd` varchar(20) NOT NULL default '',
  `fax_cd` varchar(20) NOT NULL default '',
  `email_cd` varchar(255) NOT NULL default '',
  `company_cd` varchar(255) NOT NULL,
  `gender_cd` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_cd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contactDatas`
--

INSERT INTO `contactDatas` (`id_cd`, `service_cd`, `jobTitle_cd`, `addressField1_cd`, `addressField2_cd`, `addressField3_cd`, `zip_cd`, `city_cd`, `state_cd`, `country_cd`, `phone_cd`, `cellphone_cd`, `fax_cd`, `email_cd`, `company_cd`, `gender_cd`) VALUES(1, '', '', '', '', '', '', '', '', '', '', '', '', 'root@localhost', '', '');
INSERT INTO `contactDatas` (`id_cd`, `service_cd`, `jobTitle_cd`, `addressField1_cd`, `addressField2_cd`, `addressField3_cd`, `zip_cd`, `city_cd`, `state_cd`, `country_cd`, `phone_cd`, `cellphone_cd`, `fax_cd`, `email_cd`, `company_cd`, `gender_cd`) VALUES(3, '', '', '', '', '', '', '', '', '', '', '', '', 'nobody@localhost', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `code_lng` varchar(5) NOT NULL default '',
  `label_lng` varchar(50) NOT NULL default '',
  `dateFormat_lng` varchar(5) NOT NULL default 'm/d/Y',
  `availableForBackoffice_lng` tinyint(4) NOT NULL default '0',
  `modulesDenied_lng` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`code_lng`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`code_lng`, `label_lng`, `dateFormat_lng`, `availableForBackoffice_lng`, `modulesDenied_lng`) VALUES('fr', 'Français', 'd/m/Y', 1, '');
INSERT INTO `languages` (`code_lng`, `label_lng`, `dateFormat_lng`, `availableForBackoffice_lng`, `modulesDenied_lng`) VALUES('en', 'English', 'm/d/Y', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `linx_real_public`
--

DROP TABLE IF EXISTS `linx_real_public`;
CREATE TABLE `linx_real_public` (
  `start_lre` int(11) unsigned NOT NULL default '0',
  `stop_lre` int(11) NOT NULL default '0',
  UNIQUE KEY `start_lre` (`start_lre`,`stop_lre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `linx_real_public`
--

INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 29);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 30);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(3, 33);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(5, 36);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(6, 36);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 29);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 30);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 33);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 36);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(8, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(9, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(24, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(25, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(26, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(27, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(28, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 29);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 30);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(29, 33);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 29);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 30);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(30, 33);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(31, 36);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 29);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 30);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(33, 33);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(34, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(35, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 5);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 6);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(36, 36);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(37, 38);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 24);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 25);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 26);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 27);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 28);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 31);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 34);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 35);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 37);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(38, 38);

-- --------------------------------------------------------

--
-- Structure de la table `linx_tree_edited`
--

DROP TABLE IF EXISTS `linx_tree_edited`;
CREATE TABLE `linx_tree_edited` (
  `id_ltr` int(11) unsigned NOT NULL auto_increment,
  `father_ltr` int(11) unsigned NOT NULL default '0',
  `sibling_ltr` int(11) unsigned NOT NULL default '0',
  `order_ltr` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_ltr`),
  KEY `father_ltr` (`father_ltr`),
  KEY `sibling_ltr` (`sibling_ltr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `linx_tree_edited`
--

INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(19, 1, 2, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(20, 2, 3, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(58, 24, 38, 7);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(49, 31, 5, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(51, 31, 6, 2);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(24, 2, 7, 4);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(25, 7, 8, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(26, 7, 9, 2);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(40, 2, 24, 2);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(41, 24, 25, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(42, 24, 26, 2);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(43, 24, 27, 3);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(44, 24, 28, 4);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(45, 3, 29, 1);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(46, 3, 30, 3);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(48, 2, 31, 3);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(53, 3, 33, 2);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(54, 24, 34, 8);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(55, 24, 35, 5);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(56, 31, 36, 3);
INSERT INTO `linx_tree_edited` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(57, 24, 37, 6);

-- --------------------------------------------------------

--
-- Structure de la table `linx_tree_public`
--

DROP TABLE IF EXISTS `linx_tree_public`;
CREATE TABLE `linx_tree_public` (
  `id_ltr` int(11) unsigned NOT NULL auto_increment,
  `father_ltr` int(11) unsigned NOT NULL default '0',
  `sibling_ltr` int(11) unsigned NOT NULL default '0',
  `order_ltr` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_ltr`),
  KEY `father_ltr` (`father_ltr`),
  KEY `sibling_ltr` (`sibling_ltr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `linx_tree_public`
--

INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(61, 1, 2, 1);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(138, 3, 30, 3);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(188, 24, 34, 8);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(101, 2, 3, 1);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(77, 7, 8, 1);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(78, 7, 9, 2);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(106, 2, 24, 2);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(187, 24, 38, 7);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(186, 24, 37, 6);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(185, 24, 35, 5);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(184, 24, 28, 4);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(137, 3, 33, 2);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(136, 3, 29, 1);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(129, 2, 31, 3);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(157, 31, 6, 2);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(156, 31, 5, 1);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(183, 24, 27, 3);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(182, 24, 26, 2);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(158, 31, 36, 3);
INSERT INTO `linx_tree_public` (`id_ltr`, `father_ltr`, `sibling_ltr`, `order_ltr`) VALUES(181, 24, 25, 1);

-- --------------------------------------------------------

--
-- Structure de la table `linx_watch_public`
--

DROP TABLE IF EXISTS `linx_watch_public`;
CREATE TABLE `linx_watch_public` (
  `page_lwa` int(11) unsigned NOT NULL default '0',
  `target_lwa` int(11) unsigned NOT NULL default '0',
  UNIQUE KEY `page_lwa` (`page_lwa`,`target_lwa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `linx_watch_public`
--

INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(2, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(2, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(3, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(3, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(3, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 5);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 6);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 8);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 9);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 25);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 26);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 27);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 28);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 29);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 30);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 33);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 34);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 35);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 36);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 37);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 38);

-- --------------------------------------------------------

--
-- Structure de la table `locks`
--

DROP TABLE IF EXISTS `locks`;
CREATE TABLE `locks` (
  `id_lok` int(11) unsigned NOT NULL auto_increment,
  `resource_lok` int(11) unsigned NOT NULL default '0',
  `locksmithData_lok` int(11) unsigned NOT NULL default '0',
  `date_lok` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_lok`),
  KEY `resource_lok` (`resource_lok`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `locks`
--


-- --------------------------------------------------------

--
-- Structure de la table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) unsigned NOT NULL auto_increment,
  `user_log` int(11) unsigned NOT NULL default '0',
  `action_log` int(11) unsigned NOT NULL default '0',
  `datetime_log` datetime NOT NULL default '0000-00-00 00:00:00',
  `textData_log` mediumtext NOT NULL,
  `label_log` tinytext NOT NULL,
  `module_log` varchar(100) NOT NULL default '',
  `resource_log` int(11) unsigned NOT NULL default '0',
  `rsAfterLocation_log` tinyint(4) unsigned NOT NULL default '0',
  `rsAfterProposedFor_log` tinyint(4) unsigned NOT NULL default '0',
  `rsAfterEditions_log` tinyint(4) unsigned NOT NULL default '0',
  `rsAfterValidationsRefused_log` tinyint(4) unsigned NOT NULL default '0',
  `rsAfterPublication_log` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_log`),
  KEY `user_log` (`user_log`),
  KEY `action_log` (`action_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `log`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id_mes` int(11) unsigned NOT NULL auto_increment,
  `module_mes` varchar(50) NOT NULL,
  `language_mes` varchar(3) NOT NULL,
  `message_mes` text NOT NULL,
  UNIQUE KEY `id` (`id_mes`,`module_mes`,`language_mes`),
  KEY `module` (`module_mes`),
  KEY `language` (`language_mes`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `messages`
--

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id_mod` int(11) unsigned NOT NULL auto_increment,
  `label_mod` int(11) unsigned NOT NULL default '0',
  `codename_mod` varchar(20) NOT NULL default '',
  `administrationFrontend_mod` varchar(100) NOT NULL default '',
  `hasParameters_mod` tinyint(4) NOT NULL default '0',
  `isPolymod_mod` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_mod`),
  KEY `codename_mod` (`codename_mod`),
  KEY `isPolymod_mod` (`isPolymod_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modules`
--

INSERT INTO `modules` (`id_mod`, `label_mod`, `codename_mod`, `administrationFrontend_mod`, `hasParameters_mod`, `isPolymod_mod`) VALUES(1, 243, 'standard', '', 1, 0);
INSERT INTO `modules` (`id_mod`, `label_mod`, `codename_mod`, `administrationFrontend_mod`, `hasParameters_mod`, `isPolymod_mod`) VALUES(2, 1, 'cms_aliases', 'index.php', 0, 0);
INSERT INTO `modules` (`id_mod`, `label_mod`, `codename_mod`, `administrationFrontend_mod`, `hasParameters_mod`, `isPolymod_mod`) VALUES(3, 1, 'cms_forms', 'index.php', 1, 0);
INSERT INTO `modules` (`id_mod`, `label_mod`, `codename_mod`, `administrationFrontend_mod`, `hasParameters_mod`, `isPolymod_mod`) VALUES(4, 1, 'pnews', 'index.php', 0, 1);
INSERT INTO `modules` (`id_mod`, `label_mod`, `codename_mod`, `administrationFrontend_mod`, `hasParameters_mod`, `isPolymod_mod`) VALUES(5, 1, 'pmedia', 'index.php', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `modulesCategories`
--

DROP TABLE IF EXISTS `modulesCategories`;
CREATE TABLE `modulesCategories` (
  `id_mca` int(11) unsigned NOT NULL auto_increment,
  `uuid_mca` varchar(36) NOT NULL,
  `module_mca` varchar(20) NOT NULL default '',
  `parent_mca` int(10) unsigned NOT NULL default '0',
  `root_mca` int(10) unsigned NOT NULL default '0',
  `lineage_mca` varchar(255) NOT NULL default '',
  `order_mca` int(10) unsigned NOT NULL default '1',
  `icon_mca` varchar(255) NOT NULL default '',
  `protected_mca` int(1) NOT NULL,
  PRIMARY KEY  (`id_mca`),
  KEY `module` (`module_mca`),
  KEY `lineage` (`lineage_mca`),
  KEY `parent` (`parent_mca`),
  KEY `root` (`root_mca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modulesCategories`
--

INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(1, 'e595b48c-0baa-102e-80e2-001a6470da26', 'cms_forms', 0, 0, '1', 1, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(2, 'e595b5b8-0baa-102e-80e2-001a6470da26', 'pnews', 0, 0, '2', 2, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(17, 'e595b676-0baa-102e-80e2-001a6470da26', 'pnews', 2, 2, '2;17', 1, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(18, 'e595b734-0baa-102e-80e2-001a6470da26', 'pmedia', 0, 0, '18', 5, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(19, 'e595b7e8-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;19', 3, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(20, 'e595b8a6-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;20', 1, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(21, 'e595b964-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;21', 2, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(22, 'e595ba18-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;22', 4, '', 0);
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`, `protected_mca`) VALUES(23, '6b8a50e6-e172-102e-9870-001a6470da26', 'pmedia', 18, 18, '18;23', 5, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `modulesCategories_clearances`
--

DROP TABLE IF EXISTS `modulesCategories_clearances`;
CREATE TABLE `modulesCategories_clearances` (
  `id_mcc` int(11) unsigned NOT NULL auto_increment,
  `profile_mcc` int(11) unsigned NOT NULL default '0',
  `category_mcc` int(10) unsigned NOT NULL default '0',
  `clearance_mcc` tinyint(16) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_mcc`),
  UNIQUE KEY `profilecategories` (`profile_mcc`,`category_mcc`),
  KEY `profile` (`profile_mcc`),
  KEY `category` (`category_mcc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modulesCategories_clearances`
--

INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(669, 1, 1, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(172, 3, 2, 1);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(171, 3, 1, 1);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(670, 1, 2, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(671, 1, 18, 3);

-- --------------------------------------------------------

--
-- Structure de la table `modulesCategories_i18nm`
--

DROP TABLE IF EXISTS `modulesCategories_i18nm`;
CREATE TABLE `modulesCategories_i18nm` (
  `id_mcl` int(11) unsigned NOT NULL auto_increment,
  `category_mcl` int(11) unsigned NOT NULL default '0',
  `language_mcl` char(5) NOT NULL default 'en',
  `label_mcl` varchar(255) NOT NULL default '',
  `description_mcl` text NOT NULL,
  `file_mcl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_mcl`),
  UNIQUE KEY `categoryperlang` (`category_mcl`,`language_mcl`),
  KEY `category` (`category_mcl`),
  KEY `language` (`language_mcl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modulesCategories_i18nm`
--

INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(167, 1, 'en', 'Forms', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(168, 1, 'fr', 'Formulaire', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(155, 2, 'en', 'News', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(156, 2, 'fr', 'Actualités', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(27, 6, 'en', 'Documents', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(28, 6, 'fr', 'Documents', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(71, 14, 'en', 'Pictures', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(72, 14, 'fr', 'Photos', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(161, 17, 'en', 'News item', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(162, 17, 'fr', 'Actualité', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(113, 18, 'en', 'Media', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(114, 18, 'fr', 'Média', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(131, 19, 'en', 'Movie', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(132, 19, 'fr', 'Vidéo', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(119, 20, 'en', 'Image', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(120, 20, 'fr', 'Image', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(125, 21, 'en', 'Document', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(126, 21, 'fr', 'Document', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(144, 22, 'fr', 'Audio', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(143, 22, 'en', 'Audio', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(173, 23, 'en', 'Slideshow', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(174, 23, 'fr', 'Diaporama', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_aliases`
--

DROP TABLE IF EXISTS `mod_cms_aliases`;
CREATE TABLE `mod_cms_aliases` (
  `id_ma` int(11) unsigned NOT NULL auto_increment,
  `parent_ma` int(11) unsigned NOT NULL default '0',
  `page_ma` int(11) NOT NULL default '0',
  `url_ma` varchar(255) NOT NULL default '',
  `alias_ma` varchar(255) NOT NULL default '',
  `websites_ma` varchar(255) NOT NULL,
  `replace_ma` int(1) unsigned NOT NULL,
  `permanent_ma` int(1) unsigned NOT NULL,
  `protected_ma` int(1) unsigned NOT NULL,
  PRIMARY KEY  (`id_ma`),
  KEY `alias_ma` (`alias_ma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_aliases`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_actions`
--

DROP TABLE IF EXISTS `mod_cms_forms_actions`;
CREATE TABLE `mod_cms_forms_actions` (
  `id_act` int(10) unsigned NOT NULL auto_increment,
  `form_act` int(11) unsigned NOT NULL default '0',
  `value_act` mediumtext NOT NULL,
  `type_act` tinyint(2) unsigned NOT NULL default '0',
  `text_act` mediumtext NOT NULL,
  PRIMARY KEY  (`id_act`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_actions`
--

INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(7, 2, 'text', 0, '');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(8, 2, '', 2, '');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(9, 2, 'text', 99, 'Votre demande a été envoyée par email. Vous recevrez une réponse rapidement.');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(10, 2, 'text', 1, 'La saisie des champs suivants est incorrecte.');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(11, 2, 'root@localhost', 3, 'Demande de contact§§Le message ci-dessous a été posté depuis le formulaire de contact de la démonstration d''Automne :§§');

-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_categories`
--

DROP TABLE IF EXISTS `mod_cms_forms_categories`;
CREATE TABLE `mod_cms_forms_categories` (
  `id_fca` int(11) unsigned NOT NULL auto_increment,
  `form_fca` int(11) unsigned NOT NULL default '0',
  `category_fca` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_fca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_categories`
--

INSERT INTO `mod_cms_forms_categories` (`id_fca`, `form_fca`, `category_fca`) VALUES(3, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_fields`
--

DROP TABLE IF EXISTS `mod_cms_forms_fields`;
CREATE TABLE `mod_cms_forms_fields` (
  `id_fld` int(11) unsigned NOT NULL auto_increment,
  `form_fld` int(11) unsigned NOT NULL default '0',
  `name_fld` varchar(32) NOT NULL default '',
  `label_fld` varchar(255) NOT NULL default '',
  `defaultValue_fld` mediumtext NOT NULL,
  `dataValidation_fld` varchar(100) NOT NULL default '',
  `type_fld` varchar(255) NOT NULL default '',
  `options_fld` mediumtext NOT NULL,
  `required_fld` int(1) NOT NULL default '0',
  `active_fld` int(1) NOT NULL default '0',
  `order_fld` int(11) unsigned NOT NULL default '0',
  `params_fld` mediumtext NOT NULL,
  PRIMARY KEY  (`id_fld`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_fields`
--

INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(11, 2, '54b8a11ea29b491d40561eb321aed37f', 'Nom *', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 0, '');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(12, 2, '5d62b28a2c474455ae3a937127cf7204', 'Prénom *', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 1, '');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(13, 2, '4f77750ba5f191904e9aaab3acab488d', 'Email *', '', '', 'email', 'a:1:{s:0:"";s:0:"";}', 1, 1, 2, '');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(14, 2, '4005693f0d616bab1865d71fea32d1f6', 'Sujet du message *', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 3, '');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(15, 2, '778a8c9cce20558836139d64c7d403c0', 'Message *', '', '', 'textarea', 'a:1:{s:0:"";s:0:"";}', 1, 1, 5, '');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(16, 2, '8e17e732a07c18b447c226014789627c', 'Envoyer', 'Envoyer', '', 'submit', 'a:1:{s:0:"";s:0:"";}', 0, 1, 4, '');

-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_formulars`
--

DROP TABLE IF EXISTS `mod_cms_forms_formulars`;
CREATE TABLE `mod_cms_forms_formulars` (
  `id_frm` int(11) unsigned NOT NULL auto_increment,
  `name_frm` varchar(255) NOT NULL default '',
  `source_frm` text NOT NULL,
  `language_frm` char(5) NOT NULL default 'en',
  `owner_frm` int(11) unsigned NOT NULL default '0',
  `closed_frm` tinyint(1) NOT NULL default '0',
  `destinationType_frm` int(2) NOT NULL default '0',
  `DestinationData_frm` mediumtext NOT NULL,
  `responses_frm` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_frm`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_formulars`
--

INSERT INTO `mod_cms_forms_formulars` (`id_frm`, `name_frm`, `source_frm`, `language_frm`, `owner_frm`, `closed_frm`, `destinationType_frm`, `DestinationData_frm`, `responses_frm`) VALUES(2, 'Contact', '<form id="cms_forms_2">\n    <table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">\n        <tbody>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzExX3JlcQ==">Nom * </label></td>\n                <td><input type="text" name="54b8a11ea29b491d40561eb321aed37f" id="zY21zX2ZpZWxkXzExX3JlcQ==" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzEyX3JlcQ==">Prénom * </label></td>\n                <td><input type="text" name="5d62b28a2c474455ae3a937127cf7204" id="zY21zX2ZpZWxkXzEyX3JlcQ==" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzEzX2VtYWlsX3JlcQ==">Email * </label></td>\n                <td><input type="text" name="4f77750ba5f191904e9aaab3acab488d" id="zY21zX2ZpZWxkXzEzX2VtYWlsX3JlcQ==" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzE0X3JlcQ==">Sujet du message * </label></td>\n                <td><input type="text" name="4005693f0d616bab1865d71fea32d1f6" id="zY21zX2ZpZWxkXzE0X3JlcQ==" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzE1X3JlcQ==">Message * </label></td>\n                <td><textarea name="778a8c9cce20558836139d64c7d403c0" id="zY21zX2ZpZWxkXzE1X3JlcQ=="></textarea></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;">&#160;</td>\n                <td><input type="submit" value="Envoyer" name="8e17e732a07c18b447c226014789627c" class="button" id="zY21zX2ZpZWxkXzE2" /></td>\n            </tr>\n        </tbody>\n    </table>\n</form>', 'fr', 4, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_records`
--

DROP TABLE IF EXISTS `mod_cms_forms_records`;
CREATE TABLE `mod_cms_forms_records` (
  `id_rec` int(11) unsigned NOT NULL auto_increment,
  `sending_rec` int(11) unsigned NOT NULL default '0',
  `field_rec` int(11) unsigned NOT NULL default '0',
  `value_rec` text NOT NULL,
  PRIMARY KEY  (`id_rec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_records`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_cms_forms_senders`
--

DROP TABLE IF EXISTS `mod_cms_forms_senders`;
CREATE TABLE `mod_cms_forms_senders` (
  `id_snd` int(11) unsigned NOT NULL auto_increment,
  `clientIP_snd` varchar(255) NOT NULL default '',
  `dateInserted_snd` datetime default '0000-00-00 00:00:00',
  `sessionID_snd` varchar(100) NOT NULL default '',
  `userAgent_snd` varchar(255) NOT NULL default '',
  `languages_snd` varchar(255) NOT NULL default '',
  `userID_snd` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_snd`),
  KEY `userID_snd` (`userID_snd`),
  KEY `sessionID_snd` (`sessionID_snd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_cms_forms_senders`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_object_definition`
--

DROP TABLE IF EXISTS `mod_object_definition`;
CREATE TABLE `mod_object_definition` (
  `id_mod` int(11) unsigned NOT NULL auto_increment,
  `uuid_mod` varchar(36) NOT NULL,
  `label_id_mod` int(11) unsigned NOT NULL default '0',
  `description_id_mod` int(11) unsigned NOT NULL default '0',
  `resource_usage_mod` int(2) unsigned NOT NULL default '0',
  `module_mod` varchar(255) NOT NULL default '',
  `admineditable_mod` int(1) unsigned NOT NULL default '0',
  `composedLabel_mod` varchar(255) NOT NULL default '',
  `previewURL_mod` varchar(255) NOT NULL default '',
  `indexable_mod` int(1) NOT NULL default '0',
  `indexURL_mod` mediumtext NOT NULL,
  `compiledIndexURL_mod` mediumtext NOT NULL,
  `resultsDefinition_mod` mediumtext NOT NULL,
  PRIMARY KEY  (`id_mod`),
  KEY `module_mod` (`module_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_definition`
--

INSERT INTO `mod_object_definition` (`id_mod`, `uuid_mod`, `label_id_mod`, `description_id_mod`, `resource_usage_mod`, `module_mod`, `admineditable_mod`, `composedLabel_mod`, `previewURL_mod`, `indexable_mod`, `indexURL_mod`, `compiledIndexURL_mod`, `resultsDefinition_mod`) VALUES(1, 'e583bc28-0baa-102e-80e2-001a6470da26', 1, 2, 1, 'pnews', 0, '', '5||item={[''object1''][''id'']}', 0, '', '', '');
INSERT INTO `mod_object_definition` (`id_mod`, `uuid_mod`, `label_id_mod`, `description_id_mod`, `resource_usage_mod`, `module_mod`, `admineditable_mod`, `composedLabel_mod`, `previewURL_mod`, `indexable_mod`, `indexURL_mod`, `compiledIndexURL_mod`, `resultsDefinition_mod`) VALUES(2, 'e583bd90-0baa-102e-80e2-001a6470da26', 70, 71, 1, 'pmedia', 0, '', '6||item={[''object2''][''id'']}', 0, '', '', '<div class="pmedias">\r\n	<atm-if name="oembed" what="{[''object2''][''fields''][10][''hasValue'']}">\r\n		<div style="float:right;" class="pmedias-oembed">{[''object2''][''fields''][10][''html'']|320,250}</div>\r\n		<atm-if name="oembedTitle" what="{[''object2''][''fields''][10][''url'']} &amp;&amp; {[''object2''][''fields''][10][''title'']}">\r\n			<p>Média : <a href="{[''object2''][''fields''][10][''url'']}" target="_blank"><strong>{[''object2''][''fields''][10][''title'']}</strong></a></p>\r\n		</atm-if>\r\n		<atm-else for="oembedTitle" what="{[''object2''][''fields''][10][''title'']}">\r\n			<p>Média : <strong>{[''object2''][''fields''][10][''title'']}</strong></p>\r\n		</atm-else>\r\n		<atm-if name="oembedAuthor" what="{[''object2''][''fields''][10][''authorName'']} &amp;&amp; {[''object2''][''fields''][10][''authorUrl'']}">\r\n			<p>Auteur : <a href="{[''object2''][''fields''][10][''authorUrl'']}" target="_blank"><strong>{[''object2''][''fields''][10][''authorName'']}</strong></a></p>\r\n		</atm-if>\r\n		<atm-else for="oembedAuthor" what="{[''object2''][''fields''][10][''authorName'']}">\r\n			<p>Auteur : <strong>{[''object2''][''fields''][10][''authorName'']}</strong></p>\r\n		</atm-else>\r\n		<atm-if name="oembedSource" what="{[''object2''][''fields''][10][''providerName'']} &amp;&amp; {[''object2''][''fields''][10][''providerUrl'']}">\r\n			<p>Source : <a href="{[''object2''][''fields''][10][''providerUrl'']}" target="_blank"><strong>{[''object2''][''fields''][10][''providerName'']}</strong></a></p>\r\n		</atm-if>\r\n		<atm-else for="oembedSource" what="{[''object2''][''fields''][10][''providerName'']}">\r\n			<p>Source : <strong>{[''object2''][''fields''][10][''providerName'']}</strong></p>\r\n		</atm-else>\r\n		<p>{[''object2''][''fields''][8][''fieldname'']} : <strong>{[''object2''][''fields''][8][''label'']}</strong></p>\r\n	</atm-if>\r\n	<atm-else for="oembed">\r\n		<atm-if what="{[''object2''][''fields''][9][''filename'']}">\r\n			<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''flv''">\r\n				<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n					<script type="text/javascript">\r\n						swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml'', startimage:''{[''object2''][''fields''][9][''thumb'']}''}, {allowfullscreen:true, wmode:''transparent''}, {''style'':''float:right;''});\r\n					</script>\r\n				</atm-if>\r\n				<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n					<script type="text/javascript">\r\n						swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, {''style'':''float:right;''});\r\n					</script>\r\n				</atm-if>\r\n				<div id="media-{[''object2''][''id'']}" class="pmedias-video" style="width:320px;height:200px;float:right;">\r\n					<p><a href="http://www.adobe.com/go/getflashplayer" target="_blank"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n				</div>\r\n			</atm-if>\r\n			<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''mp3''">\r\n				<script type="text/javascript">\r\n					swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playermp3/player_mp3.swf'', ''media-{[''object2''][''id'']}'', ''200'', ''20'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {mp3:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, {''style'':''float:right;''});\r\n				</script>\r\n				<div id="media-{[''object2''][''id'']}" class="pmedias-audio" style="width:200px;height:20px;float:right;">\r\n					<p><a href="http://www.adobe.com/go/getflashplayer" target="_blank"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n				</div>\r\n			</atm-if>\r\n			<atm-if what="{[''object2''][''fields''][9][''thumbname'']} &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''flv'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''mp3''">\r\n				<p style="float:right;" class="pmedias-file"><a href="{[''object2''][''fields''][9][''file'']}" target="_blank"><img src="{[''object2''][''fields''][9][''thumb'']|200}" /></a></p>\r\n			</atm-if>\r\n			<atm-if what="!{[''object2''][''fields''][9][''thumbname'']} &amp;&amp; ({[''object2''][''fields''][9][''fileExtension'']} == ''jpg'' || {[''object2''][''fields''][9][''fileExtension'']} == ''gif'' || {[''object2''][''fields''][9][''fileExtension'']} == ''png'')">\r\n				<p style="float:right;" class="pmedias-image"><a href="{[''object2''][''fields''][9][''file'']}" target="_blank"><img src="{[''object2''][''fields''][9][''file'']|200}" /></a></p>\r\n			</atm-if>\r\n			<p>{[''object2''][''fields''][9][''fieldname'']} : <strong><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="{[''object2''][''fields''][9][''fileExtension'']}" title="{[''object2''][''fields''][9][''fileExtension'']}" /></atm-if> {[''object2''][''fields''][9][''fileHTML'']} ({[''object2''][''fields''][9][''fileSize'']}Mo)</strong></p>\r\n		</atm-if>\r\n		<p>{[''object2''][''fields''][8][''fieldname'']} : <strong>{[''object2''][''fields''][8][''label'']}</strong></p>\r\n	</atm-else>\r\n	<div style="clear:both;"> </div>\r\n</div>');

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_field`
--

DROP TABLE IF EXISTS `mod_object_field`;
CREATE TABLE `mod_object_field` (
  `id_mof` int(11) unsigned NOT NULL auto_increment,
  `uuid_mof` varchar(36) NOT NULL,
  `object_id_mof` int(11) unsigned NOT NULL default '0',
  `label_id_mof` int(11) unsigned NOT NULL default '0',
  `desc_id_mof` int(11) unsigned NOT NULL default '0',
  `type_mof` varchar(255) NOT NULL default '',
  `order_mof` int(11) unsigned NOT NULL default '0',
  `system_mof` int(1) unsigned NOT NULL default '0',
  `required_mof` int(1) unsigned NOT NULL default '0',
  `indexable_mof` int(1) unsigned NOT NULL default '0',
  `searchlist_mof` int(1) unsigned NOT NULL default '0',
  `searchable_mof` int(1) unsigned NOT NULL default '0',
  `params_mof` mediumtext NOT NULL,
  PRIMARY KEY  (`id_mof`),
  KEY `object_id_mof` (`object_id_mof`,`type_mof`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_field`
--

INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(1, 'e58dfdbe-0baa-102e-80e2-001a6470da26', 1, 3, 0, 'CMS_object_string', 1, 0, 1, 0, 0, 1, 'a:3:{s:9:"maxLength";s:3:"255";s:7:"isEmail";b:0;s:8:"matchExp";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(2, 'e58dfef4-0baa-102e-80e2-001a6470da26', 1, 4, 5, 'CMS_object_text', 3, 0, 1, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:3:"550";s:13:"toolbarHeight";s:3:"200";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(3, 'e58dffc6-0baa-102e-80e2-001a6470da26', 1, 6, 7, 'CMS_object_text', 4, 0, 0, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:3:"550";s:13:"toolbarHeight";s:3:"500";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(11, '564f56fe-fde2-102e-9870-001a6470da26', 1, 93, 94, '2', 5, 0, 0, 0, 1, 0, 'a:2:{s:15:"searchedObjects";a:1:{i:8;s:1:"0";}s:14:"loadSubObjects";b:0;}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(5, 'e58e016a-0baa-102e-80e2-001a6470da26', 1, 9, 0, 'CMS_object_categories', 2, 0, 1, 0, 1, 1, 'a:6:{s:15:"multiCategories";b:0;s:12:"rootCategory";s:1:"2";s:12:"defaultValue";s:0:"";s:15:"associateUnused";b:0;s:11:"selectWidth";s:0:"";s:12:"selectHeight";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(6, 'e58e023c-0baa-102e-80e2-001a6470da26', 2, 80, 0, 'CMS_object_string', 1, 0, 1, 0, 0, 1, 'a:3:{s:9:"maxLength";s:3:"255";s:7:"isEmail";b:0;s:8:"matchExp";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(7, 'e58e0304-0baa-102e-80e2-001a6470da26', 2, 83, 0, 'CMS_object_text', 2, 0, 0, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:4:"100%";s:13:"toolbarHeight";s:3:"200";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(8, 'e58e03d6-0baa-102e-80e2-001a6470da26', 2, 84, 0, 'CMS_object_categories', 3, 0, 1, 0, 1, 1, 'a:6:{s:15:"multiCategories";b:0;s:12:"rootCategory";s:2:"18";s:12:"defaultValue";s:0:"";s:15:"associateUnused";b:0;s:11:"selectWidth";s:0:"";s:12:"selectHeight";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(9, 'e58e049e-0baa-102e-80e2-001a6470da26', 2, 85, 86, 'CMS_object_file', 5, 0, 0, 0, 1, 1, 'a:8:{s:12:"useThumbnail";b:1;s:13:"thumbMaxWidth";s:0:"";s:14:"thumbMaxHeight";s:0:"";s:9:"fileIcons";a:18:{s:3:"doc";s:7:"doc.gif";s:3:"gif";s:7:"gif.gif";s:4:"html";s:8:"html.gif";s:3:"htm";s:8:"html.gif";s:3:"jpg";s:7:"jpg.gif";s:4:"jpeg";s:7:"jpg.gif";s:3:"jpe";s:7:"jpg.gif";s:3:"mov";s:7:"mov.gif";s:3:"mp3";s:7:"mp3.gif";s:3:"pdf";s:7:"pdf.gif";s:3:"png";s:7:"png.gif";s:3:"ppt";s:7:"ppt.gif";s:3:"pps";s:7:"ppt.gif";s:3:"swf";s:7:"swf.gif";s:3:"sxw";s:7:"sxw.gif";s:3:"url";s:7:"url.gif";s:3:"xls";s:7:"xls.gif";s:3:"xml";s:7:"xml.gif";}s:8:"allowFtp";b:0;s:6:"ftpDir";s:13:"/automne/tmp/";s:11:"allowedType";s:0:"";s:14:"disallowedType";s:31:"exe,php,pif,vbs,bat,com,scr,reg";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(10, '0fd1e174-dcea-102e-9870-001a6470da26', 2, 91, 92, 'CMS_object_oembed', 4, 0, 0, 0, 0, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_i18nm`
--

DROP TABLE IF EXISTS `mod_object_i18nm`;
CREATE TABLE `mod_object_i18nm` (
  `id_i18nm` int(11) unsigned NOT NULL auto_increment,
  `code_i18nm` char(5) NOT NULL default '',
  `value_i18nm` mediumtext NOT NULL,
  UNIQUE KEY `id` (`id_i18nm`,`code_i18nm`),
  KEY `code` (`code_i18nm`),
  KEY `id_2` (`id_i18nm`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_i18nm`
--

INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(1, 'fr', 'Actualités');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(1, 'en', 'News');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(2, 'fr', 'Cet élément permet de saisir des textes catégorisés et soumis à une date de publication.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(2, 'en', 'This item allows you to enter texts categorized and subject to publication date.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(3, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(3, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(4, 'fr', 'Introduction');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(4, 'en', 'Introduction');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(5, 'fr', 'Visible sur la page d''accueil');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(5, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(6, 'fr', 'Texte');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(6, 'en', 'Text');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(7, 'fr', 'Ce texte sera visible dans le détail d''une actualité');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(7, 'en', 'This text will be visible in the news detail');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(93, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(93, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(9, 'fr', 'Catégorie');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(9, 'en', 'Category');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(10, 'fr', 'Automne : Actualités');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(10, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(11, 'fr', 'Fil RSS des actualités de la démonstration d''Automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(11, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(13, 'fr', 'Un document est un fichier Word, PDF au autre complété par un titre, une description, etc.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(13, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(20, 'fr', 'Insérez un lien vers un document français dans vos textes.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(20, 'en', 'Insert a link to a french document into your texts');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(22, 'fr', 'Insérez un lien vers un document anglais dans vos textes');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(22, 'en', 'Insert a link to an english document into your texts');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(24, 'fr', 'Cette ressource permet de publier des images soumises à validation');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(24, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(26, 'fr', 'Permet de catégoriser les images');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(26, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(29, 'fr', 'Titre de l''image');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(29, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(31, 'fr', 'Image de la photothèque, alignée à droite');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(31, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(33, 'fr', 'Image de la photothèque, alignée à gauche');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(33, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(34, 'fr', 'RSS de la photothèque');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(34, 'en', 'Pictures RSS');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(35, 'fr', 'Fil RSS de la photothèque');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(35, 'en', 'Pictures RSS feed');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(36, 'fr', 'Actualités de Automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(36, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(37, 'fr', 'Flux RSS du site de démonstration d''automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(37, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(38, 'fr', 'Actualités de Automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(38, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(39, 'fr', 'Flux RSS du site de démonstration d''automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(39, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(40, 'fr', 'Actualités de la démo Automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(40, 'en', 'News of Automne demo');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(41, 'fr', 'Flux RSS du site de démonstration d''Automne');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(41, 'en', 'RSS feed of the Automne demonstration website.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(42, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(42, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(43, 'fr', 'Fichier média à télécharger. Ce peut-être une vidéo (flv), un son (mp3), une image (jpg, png, gif) ou bien tout autre document (doc, pdf, txt, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(43, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(44, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(44, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(45, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(45, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(46, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(46, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(47, 'fr', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(47, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(48, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(48, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(49, 'fr', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(49, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(50, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(50, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(51, 'fr', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(51, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(52, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(52, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(53, 'fr', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(53, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(54, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(54, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(55, 'fr', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(55, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(56, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(56, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(57, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(57, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(58, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(58, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(59, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(59, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(60, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(60, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(61, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(61, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(62, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(62, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(63, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(63, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(64, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(64, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(65, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(65, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(66, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(66, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(67, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(67, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(68, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(68, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(69, 'fr', 'test');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(69, 'en', '');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(70, 'fr', 'Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(70, 'en', 'Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(71, 'fr', 'Média de type Vidéo (flv), Image (jpg, gif, png), Son (mp3) ou tout autre type de fichier (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(71, 'en', 'Media of type Video (flv), image (jpg, gif, png), Audio (mp3) or any other file type (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(72, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(72, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(73, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(73, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(74, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(74, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(75, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(75, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(76, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(76, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(77, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(77, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(78, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(78, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(79, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(79, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(80, 'fr', 'Titre');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(80, 'en', 'Title');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(81, 'fr', 'Description');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(82, 'fr', 'Description');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(83, 'fr', 'Description');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(83, 'en', 'Description');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(84, 'fr', 'Catégorie');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(84, 'en', 'Category');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(85, 'fr', 'Fichier');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(85, 'en', 'File');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(86, 'fr', 'Média à télécharger de type Vidéo (flv), Image (jpg, gif, png), Son (mp3) ou tout autre type de fichier (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(86, 'en', 'Downloadable Media type Video (flv), image (jpg, gif, png), Audio (mp3) or any other file type (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(87, 'fr', 'Insérer un Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(87, 'en', 'Insert a Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(88, 'fr', 'Insérez un Média depuis la Médiathèque directement dans votre texte.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(88, 'en', 'Insert a Media from the Mediacenter directly into your text.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(89, 'fr', 'Lien vers un Média');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(89, 'en', 'Link to Media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(90, 'fr', 'Faites un lien depuis votre texte sélectionné vers un Média géré par le module Médiathèque');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(90, 'en', 'Make a link from your selected text to a Media managed by the Mediacenter module');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(91, 'en', 'External media');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(91, 'fr', 'Média externe');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(92, 'en', 'URL of a Media from an external site (YouTube, Flickr, Scribd, Dailymotion, Slideshare, Vimeo, etc. ...). Select to include the media directly in your site. List of supported websites at http://api.embed.ly/.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(92, 'fr', 'URL d''un Média provenant d''un site externe (Youtube, Flickr, Scribd, Dailymotion, Slideshare, Vimeo, etc ...). Permet d''inclure directement le média dans votre site. Liste des sites supportés à l''adresse http://api.embed.ly/.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(94, 'fr', 'Média de type Vidéo (flv), Image (jpg, gif, png), Son (mp3) ou tout autre type de fichier (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(94, 'en', 'Media of type Video (flv), image (jpg, gif, png), Audio (mp3) or any other file type (doc, pdf, etc.).');

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_plugin_definition`
--

DROP TABLE IF EXISTS `mod_object_plugin_definition`;
CREATE TABLE `mod_object_plugin_definition` (
  `id_mowd` int(11) unsigned NOT NULL auto_increment,
  `uuid_mowd` varchar(36) NOT NULL,
  `object_id_mowd` int(11) unsigned NOT NULL default '0',
  `label_id_mowd` int(11) unsigned NOT NULL default '0',
  `description_id_mowd` int(11) unsigned NOT NULL default '0',
  `query_mowd` mediumtext NOT NULL,
  `definition_mowd` mediumtext NOT NULL,
  `compiled_definition_mowd` mediumtext NOT NULL,
  PRIMARY KEY  (`id_mowd`),
  KEY `object_id_mowd` (`object_id_mowd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_plugin_definition`
--

INSERT INTO `mod_object_plugin_definition` (`id_mowd`, `uuid_mowd`, `object_id_mowd`, `label_id_mowd`, `description_id_mowd`, `query_mowd`, `definition_mowd`, `compiled_definition_mowd`) VALUES(1, 'e59d665a-0baa-102e-80e2-001a6470da26', 2, 87, 88, 'a:1:{i:8;s:1:"0";}', '<atm-plugin language="fr">\r\n    <atm-plugin-valid>\r\n		<atm-if name="oembed" what="{[''object2''][''fields''][10][''hasValue'']}">\r\n			<div class="pmedia-oembed">{[''object2''][''fields''][10][''html'']|320,250}</div>\r\n			<atm-if what="{[''object2''][''fields''][10][''authorName'']} || {[''object2''][''fields''][10][''title'']}">\r\n				<div class="pmedia-oembed-legend">\r\n					<atm-if name="oembedTitle" what="{[''object2''][''fields''][10][''url'']} &amp;&amp; {[''object2''][''fields''][10][''title'']}">\r\n						<a href="{[''object2''][''fields''][10][''url'']}" target="_blank">{[''object2''][''fields''][10][''title'']}</a>\r\n					</atm-if>\r\n					<atm-else for="oembedTitle" what="{[''object2''][''fields''][10][''title'']}">\r\n						{[''object2''][''fields''][10][''title'']}\r\n					</atm-else>\r\n					<atm-if what="{[''object2''][''fields''][10][''authorName'']} &amp;&amp; {[''object2''][''fields''][10][''title'']}"> - </atm-if>\r\n					<atm-if name="oembedAuthor" what="{[''object2''][''fields''][10][''authorName'']} &amp;&amp; {[''object2''][''fields''][10][''authorUrl'']}">\r\n						<a href="{[''object2''][''fields''][10][''authorUrl'']}" target="_blank">{[''object2''][''fields''][10][''authorName'']}</a>\r\n					</atm-if>\r\n					<atm-else for="oembedAuthor" what="{[''object2''][''fields''][10][''authorName'']}">\r\n						{[''object2''][''fields''][10][''authorName'']}\r\n					</atm-else>\r\n				</div>\r\n			</atm-if>\r\n		</atm-if>\r\n		<atm-else for="oembed">\r\n			<atm-if what="{[''object2''][''fields''][9][''filename'']}">\r\n				<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''flv''">\r\n					<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n						<script type="text/javascript">\r\n							swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml'', startimage:''{[''object2''][''fields''][9][''thumb'']}''}, {allowfullscreen:true, wmode:''transparent''}, false);\r\n						</script>\r\n					</atm-if>\r\n					<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n						<script type="text/javascript">\r\n							swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, false);\r\n						</script>\r\n					</atm-if>\r\n					<div id="media-{[''object2''][''id'']}" class="pmedias-video">\r\n						<p><a href="http://www.adobe.com/go/getflashplayer" target="_blank"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n					</div>\r\n				</atm-if>\r\n				<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''mp3''">\r\n					<script type="text/javascript">\r\n						swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playermp3/player_mp3.swf'', ''media-{[''object2''][''id'']}'', ''200'', ''20'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {mp3:''{[''object2''][''fields''][9][''file'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, false);\r\n					</script>\r\n					<div id="media-{[''object2''][''id'']}" class="pmedias-audio">\r\n						<p><a href="http://www.adobe.com/go/getflashplayer" target="_blank"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n					</div>\r\n				</atm-if>\r\n				<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''jpg'' || {[''object2''][''fields''][9][''fileExtension'']} == ''gif'' || {[''object2''][''fields''][9][''fileExtension'']} == ''png''">\r\n					<atm-if what="{[''object2''][''fields''][9][''thumbname'']}">\r\n						<a href="{[''object2''][''fields''][9][''file'']}" class="pmedia-image" rel="atm-enlarge" target="_blank" title="Illustration ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><img src="{[''object2''][''fields''][9][''thumb'']|200}" alt="{[''object2''][''label'']}" /></a>\r\n					</atm-if>\r\n					<atm-if what="!{[''object2''][''fields''][9][''thumbname'']}">\r\n						<a href="{[''object2''][''fields''][9][''file'']}" class="pmedia-image" rel="atm-enlarge" target="_blank" title="Illustration ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><img src="{[''object2''][''fields''][9][''file'']|200}" alt="{[''object2''][''label'']}" /></a>\r\n					</atm-if>\r\n				</atm-if>\r\n				<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} != ''flv'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''mp3'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''jpg'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''gif'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''png''">\r\n					<atm-if what="{[''object2''][''fields''][9][''thumbname'']}">\r\n						<a href="{[''object2''][''fields''][9][''file'']}" class="pmedia-file" target="_blank" title="Télécharger le document ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><img src="{[''object2''][''fields''][9][''thumb'']|200}" alt="{[''object2''][''label'']}" /></a>\r\n					</atm-if>\r\n					<atm-if what="!{[''object2''][''fields''][9][''thumbname'']}">\r\n						<a href="{[''object2''][''fields''][9][''file'']}" class="pmedia-file" target="_blank" title="Télécharger le document ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)">{[''object2''][''label'']}</a>\r\n					</atm-if>\r\n				</atm-if>\r\n			</atm-if>\r\n		</atm-else>\r\n    </atm-plugin-valid>\r\n	<atm-plugin-view>\r\n        <atm-if what="{[''object2''][''fields''][10][''hasValue'']} &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''jpg'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''gif'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''png''">\r\n			{[''object2''][''label'']}\r\n		</atm-if>\r\n    	<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''jpg'' || {[''object2''][''fields''][9][''fileExtension'']} == ''gif'' || {[''object2''][''fields''][9][''fileExtension'']} == ''png''">\r\n			<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<img src="{[''object2''][''fields''][9][''thumb'']|200}" alt="{[''object2''][''label'']}" />\r\n			</atm-if>\r\n			<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<img src="{[''object2''][''fields''][9][''file'']|200}" alt="{[''object2''][''label'']}" />\r\n			</atm-if>\r\n		</atm-if>\r\n    </atm-plugin-view>\r\n</atm-plugin>', '<?php\n/*Generated on Tue, 12 Jul 2011 18:09:09 +0200 by Automne (TM) 4.2.0-dev */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pmedia'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 2;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''fr'')) $cms_language = new CMS_language(''fr'');\n	$parameters[''public''] = (isset($parameters[''public''])) ? $parameters[''public''] : true;\n	if (isset($parameters[''item''])) {\n		$parameters[''objectID''] = $parameters[''item'']->getObjectID();\n	} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) {\n		$parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	}\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[2])) $object[2] = new CMS_poly_object(2, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pmedia'';\n	//PLUGIN TAG START 5_5019f2\n	if (!sensitiveIO::isPositiveInteger($parameters[''itemID'']) || !sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-plugin tag : can\\''t found object infos to use into : $parameters[\\''itemID\\''] and $parameters[\\''objectID\\'']'');\n	} else {\n		//search needed object (need to search it for publications and rights purpose)\n		if (!isset($objectDefinitions[$parameters[''objectID'']])) {\n			$objectDefinitions[$parameters[''objectID'']] = new CMS_poly_object_definition($parameters[''objectID'']);\n		}\n		$search_5_5019f2 = new CMS_object_search($objectDefinitions[$parameters[''objectID'']], $parameters[''public'']);\n		$search_5_5019f2->addWhereCondition(''item'', $parameters[''itemID'']);\n		$results_5_5019f2 = $search_5_5019f2->search();\n		if (isset($results_5_5019f2[$parameters[''itemID'']]) && is_object($results_5_5019f2[$parameters[''itemID'']])) {\n			$object[$parameters[''objectID'']] = $results_5_5019f2[$parameters[''itemID'']];\n		} else {\n			$object[$parameters[''objectID'']] = new CMS_poly_object($parameters[''objectID''], 0, array(), $parameters[''public'']);\n		}\n		unset($search_5_5019f2);\n		$parameters[''has-plugin-view''] = true;\n		//PLUGIN-VALID TAG START 6_611874\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && !(@$parameters[''plugin-view''] && @$parameters[''has-plugin-view'']) ) {\n			//ATM-IF TAG START [ref. 7_271216]\n			$ifcondition_7_271216 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''hasValue'','''')), @$replace);\n			$atmIfResults[''oembed''][''if''] = false;\n			if ($ifcondition_7_271216):\n				$func_7_271216 = @create_function("","return (".$ifcondition_7_271216.");");\n				if ($func_7_271216 === false) {\n					CMS_grandFather::raiseError(''Error in atm-if [7_271216] syntax : ''.$ifcondition_7_271216);\n				}\n				if ($func_7_271216 && $func_7_271216()):\n					$atmIfResults[''oembed''][''if''] = true;\n					$content .="\n					<div class=\\"pmedia-oembed\\">".$object[2]->objectValues(10)->getValue(''html'',''320,250'')."</div>\n					";\n					//ATM-IF TAG START [ref. 8_98fd22]\n					$ifcondition_8_98fd22 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''authorName'',''''))." || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''title'','''')), @$replace);\n					if ($ifcondition_8_98fd22):\n						$func_8_98fd22 = @create_function("","return (".$ifcondition_8_98fd22.");");\n						if ($func_8_98fd22 === false) {\n							CMS_grandFather::raiseError(''Error in atm-if [8_98fd22] syntax : ''.$ifcondition_8_98fd22);\n						}\n						if ($func_8_98fd22 && $func_8_98fd22()):\n							$content .="\n							<div class=\\"pmedia-oembed-legend\\">\n							";\n							//ATM-IF TAG START [ref. 9_9e26c0]\n							$ifcondition_9_9e26c0 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''url'',''''))." && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''title'','''')), @$replace);\n							$atmIfResults[''oembedTitle''][''if''] = false;\n							if ($ifcondition_9_9e26c0):\n								$func_9_9e26c0 = @create_function("","return (".$ifcondition_9_9e26c0.");");\n								if ($func_9_9e26c0 === false) {\n									CMS_grandFather::raiseError(''Error in atm-if [9_9e26c0] syntax : ''.$ifcondition_9_9e26c0);\n								}\n								if ($func_9_9e26c0 && $func_9_9e26c0()):\n									$atmIfResults[''oembedTitle''][''if''] = true;\n									$content .="\n									<a href=\\"".$object[2]->objectValues(10)->getValue(''url'','''')."\\" target=\\"_blank\\">".$object[2]->objectValues(10)->getValue(''title'','''')."</a>\n									";\n								endif;\n								unset($func_9_9e26c0);\n							endif;\n							unset($ifcondition_9_9e26c0);\n							//ATM-IF TAG END [ref. 9_9e26c0]\n							//ATM-ELSE TAG START [ref. 10_e5a094]\n							if (isset($atmIfResults[''oembedTitle''][''if'']) && $atmIfResults[''oembedTitle''][''if''] === false):\n								$ifcondition_10_e5a094 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''title'','''')), @$replace);\n								if ($ifcondition_10_e5a094):\n									$func_10_e5a094 = @create_function("","return (".$ifcondition_10_e5a094.");");\n									if ($func_10_e5a094 === false) {\n										CMS_grandFather::raiseError(''Error in atm-else [10_e5a094] syntax : ''.$ifcondition_10_e5a094);\n									}\n									if ($func_10_e5a094 && $func_10_e5a094()):\n										$atmIfResults[''oembedTitle''][''if''] = true;\n										$content .="\n										".$object[2]->objectValues(10)->getValue(''title'','''')."\n										";\n									endif;\n									unset($func_10_e5a094);\n								endif;\n								unset($ifcondition_10_e5a094);\n							endif;\n							//ATM-ELSE TAG END [ref. 10_e5a094]\n							//ATM-IF TAG START [ref. 11_9a14ba]\n							$ifcondition_11_9a14ba = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''authorName'',''''))." && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''title'','''')), @$replace);\n							if ($ifcondition_11_9a14ba):\n								$func_11_9a14ba = @create_function("","return (".$ifcondition_11_9a14ba.");");\n								if ($func_11_9a14ba === false) {\n									CMS_grandFather::raiseError(''Error in atm-if [11_9a14ba] syntax : ''.$ifcondition_11_9a14ba);\n								}\n								if ($func_11_9a14ba && $func_11_9a14ba()):\n									$content .=" - ";\n								endif;\n								unset($func_11_9a14ba);\n							endif;\n							unset($ifcondition_11_9a14ba);\n							//ATM-IF TAG END [ref. 11_9a14ba]\n							//ATM-IF TAG START [ref. 12_318dc8]\n							$ifcondition_12_318dc8 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''authorName'',''''))." && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''authorUrl'','''')), @$replace);\n							$atmIfResults[''oembedAuthor''][''if''] = false;\n							if ($ifcondition_12_318dc8):\n								$func_12_318dc8 = @create_function("","return (".$ifcondition_12_318dc8.");");\n								if ($func_12_318dc8 === false) {\n									CMS_grandFather::raiseError(''Error in atm-if [12_318dc8] syntax : ''.$ifcondition_12_318dc8);\n								}\n								if ($func_12_318dc8 && $func_12_318dc8()):\n									$atmIfResults[''oembedAuthor''][''if''] = true;\n									$content .="\n									<a href=\\"".$object[2]->objectValues(10)->getValue(''authorUrl'','''')."\\" target=\\"_blank\\">".$object[2]->objectValues(10)->getValue(''authorName'','''')."</a>\n									";\n								endif;\n								unset($func_12_318dc8);\n							endif;\n							unset($ifcondition_12_318dc8);\n							//ATM-IF TAG END [ref. 12_318dc8]\n							//ATM-ELSE TAG START [ref. 13_eb20fd]\n							if (isset($atmIfResults[''oembedAuthor''][''if'']) && $atmIfResults[''oembedAuthor''][''if''] === false):\n								$ifcondition_13_eb20fd = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''authorName'','''')), @$replace);\n								if ($ifcondition_13_eb20fd):\n									$func_13_eb20fd = @create_function("","return (".$ifcondition_13_eb20fd.");");\n									if ($func_13_eb20fd === false) {\n										CMS_grandFather::raiseError(''Error in atm-else [13_eb20fd] syntax : ''.$ifcondition_13_eb20fd);\n									}\n									if ($func_13_eb20fd && $func_13_eb20fd()):\n										$atmIfResults[''oembedAuthor''][''if''] = true;\n										$content .="\n										".$object[2]->objectValues(10)->getValue(''authorName'','''')."\n										";\n									endif;\n									unset($func_13_eb20fd);\n								endif;\n								unset($ifcondition_13_eb20fd);\n							endif;\n							//ATM-ELSE TAG END [ref. 13_eb20fd]\n							$content .="\n							</div>\n							";\n						endif;\n						unset($func_8_98fd22);\n					endif;\n					unset($ifcondition_8_98fd22);\n					//ATM-IF TAG END [ref. 8_98fd22]\n				endif;\n				unset($func_7_271216);\n			endif;\n			unset($ifcondition_7_271216);\n			//ATM-IF TAG END [ref. 7_271216]\n			//ATM-ELSE TAG START [ref. 14_e3ef60]\n			if (isset($atmIfResults[''oembed''][''if'']) && $atmIfResults[''oembed''][''if''] === false):\n				//ATM-IF TAG START [ref. 15_95c9e2]\n				$ifcondition_15_95c9e2 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''filename'','''')), @$replace);\n				if ($ifcondition_15_95c9e2):\n					$func_15_95c9e2 = @create_function("","return (".$ifcondition_15_95c9e2.");");\n					if ($func_15_95c9e2 === false) {\n						CMS_grandFather::raiseError(''Error in atm-if [15_95c9e2] syntax : ''.$ifcondition_15_95c9e2);\n					}\n					if ($func_15_95c9e2 && $func_15_95c9e2()):\n						//ATM-IF TAG START [ref. 16_c48db3]\n						$ifcondition_16_c48db3 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''flv''", @$replace);\n						if ($ifcondition_16_c48db3):\n							$func_16_c48db3 = @create_function("","return (".$ifcondition_16_c48db3.");");\n							if ($func_16_c48db3 === false) {\n								CMS_grandFather::raiseError(''Error in atm-if [16_c48db3] syntax : ''.$ifcondition_16_c48db3);\n							}\n							if ($func_16_c48db3 && $func_16_c48db3()):\n								//ATM-IF TAG START [ref. 17_d83f73]\n								$ifcondition_17_d83f73 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), @$replace);\n								if ($ifcondition_17_d83f73):\n									$func_17_d83f73 = @create_function("","return (".$ifcondition_17_d83f73.");");\n									if ($func_17_d83f73 === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [17_d83f73] syntax : ''.$ifcondition_17_d83f73);\n									}\n									if ($func_17_d83f73 && $func_17_d83f73()):\n										$content .="\n										<script type=\\"text/javascript\\">\n										swfobject.embedSWF(''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playerflv/player_flv.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''320'', ''200'', ''9.0.0'', ''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/swfobject/expressInstall.swf'', {flv:''".$object[2]->objectValues(9)->getValue(''file'','''')."'', configxml:''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playerflv/config_playerflv.xml'', startimage:''".$object[2]->objectValues(9)->getValue(''thumb'','''')."''}, {allowfullscreen:true, wmode:''transparent''}, false);\n										</script>\n										";\n									endif;\n									unset($func_17_d83f73);\n								endif;\n								unset($ifcondition_17_d83f73);\n								//ATM-IF TAG END [ref. 17_d83f73]\n								//ATM-IF TAG START [ref. 18_8667ba]\n								$ifcondition_18_8667ba = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), @$replace);\n								if ($ifcondition_18_8667ba):\n									$func_18_8667ba = @create_function("","return (".$ifcondition_18_8667ba.");");\n									if ($func_18_8667ba === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [18_8667ba] syntax : ''.$ifcondition_18_8667ba);\n									}\n									if ($func_18_8667ba && $func_18_8667ba()):\n										$content .="\n										<script type=\\"text/javascript\\">\n										swfobject.embedSWF(''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playerflv/player_flv.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''320'', ''200'', ''9.0.0'', ''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/swfobject/expressInstall.swf'', {flv:''".$object[2]->objectValues(9)->getValue(''file'','''')."'', configxml:''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, false);\n										</script>\n										";\n									endif;\n									unset($func_18_8667ba);\n								endif;\n								unset($ifcondition_18_8667ba);\n								//ATM-IF TAG END [ref. 18_8667ba]\n								$content .="\n								<div id=\\"media-".$object[2]->getValue(''id'','''')."\\" class=\\"pmedias-video\\">\n								<p><a href=\\"http://www.adobe.com/go/getflashplayer\\" target=\\"_blank\\"><img src=\\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\\" alt=\\"Get Adobe Flash player\\" /></a></p>\n								</div>\n								";\n							endif;\n							unset($func_16_c48db3);\n						endif;\n						unset($ifcondition_16_c48db3);\n						//ATM-IF TAG END [ref. 16_c48db3]\n						//ATM-IF TAG START [ref. 19_ea6451]\n						$ifcondition_19_ea6451 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''mp3''", @$replace);\n						if ($ifcondition_19_ea6451):\n							$func_19_ea6451 = @create_function("","return (".$ifcondition_19_ea6451.");");\n							if ($func_19_ea6451 === false) {\n								CMS_grandFather::raiseError(''Error in atm-if [19_ea6451] syntax : ''.$ifcondition_19_ea6451);\n							}\n							if ($func_19_ea6451 && $func_19_ea6451()):\n								$content .="\n								<script type=\\"text/javascript\\">\n								swfobject.embedSWF(''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playermp3/player_mp3.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''200'', ''20'', ''9.0.0'', ''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/swfobject/expressInstall.swf'', {mp3:''".$object[2]->objectValues(9)->getValue(''file'','''')."'', configxml:''".CMS_poly_definition_functions::getVarContent("constant", "PATH_REALROOT_WR", "string", @$PATH_REALROOT_WR)."/automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, false);\n								</script>\n								<div id=\\"media-".$object[2]->getValue(''id'','''')."\\" class=\\"pmedias-audio\\">\n								<p><a href=\\"http://www.adobe.com/go/getflashplayer\\" target=\\"_blank\\"><img src=\\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\\" alt=\\"Get Adobe Flash player\\" /></a></p>\n								</div>\n								";\n							endif;\n							unset($func_19_ea6451);\n						endif;\n						unset($ifcondition_19_ea6451);\n						//ATM-IF TAG END [ref. 19_ea6451]\n						//ATM-IF TAG START [ref. 20_008b5d]\n						$ifcondition_20_008b5d = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''jpg'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''gif'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''png''", @$replace);\n						if ($ifcondition_20_008b5d):\n							$func_20_008b5d = @create_function("","return (".$ifcondition_20_008b5d.");");\n							if ($func_20_008b5d === false) {\n								CMS_grandFather::raiseError(''Error in atm-if [20_008b5d] syntax : ''.$ifcondition_20_008b5d);\n							}\n							if ($func_20_008b5d && $func_20_008b5d()):\n								//ATM-IF TAG START [ref. 21_8f7c04]\n								$ifcondition_21_8f7c04 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbname'','''')), @$replace);\n								if ($ifcondition_21_8f7c04):\n									$func_21_8f7c04 = @create_function("","return (".$ifcondition_21_8f7c04.");");\n									if ($func_21_8f7c04 === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [21_8f7c04] syntax : ''.$ifcondition_21_8f7c04);\n									}\n									if ($func_21_8f7c04 && $func_21_8f7c04()):\n										$content .="\n										<a href=\\"".$object[2]->objectValues(9)->getValue(''file'','''')."\\" class=\\"pmedia-image\\" rel=\\"atm-enlarge\\" target=\\"_blank\\" title=\\"Illustration ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\"><img src=\\"".$object[2]->objectValues(9)->getValue(''thumb'',''200'')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" /></a>\n										";\n									endif;\n									unset($func_21_8f7c04);\n								endif;\n								unset($ifcondition_21_8f7c04);\n								//ATM-IF TAG END [ref. 21_8f7c04]\n								//ATM-IF TAG START [ref. 22_a4c46a]\n								$ifcondition_22_a4c46a = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbname'','''')), @$replace);\n								if ($ifcondition_22_a4c46a):\n									$func_22_a4c46a = @create_function("","return (".$ifcondition_22_a4c46a.");");\n									if ($func_22_a4c46a === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [22_a4c46a] syntax : ''.$ifcondition_22_a4c46a);\n									}\n									if ($func_22_a4c46a && $func_22_a4c46a()):\n										$content .="\n										<a href=\\"".$object[2]->objectValues(9)->getValue(''file'','''')."\\" class=\\"pmedia-image\\" rel=\\"atm-enlarge\\" target=\\"_blank\\" title=\\"Illustration ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\"><img src=\\"".$object[2]->objectValues(9)->getValue(''file'',''200'')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" /></a>\n										";\n									endif;\n									unset($func_22_a4c46a);\n								endif;\n								unset($ifcondition_22_a4c46a);\n								//ATM-IF TAG END [ref. 22_a4c46a]\n							endif;\n							unset($func_20_008b5d);\n						endif;\n						unset($ifcondition_20_008b5d);\n						//ATM-IF TAG END [ref. 20_008b5d]\n						//ATM-IF TAG START [ref. 23_1f2e71]\n						$ifcondition_23_1f2e71 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''flv'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''mp3'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''jpg'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''gif'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''png''", @$replace);\n						if ($ifcondition_23_1f2e71):\n							$func_23_1f2e71 = @create_function("","return (".$ifcondition_23_1f2e71.");");\n							if ($func_23_1f2e71 === false) {\n								CMS_grandFather::raiseError(''Error in atm-if [23_1f2e71] syntax : ''.$ifcondition_23_1f2e71);\n							}\n							if ($func_23_1f2e71 && $func_23_1f2e71()):\n								//ATM-IF TAG START [ref. 24_909b86]\n								$ifcondition_24_909b86 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbname'','''')), @$replace);\n								if ($ifcondition_24_909b86):\n									$func_24_909b86 = @create_function("","return (".$ifcondition_24_909b86.");");\n									if ($func_24_909b86 === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [24_909b86] syntax : ''.$ifcondition_24_909b86);\n									}\n									if ($func_24_909b86 && $func_24_909b86()):\n										$content .="\n										<a href=\\"".$object[2]->objectValues(9)->getValue(''file'','''')."\\" class=\\"pmedia-file\\" target=\\"_blank\\" title=\\"Télécharger le document ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\"><img src=\\"".$object[2]->objectValues(9)->getValue(''thumb'',''200'')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" /></a>\n										";\n									endif;\n									unset($func_24_909b86);\n								endif;\n								unset($ifcondition_24_909b86);\n								//ATM-IF TAG END [ref. 24_909b86]\n								//ATM-IF TAG START [ref. 25_717ddd]\n								$ifcondition_25_717ddd = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbname'','''')), @$replace);\n								if ($ifcondition_25_717ddd):\n									$func_25_717ddd = @create_function("","return (".$ifcondition_25_717ddd.");");\n									if ($func_25_717ddd === false) {\n										CMS_grandFather::raiseError(''Error in atm-if [25_717ddd] syntax : ''.$ifcondition_25_717ddd);\n									}\n									if ($func_25_717ddd && $func_25_717ddd()):\n										$content .="\n										<a href=\\"".$object[2]->objectValues(9)->getValue(''file'','''')."\\" class=\\"pmedia-file\\" target=\\"_blank\\" title=\\"Télécharger le document ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\">".$object[2]->getValue(''label'','''')."</a>\n										";\n									endif;\n									unset($func_25_717ddd);\n								endif;\n								unset($ifcondition_25_717ddd);\n								//ATM-IF TAG END [ref. 25_717ddd]\n							endif;\n							unset($func_23_1f2e71);\n						endif;\n						unset($ifcondition_23_1f2e71);\n						//ATM-IF TAG END [ref. 23_1f2e71]\n					endif;\n					unset($func_15_95c9e2);\n				endif;\n				unset($ifcondition_15_95c9e2);\n				//ATM-IF TAG END [ref. 15_95c9e2]\n			endif;\n			//ATM-ELSE TAG END [ref. 14_e3ef60]\n		}\n		//PLUGIN-VALID END 6_611874\n		//PLUGIN-VIEW TAG START 26_41d368\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && isset($parameters[''plugin-view''])) {\n			//ATM-IF TAG START [ref. 27_1b3dbd]\n			$ifcondition_27_1b3dbd = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''hasValue'',''''))." && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''jpg'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''gif'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''png''", @$replace);\n			if ($ifcondition_27_1b3dbd):\n				$func_27_1b3dbd = @create_function("","return (".$ifcondition_27_1b3dbd.");");\n				if ($func_27_1b3dbd === false) {\n					CMS_grandFather::raiseError(''Error in atm-if [27_1b3dbd] syntax : ''.$ifcondition_27_1b3dbd);\n				}\n				if ($func_27_1b3dbd && $func_27_1b3dbd()):\n					$content .="\n					".$object[2]->getValue(''label'','''')."\n					";\n				endif;\n				unset($func_27_1b3dbd);\n			endif;\n			unset($ifcondition_27_1b3dbd);\n			//ATM-IF TAG END [ref. 27_1b3dbd]\n			//ATM-IF TAG START [ref. 28_5cbbc2]\n			$ifcondition_28_5cbbc2 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''jpg'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''gif'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''png''", @$replace);\n			if ($ifcondition_28_5cbbc2):\n				$func_28_5cbbc2 = @create_function("","return (".$ifcondition_28_5cbbc2.");");\n				if ($func_28_5cbbc2 === false) {\n					CMS_grandFather::raiseError(''Error in atm-if [28_5cbbc2] syntax : ''.$ifcondition_28_5cbbc2);\n				}\n				if ($func_28_5cbbc2 && $func_28_5cbbc2()):\n					//ATM-IF TAG START [ref. 29_1ce497]\n					$ifcondition_29_1ce497 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), @$replace);\n					if ($ifcondition_29_1ce497):\n						$func_29_1ce497 = @create_function("","return (".$ifcondition_29_1ce497.");");\n						if ($func_29_1ce497 === false) {\n							CMS_grandFather::raiseError(''Error in atm-if [29_1ce497] syntax : ''.$ifcondition_29_1ce497);\n						}\n						if ($func_29_1ce497 && $func_29_1ce497()):\n							$content .="\n							<img src=\\"".$object[2]->objectValues(9)->getValue(''thumb'',''200'')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" />\n							";\n						endif;\n						unset($func_29_1ce497);\n					endif;\n					unset($ifcondition_29_1ce497);\n					//ATM-IF TAG END [ref. 29_1ce497]\n					//ATM-IF TAG START [ref. 30_73ca57]\n					$ifcondition_30_73ca57 = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), @$replace);\n					if ($ifcondition_30_73ca57):\n						$func_30_73ca57 = @create_function("","return (".$ifcondition_30_73ca57.");");\n						if ($func_30_73ca57 === false) {\n							CMS_grandFather::raiseError(''Error in atm-if [30_73ca57] syntax : ''.$ifcondition_30_73ca57);\n						}\n						if ($func_30_73ca57 && $func_30_73ca57()):\n							$content .="\n							<img src=\\"".$object[2]->objectValues(9)->getValue(''file'',''200'')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" />\n							";\n						endif;\n						unset($func_30_73ca57);\n					endif;\n					unset($ifcondition_30_73ca57);\n					//ATM-IF TAG END [ref. 30_73ca57]\n				endif;\n				unset($func_28_5cbbc2);\n			endif;\n			unset($ifcondition_28_5cbbc2);\n			//ATM-IF TAG END [ref. 28_5cbbc2]\n		}\n		//PLUGIN-VIEW END 26_41d368\n		$content .="\n		";\n	}\n	//PLUGIN TAG END 5_5019f2\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''pmedia'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);\n	unset($replace);}\n	?>');
INSERT INTO `mod_object_plugin_definition` (`id_mowd`, `uuid_mowd`, `object_id_mowd`, `label_id_mowd`, `description_id_mowd`, `query_mowd`, `definition_mowd`, `compiled_definition_mowd`) VALUES(2, 'e59d688a-0baa-102e-80e2-001a6470da26', 2, 89, 90, 'a:1:{i:8;s:1:"0";}', '<atm-plugin language="fr">\r\n    <atm-plugin-valid>\r\n        <atm-if name="oembed" what="{[''object2''][''fields''][10][''hasValue'']}">\r\n			<atm-if name="oembed-link" what="{[''object2''][''fields''][10][''url'']}">\r\n				<a href="{[''object2''][''fields''][10][''url'']}" target="_blank">{plugin:selection}</a>\r\n			</atm-if>\r\n			<atm-else for="oembed-link">\r\n				{plugin:selection}\r\n			</atm-else>\r\n		</atm-if>\r\n		<atm-else for="oembed">\r\n			<a href="{[''object2''][''fields''][9][''file'']}" target="_blank" title="Télécharger le document ''{[''object2''][''fields''][9][''fileLabel'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="Fichier {[''object2''][''fields''][9][''fileExtension'']}" title="Fichier {[''object2''][''fields''][9][''fileExtension'']}" /> </atm-if>{plugin:selection}</a>\r\n    	</atm-else>\r\n	</atm-plugin-valid>\r\n	<atm-plugin-invalid>\r\n        {plugin:selection}\r\n    </atm-plugin-invalid>\r\n</atm-plugin>', '<?php\n/*Generated on Tue, 12 Jul 2011 16:03:00 +0200 by Automne (TM) 4.2.0-dev */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pmedia'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 2;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''fr'')) $cms_language = new CMS_language(''fr'');\n	$parameters[''public''] = (isset($parameters[''public''])) ? $parameters[''public''] : true;\n	if (isset($parameters[''item''])) {\n		$parameters[''objectID''] = $parameters[''item'']->getObjectID();\n	} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) {\n		$parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	}\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[2])) $object[2] = new CMS_poly_object(2, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pmedia'';\n	//PLUGIN TAG START 27_e694ee\n	if (!sensitiveIO::isPositiveInteger($parameters[''itemID'']) || !sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-plugin tag : can\\''t found object infos to use into : $parameters[\\''itemID\\''] and $parameters[\\''objectID\\'']'');\n	} else {\n		//search needed object (need to search it for publications and rights purpose)\n		if (!isset($objectDefinitions[$parameters[''objectID'']])) {\n			$objectDefinitions[$parameters[''objectID'']] = new CMS_poly_object_definition($parameters[''objectID'']);\n		}\n		$search_27_e694ee = new CMS_object_search($objectDefinitions[$parameters[''objectID'']], $parameters[''public'']);\n		$search_27_e694ee->addWhereCondition(''item'', $parameters[''itemID'']);\n		$results_27_e694ee = $search_27_e694ee->search();\n		if (isset($results_27_e694ee[$parameters[''itemID'']]) && is_object($results_27_e694ee[$parameters[''itemID'']])) {\n			$object[$parameters[''objectID'']] = $results_27_e694ee[$parameters[''itemID'']];\n		} else {\n			$object[$parameters[''objectID'']] = new CMS_poly_object($parameters[''objectID''], 0, array(), $parameters[''public'']);\n		}\n		unset($search_27_e694ee);\n		$parameters[''has-plugin-view''] = false;\n		//PLUGIN-VALID TAG START 28_65dbc1\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && !(@$parameters[''plugin-view''] && @$parameters[''has-plugin-view'']) ) {\n			//ATM-IF TAG START [ref. 29_7a463f]\n			$ifcondition_29_7a463f = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''hasValue'','''')), @$replace);\n			$atmIfResults[''oembed''][''if''] = false;\n			if ($ifcondition_29_7a463f):\n				$func_29_7a463f = @create_function("","return (".$ifcondition_29_7a463f.");");\n				if ($func_29_7a463f === false) {\n					CMS_grandFather::raiseError(''Error in atm-if [29_7a463f] syntax : ''.$ifcondition_29_7a463f);\n				}\n				if ($func_29_7a463f && $func_29_7a463f()):\n					$atmIfResults[''oembed''][''if''] = true;\n					//ATM-IF TAG START [ref. 30_8a9ccf]\n					$ifcondition_30_8a9ccf = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(10)->getValue(''url'','''')), @$replace);\n					$atmIfResults[''oembed-link''][''if''] = false;\n					if ($ifcondition_30_8a9ccf):\n						$func_30_8a9ccf = @create_function("","return (".$ifcondition_30_8a9ccf.");");\n						if ($func_30_8a9ccf === false) {\n							CMS_grandFather::raiseError(''Error in atm-if [30_8a9ccf] syntax : ''.$ifcondition_30_8a9ccf);\n						}\n						if ($func_30_8a9ccf && $func_30_8a9ccf()):\n							$atmIfResults[''oembed-link''][''if''] = true;\n							$content .="\n							<a href=\\"".$object[2]->objectValues(10)->getValue(''url'','''')."\\" target=\\"_blank\\">".$parameters[''selection'']."</a>\n							";\n						endif;\n						unset($func_30_8a9ccf);\n					endif;\n					unset($ifcondition_30_8a9ccf);\n					//ATM-IF TAG END [ref. 30_8a9ccf]\n					//ATM-ELSE TAG START [ref. 31_b76bfa]\n					if (isset($atmIfResults[''oembed-link''][''if'']) && $atmIfResults[''oembed-link''][''if''] === false):\n						$content .="\n						".$parameters[''selection'']."\n						";\n					endif;\n					//ATM-ELSE TAG END [ref. 31_b76bfa]\n				endif;\n				unset($func_29_7a463f);\n			endif;\n			unset($ifcondition_29_7a463f);\n			//ATM-IF TAG END [ref. 29_7a463f]\n			//ATM-ELSE TAG START [ref. 32_3e9738]\n			if (isset($atmIfResults[''oembed''][''if'']) && $atmIfResults[''oembed''][''if''] === false):\n				$content .="\n				<a href=\\"".$object[2]->objectValues(9)->getValue(''file'','''')."\\" target=\\"_blank\\" title=\\"Télécharger le document ''".$object[2]->objectValues(9)->getValue(''fileLabel'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\">";\n				//ATM-IF TAG START [ref. 33_4d3aa5]\n				$ifcondition_33_4d3aa5 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileIcon'','''')), @$replace);\n				if ($ifcondition_33_4d3aa5):\n					$func_33_4d3aa5 = @create_function("","return (".$ifcondition_33_4d3aa5.");");\n					if ($func_33_4d3aa5 === false) {\n						CMS_grandFather::raiseError(''Error in atm-if [33_4d3aa5] syntax : ''.$ifcondition_33_4d3aa5);\n					}\n					if ($func_33_4d3aa5 && $func_33_4d3aa5()):\n						$content .="<img src=\\"".$object[2]->objectValues(9)->getValue(''fileIcon'','''')."\\" alt=\\"Fichier ".$object[2]->objectValues(9)->getValue(''fileExtension'','''')."\\" title=\\"Fichier ".$object[2]->objectValues(9)->getValue(''fileExtension'','''')."\\" /> ";\n					endif;\n					unset($func_33_4d3aa5);\n				endif;\n				unset($ifcondition_33_4d3aa5);\n				//ATM-IF TAG END [ref. 33_4d3aa5]\n				$content .=$parameters[''selection'']."</a>\n				";\n			endif;\n			//ATM-ELSE TAG END [ref. 32_3e9738]\n		}\n		//PLUGIN-VALID END 28_65dbc1\n		//PLUGIN-INVALID TAG START 34_31de40\n		if (!$object[$parameters[''objectID'']]->isInUserSpace()) {\n			$content .="\n			".$parameters[''selection'']."\n			";\n		}\n		//PLUGIN-INVALID END 34_31de40\n		$content .="\n		";\n	}\n	//PLUGIN TAG END 27_e694ee\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''pmedia'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);\n	unset($replace);}\n	?>');

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_polyobjects`
--

DROP TABLE IF EXISTS `mod_object_polyobjects`;
CREATE TABLE `mod_object_polyobjects` (
  `id_moo` int(11) unsigned NOT NULL auto_increment,
  `object_type_id_moo` int(11) unsigned NOT NULL default '0',
  `deleted_moo` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id_moo`),
  KEY `object_id_moo` (`object_type_id_moo`),
  KEY `deleted_moo` (`deleted_moo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_polyobjects`
--

INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(4, 1, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(17, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(24, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(25, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(26, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(27, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(28, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(29, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(34, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(35, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(36, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(37, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(38, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(39, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(40, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(44, 1, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(45, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(46, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(47, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(48, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(49, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(50, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(51, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(52, 2, 0);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(53, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_rss_definition`
--

DROP TABLE IF EXISTS `mod_object_rss_definition`;
CREATE TABLE `mod_object_rss_definition` (
  `id_mord` int(11) unsigned NOT NULL auto_increment,
  `uuid_mord` varchar(36) NOT NULL,
  `object_id_mord` int(11) unsigned NOT NULL default '0',
  `label_id_mord` int(11) unsigned NOT NULL default '0',
  `description_id_mord` int(11) unsigned NOT NULL default '0',
  `link_mord` varchar(255) NOT NULL default '',
  `author_mord` varchar(255) NOT NULL default '',
  `copyright_mord` varchar(255) NOT NULL default '',
  `categories_mord` mediumtext NOT NULL,
  `ttl_mord` int(11) NOT NULL default '0',
  `email_mord` varchar(255) NOT NULL default '',
  `definition_mord` mediumtext NOT NULL,
  `compiled_definition_mord` mediumtext NOT NULL,
  `last_compilation_mord` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_mord`),
  KEY `object_id_mord` (`object_id_mord`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_rss_definition`
--

INSERT INTO `mod_object_rss_definition` (`id_mord`, `uuid_mord`, `object_id_mord`, `label_id_mord`, `description_id_mord`, `link_mord`, `author_mord`, `copyright_mord`, `categories_mord`, `ttl_mord`, `email_mord`, `definition_mord`, `compiled_definition_mord`, `last_compilation_mord`) VALUES(1, 'e5a7a52a-0baa-102e-80e2-001a6470da26', 1, 40, 41, '', '', '', '', 1440, '', '<atm-rss language="fr">\r\n    <atm-rss-title>Actualités du site démo d''Automne</atm-rss-title>\r\n    <atm-search what="{[''object1'']}" name="rss">\r\n        <atm-search-order search="rss" type="publication date after" direction="desc" />\r\n        <atm-result search="rss">\r\n            <atm-rss-item>\r\n                <atm-rss-item-url>{page:5:url}?item={[''object1''][''id'']}</atm-rss-item-url>\r\n                <atm-rss-item-title>{[''object1''][''fields''][1][''value'']}</atm-rss-item-title>\r\n                <atm-rss-item-content>{[''object1''][''fields''][2][''htmlvalue'']}</atm-rss-item-content>\r\n                <atm-rss-item-date>{[''object1''][''formatedDateStart'']|rss}</atm-rss-item-date>\r\n            </atm-rss-item>\r\n        </atm-result>\r\n    </atm-search>\r\n</atm-rss>', '<?php\n/*Generated on Tue, 12 Jul 2011 16:03:00 +0200 by Automne (TM) 4.2.0-dev */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pnews'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 1;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''fr'')) $cms_language = new CMS_language(''fr'');\n	$parameters[''public''] = true;\n	if (isset($parameters[''item''])) {\n		$parameters[''objectID''] = $parameters[''item'']->getObjectID();\n	} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) {\n		$parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	}\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pnews'';\n	//RSS TAG START 35_8dc15b\n	if (!sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-rss tag : can\\''t found object infos to use into : $parameters[\\''objectID\\'']'');\n	} else {\n		//RSS-ITEM-TITLE TAG START 36_3be358\n		$content .= ''<title>'';\n		//save content\n		$content_36_3be358 = $content;\n		$content = '''';\n		$content .="Actualités du site démo d''Automne";\n		//then remove tags from content and add it to old content\n		$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n		$content = $content_36_3be358.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n		unset($content_36_3be358);\n		$content .= ''</title>'';\n		//RSS-ITEM-TITLE TAG END 36_3be358\n		//SEARCH rss TAG START 37_2fcc13\n		$objectDefinition_rss = ''1'';\n		if (!isset($objectDefinitions[$objectDefinition_rss])) {\n			$objectDefinitions[$objectDefinition_rss] = new CMS_poly_object_definition($objectDefinition_rss);\n		}\n		//public search ?\n		$public_37_2fcc13 = isset($public_search) ? $public_search : false;\n		//get search params\n		$search_rss = new CMS_object_search($objectDefinitions[$objectDefinition_rss], $public_37_2fcc13);\n		$launchSearch_rss = true;\n		$searchLaunched_rss = false;\n		//add search conditions if any\n		$search_rss->addOrderCondition("publication date after", "desc");\n		//RESULT rss TAG START 38_4a6aed\n		if(isset($search_rss) && $launchSearch_rss && $searchLaunched_rss === false) {\n			//launch search\n			if ($search_rss->search(CMS_object_search::POLYMOD_SEARCH_RETURN_INDIVIDUALS_OBJECTS)) {\n				$searchLaunched_rss = true;\n			}\n		} elseif (isset($search_rss) && $launchSearch_rss && $searchLaunched_rss === true) {\n			//reset search stack (search already done before)\n			$search_rss->resetResultStack();\n		} elseif (!isset($search_rss)) {\n			CMS_grandFather::raiseError("Malformed atm-result tag : can''t use this tag outside of atm-search \\"rss\\" tag ...");\n		}\n		if (isset($search_rss) && $launchSearch_rss && $searchLaunched_rss === true) {\n			$object_38_4a6aed = (isset($object[$objectDefinition_rss])) ? $object[$objectDefinition_rss] : ""; //save previous object search if any\n			$replace_38_4a6aed = $replace; //save previous replace vars if any\n			$count_38_4a6aed = 0;\n			$content_38_4a6aed = $content; //save previous content var if any\n			$maxPages_38_4a6aed = $search_rss->getMaxPages();\n			$maxResults_38_4a6aed = $search_rss->getNumRows();\n			while ($object[$objectDefinition_rss] = $search_rss->getNextResult()) {\n				$content = "";\n				$replace["atm-search"] = array (\n					"{resultid}" 	=> (isset($resultID_rss)) ? $resultID_rss : $object[$objectDefinition_rss]->getID(),\n					"{firstresult}" => (!$count_38_4a6aed) ? 1 : 0,\n					"{lastresult}" 	=> $search_rss->isLastResult() ? 1 : 0,\n					"{resultcount}" => ($count_38_4a6aed+1),\n					"{maxpages}"    => $maxPages_38_4a6aed,\n					"{currentpage}" => ($search_rss->getAttribute(''page'')+1),\n					"{maxresults}"  => $maxResults_38_4a6aed,\n					"{altclass}"    => (($count_38_4a6aed+1) % 2) ? "CMS_odd" : "CMS_even",\n				);\n				//RSS-ITEM TAG START 39_e3b2bb\n				$content .= ''<item>\n				<guid isPermaLink="false">object''.$parameters[''objectID''].''-''.$object[$parameters[''objectID'']]->getID().''</guid>'';\n				//RSS-ITEM-LINK TAG START 40_78326e\n				$content .= ''<link>'';\n				//save content\n				$content_40_78326e = $content;\n				$content = '''';\n				$content .=CMS_tree::getPageValue("5", "url", @$public_search, (@$parameters[''pageID''] ? @$parameters[''pageID''] : ''{{pageID}}''))."?item=".$object[1]->getValue(''id'','''');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_40_78326e.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_40_78326e);\n				$content .= ''</link>'';\n				//RSS-ITEM-LINK TAG END 40_78326e\n				//RSS-ITEM-TITLE TAG START 41_98a390\n				$content .= ''<title>'';\n				//save content\n				$content_41_98a390 = $content;\n				$content = '''';\n				$content .=$object[1]->objectValues(1)->getValue(''value'','''');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_41_98a390.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_41_98a390);\n				$content .= ''</title>'';\n				//RSS-ITEM-TITLE TAG END 41_98a390\n				//RSS-ITEM-DESCRIPTION TAG START 42_5121d5\n				$content .= ''<description>'';\n				$content .= ''<![CDATA['';\n				$content .=$object[1]->objectValues(2)->getValue(''htmlvalue'','''');\n				$content .= '']]>'';\n				$content .= ''</description>'';\n				//RSS-ITEM-DESCRIPTION TAG END 42_5121d5\n				//RSS-ITEM-PUBDATE TAG START 43_04fe39\n				$content .= ''<pubDate>'';\n				//save content\n				$content_43_04fe39 = $content;\n				$content = '''';\n				$content .=$object[1]->getValue(''formatedDateStart'',''rss'');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_43_04fe39.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_43_04fe39);\n				$content .= ''</pubDate>'';\n				//RSS-ITEM-PUBDATE TAG END 43_04fe39\n				$content .= ''</item>'';\n				//RSS-ITEM TAG END 39_e3b2bb\n				$count_38_4a6aed++;\n				//do all result vars replacement\n				$content_38_4a6aed.= CMS_polymod_definition_parsing::replaceVars($content, $replace);\n			}\n			$content = $content_38_4a6aed; //retrieve previous content var if any\n			$replace = $replace_38_4a6aed; //retrieve previous replace vars if any\n			$object[$objectDefinition_rss] = $object_38_4a6aed; //retrieve previous object search if any\n			unset($object_38_4a6aed, $replace_38_4a6aed, $content_38_4a6aed);\n		}\n		//RESULT rss TAG END 38_4a6aed\n		//destroy search and results rss objects\n		unset($search_rss, $launchSearch_rss, $searchLaunched_rss);\n		//SEARCH rss TAG END 37_2fcc13\n		$content .="\n		";\n	}\n	//RSS TAG END 35_8dc15b\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''standard'',\n			1 => ''pnews'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);\n	unset($replace);}\n	?>', '2011-07-12 16:03:00');

-- --------------------------------------------------------

--
-- Structure de la table `mod_object_search_tmp`
--

DROP TABLE IF EXISTS `mod_object_search_tmp`;
CREATE TABLE `mod_object_search_tmp` (
  `search_mos` varchar(32) NOT NULL,
  `id_mos` int(11) unsigned NOT NULL,
  UNIQUE KEY `index_mos` (`search_mos`,`id_mos`),
  KEY `search_mos` (`search_mos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_object_search_tmp`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_clientSpaces_archived`
--

DROP TABLE IF EXISTS `mod_standard_clientSpaces_archived`;
CREATE TABLE `mod_standard_clientSpaces_archived` (
  `template_cs` int(11) unsigned NOT NULL default '0',
  `tagID_cs` varchar(100) NOT NULL default '',
  `rowsDefinition_cs` varchar(255) NOT NULL default '',
  `type_cs` int(11) NOT NULL default '0',
  `order_cs` int(11) NOT NULL default '0',
  PRIMARY KEY  (`template_cs`,`tagID_cs`,`order_cs`),
  KEY `template_cs` (`template_cs`),
  KEY `type_cs` (`type_cs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_clientSpaces_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_clientSpaces_deleted`
--

DROP TABLE IF EXISTS `mod_standard_clientSpaces_deleted`;
CREATE TABLE `mod_standard_clientSpaces_deleted` (
  `template_cs` int(11) unsigned NOT NULL default '0',
  `tagID_cs` varchar(100) NOT NULL default '',
  `rowsDefinition_cs` varchar(255) NOT NULL default '',
  `type_cs` int(11) NOT NULL default '0',
  `order_cs` int(11) NOT NULL default '0',
  PRIMARY KEY  (`template_cs`,`tagID_cs`,`order_cs`),
  KEY `template_cs` (`template_cs`),
  KEY `type_cs` (`type_cs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_clientSpaces_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_clientSpaces_edited`
--

DROP TABLE IF EXISTS `mod_standard_clientSpaces_edited`;
CREATE TABLE `mod_standard_clientSpaces_edited` (
  `template_cs` int(11) unsigned NOT NULL default '0',
  `tagID_cs` varchar(100) NOT NULL default '',
  `rowsDefinition_cs` varchar(255) NOT NULL default '',
  `type_cs` int(11) NOT NULL default '0',
  `order_cs` int(11) NOT NULL default '0',
  PRIMARY KEY  (`template_cs`,`tagID_cs`,`order_cs`),
  KEY `template_cs` (`template_cs`),
  KEY `type_cs` (`type_cs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_clientSpaces_edited`
--

INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '27253551d67fd5f23b3269719a3f5364', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', '8910cceb3902f8e5b364ac872a452570', 70, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', 'd2d4e5e21d0e19cc40dfc62fa94d20df', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e76f4966a4808ea827d71853fd371ee3', 43, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 69, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', 'bd159ce9706787ad5cdda03cbd03de7e', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '4f342492c25a2b686c2b531760008d98', 70, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', 'ef68332801171f3678986a9192ea85db', 67, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', '947a9a22e4eefe4a486202ab6005f8b5', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', 'e41e88d5ba9dc4da5ec2772895543861', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '4564d92b193505d71f29b5ae69dddde0', 44, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '56025a9b887be03112111d215ca6f31d', 69, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', '22f3ce37f32ed90e7efcb5e2c3379e88', 69, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '9ba530cba11a3763a081a2e34072711f', 69, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '198690666d878af31b7d27d2f4c1cfd3', 67, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '472f95744f761c8f816f68cd59cf28a8', 46, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', '413bd2c305740ddba9c4883228604ab1', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', '608b203e1d2422c57d5f890bcef33f36', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '53a2f135735e315515920da75a688354', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '7fac447905b2c5da7fb86162c1656561', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', '0dd66805b82fd392344cf9a535159768', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 55, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '18f076b2de7e3b4310097f83ac547533', 43, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '9f851c9d1868ad933f280c33e5a419f3', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '55319cd65490d790a905969af656ee08', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '3a8e6888f4d5e7036861b7863814f35e', 43, 4);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 69, 5);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '8af055ba864f1f9fc7572b993e54c6d7', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', '85e7287f61fa20d9cd0d0adabbef07d1', 54, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'a4ed02469a210827de89cd64d2bb8b35', 71, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'second', 'd241ac8ced41b4a82642372c193e116b', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'a76b35963e7853924f49b447d533f5ab', 69, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'd227e9c886232aa6c2bbbddb2b348ad4', 44, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'd92af30786e78deab57f106f9398e830', 43, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', '26396451d4054e05237066375ccd6e8e', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'second', '0ee47170b662e4e79dea40ea0f9833c0', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'efa99bdc885c7e3d486c9073dd4b3ea5', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'd9357a8e2eaabff878edd590a3390747', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', 'f9cbbf6b3c5ac7cbb1a803ab380d36f3', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', '51acc66642f99a940dc8eb94504c131b', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '5d7229d29d8f71d7b30d9f830db58735', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '8d231671f5511d2e3004c79991317d93', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '7be68b66b22b4b190536a89f91d4da32', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 44, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', 'f94004914e89f986916e96a4731db322', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '67834d6b4d508349b9b2892e4932e718', 43, 6);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e1c9a76f8a25f03b479f1aaac1d48932', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '3b670218b85e117891afe278e7049563', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', 'a23554f135ed742872910b38a70131cf3', 58, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', 'a1ba42094f9b45486a0338b5eea859dfb', 68, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', '6600f0d4c66704194be3cfd3b144cc51', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'adbbb020aeadb2df9957a83e19e55211', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'b5e288a53dc78ea05a6535356abeac07', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', '61cbcc65130ccda86b96e663734ab490', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '759d757b5beb586dd93fecdbd1cd6c3b', 61, 4);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '9ce6e306ff41794fc8cac477c349a086', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'second', 'b099453f9cb986f40020465b5eb94d90', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '592c2e33c7971c02ec553000d0eaea43', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', '59655220bef9a6a88d8c2e35b30ba1d0', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '65990b9ff00394714dd60ffd708b2d77', 70, 7);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '6ff77816cb91134d254f1b0723fa0022', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '39a32afb98d21c8252ea3714cff0f62e', 69, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'second', 'a149c4ef608130b6963fff950126d8690', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '2e05b6ab8648c84e56b486ea0bbf09fc', 42, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'second', '60a0b56f24fbf5e01737f620b657520d', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '9110334505c2e7ace9a292686b89c405', 44, 4);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'second', '49b5d0e77d63ac544da150a1e8e4e367', 66, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_clientSpaces_edition`
--

DROP TABLE IF EXISTS `mod_standard_clientSpaces_edition`;
CREATE TABLE `mod_standard_clientSpaces_edition` (
  `template_cs` int(11) unsigned NOT NULL default '0',
  `tagID_cs` varchar(100) NOT NULL default '',
  `rowsDefinition_cs` varchar(255) NOT NULL default '',
  `type_cs` int(11) NOT NULL default '0',
  `order_cs` int(11) NOT NULL default '0',
  PRIMARY KEY  (`template_cs`,`tagID_cs`,`order_cs`),
  KEY `template_cs` (`template_cs`),
  KEY `type_cs` (`type_cs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_clientSpaces_edition`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_clientSpaces_public`
--

DROP TABLE IF EXISTS `mod_standard_clientSpaces_public`;
CREATE TABLE `mod_standard_clientSpaces_public` (
  `template_cs` int(11) unsigned NOT NULL default '0',
  `tagID_cs` varchar(100) NOT NULL default '',
  `rowsDefinition_cs` varchar(255) NOT NULL default '',
  `type_cs` int(11) NOT NULL default '0',
  `order_cs` int(11) NOT NULL default '0',
  PRIMARY KEY  (`template_cs`,`tagID_cs`,`order_cs`),
  KEY `template_cs` (`template_cs`),
  KEY `type_cs` (`type_cs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_clientSpaces_public`
--

INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', '413bd2c305740ddba9c4883228604ab1', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', 'f9cbbf6b3c5ac7cbb1a803ab380d36f3', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '18f076b2de7e3b4310097f83ac547533', 43, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '56025a9b887be03112111d215ca6f31d', 69, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', '22f3ce37f32ed90e7efcb5e2c3379e88', 69, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '472f95744f761c8f816f68cd59cf28a8', 46, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '53a2f135735e315515920da75a688354', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', '608b203e1d2422c57d5f890bcef33f36', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '198690666d878af31b7d27d2f4c1cfd3', 67, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'second', 'a149c4ef608130b6963fff950126d8690', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', '61cbcc65130ccda86b96e663734ab490', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'adbbb020aeadb2df9957a83e19e55211', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '8af055ba864f1f9fc7572b993e54c6d7', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', 'bd159ce9706787ad5cdda03cbd03de7e', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '9ba530cba11a3763a081a2e34072711f', 69, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e1c9a76f8a25f03b479f1aaac1d48932', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '67834d6b4d508349b9b2892e4932e718', 43, 6);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 69, 5);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '3a8e6888f4d5e7036861b7863814f35e', 43, 4);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '4f342492c25a2b686c2b531760008d98', 70, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', '0dd66805b82fd392344cf9a535159768', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '9f851c9d1868ad933f280c33e5a419f3', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', '85e7287f61fa20d9cd0d0adabbef07d1', 54, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', 'd2d4e5e21d0e19cc40dfc62fa94d20df', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'a4ed02469a210827de89cd64d2bb8b35', 71, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'second', 'd241ac8ced41b4a82642372c193e116b', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'a76b35963e7853924f49b447d533f5ab', 69, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 55, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'd92af30786e78deab57f106f9398e830', 43, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', '26396451d4054e05237066375ccd6e8e', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '55319cd65490d790a905969af656ee08', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'second', '0ee47170b662e4e79dea40ea0f9833c0', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'efa99bdc885c7e3d486c9073dd4b3ea5', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'd9357a8e2eaabff878edd590a3390747', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', '51acc66642f99a940dc8eb94504c131b', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '7fac447905b2c5da7fb86162c1656561', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '5d7229d29d8f71d7b30d9f830db58735', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '8d231671f5511d2e3004c79991317d93', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '7be68b66b22b4b190536a89f91d4da32', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 44, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', 'f94004914e89f986916e96a4731db322', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '65990b9ff00394714dd60ffd708b2d77', 70, 7);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e76f4966a4808ea827d71853fd371ee3', 43, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '27253551d67fd5f23b3269719a3f5364', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '3b670218b85e117891afe278e7049563', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', 'a23554f135ed742872910b38a70131cf3', 58, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', 'a1ba42094f9b45486a0338b5eea859dfb', 68, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', '0ed9ff0fb2ac8a8eaa61fb380abeae73', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', '6600f0d4c66704194be3cfd3b144cc51', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'b5e288a53dc78ea05a6535356abeac07', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', '59655220bef9a6a88d8c2e35b30ba1d0', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'd227e9c886232aa6c2bbbddb2b348ad4', 44, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '759d757b5beb586dd93fecdbd1cd6c3b', 61, 4);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '9ce6e306ff41794fc8cac477c349a086', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'second', 'b099453f9cb986f40020465b5eb94d90', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '592c2e33c7971c02ec553000d0eaea43', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '4564d92b193505d71f29b5ae69dddde0', 44, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '6ff77816cb91134d254f1b0723fa0022', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '39a32afb98d21c8252ea3714cff0f62e', 69, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '2e05b6ab8648c84e56b486ea0bbf09fc', 42, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'second', '60a0b56f24fbf5e01737f620b657520d', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '9110334505c2e7ace9a292686b89c405', 44, 4);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'second', '49b5d0e77d63ac544da150a1e8e4e367', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 69, 2);

-- --------------------------------------------------------

--
-- Structure de la table `mod_standard_rows`
--

DROP TABLE IF EXISTS `mod_standard_rows`;
CREATE TABLE `mod_standard_rows` (
  `id_row` int(11) unsigned NOT NULL auto_increment,
  `uuid_row` varchar(36) NOT NULL,
  `label_row` varchar(100) NOT NULL default '',
  `definitionFile_row` varchar(100) NOT NULL default '',
  `modulesStack_row` varchar(255) NOT NULL default '',
  `groupsStack_row` varchar(255) NOT NULL default '',
  `image_row` varchar(255) NOT NULL default '',
  `description_row` text NOT NULL,
  `tplfilter_row` varchar(255) NOT NULL default '',
  `useable_row` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id_row`),
  FULLTEXT KEY `label_row` (`label_row`,`description_row`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_standard_rows`
--

INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(25, 'e5ae86ce-0baa-102e-80e2-001a6470da26', '000 Exemple', 'r25_Complet.xml', 'standard', '', 'nopicto.gif', 'Cette rangée regroupe des exemples des différents types de blocs à votre disposition : chaîne de caractères, texte, image, fichier, animation Flash', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(46, 'e5ae8a0c-0baa-102e-80e2-001a6470da26', '220 Texte et Image Gauche', 'r46_220_Texte_et_Image_Gauche.xml', 'standard', '', 'text-img-left.gif', 'Cette rangée permet d''insérer du texte qu''on pourra mettre en forme via l''éditeur Wysiwyg et elle permet d''insérer en plus une image alignée sur le côté gauche', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(45, 'e5ae8d0e-0baa-102e-80e2-001a6470da26', '210 Texte et Image Droite', 'r45_210_Texte__image_droite.xml', 'standard', '', 'text-img-right.gif', 'Cette rangée permet d''insérer du texte qu''on pourra mettre en forme via l''éditeur Wysiwyg et elle permet d''insérer en plus une image alignée sur le côté droit', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(44, 'e5ae9042-0baa-102e-80e2-001a6470da26', '200 Texte', 'r44_200_Texte.xml', 'standard', '', 'text.gif', 'Cette rangée peut contenir du texte mis en forme (liens, listes à puces, tableaux, etc.) à l''aide de l''éditeur Wysiwyg. Elle permet aussi d''insérer des liens vers des contenus stockés dans les modules', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(43, 'e5ae93a8-0baa-102e-80e2-001a6470da26', '110 Sous Titre (niveau 2)', 'r43_100_Sous_Titre.xml', 'standard', '', 'title.gif', 'Cette rangée permet d''insérer un titre de niveau 2 correspondant à l''élément H2 en HTML', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(42, 'e5ae95ba-0baa-102e-80e2-001a6470da26', '100 Titre (niveau 1)', 'r42_000_Titre.xml', 'standard', '', 'title.gif', 'Cette rangée vous permet d''insérer un titre de niveau 1 correspondant à l''élément H1 en HTML', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(47, 'e5ae983a-0baa-102e-80e2-001a6470da26', '400 Télécharger un fichier', 'r47_400_Telecharger_un_fichier.xml', 'standard', '', 'file.gif', 'Cette rangée permet d''insérer un fichier à télécharger', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(48, 'e5ae99f2-0baa-102e-80e2-001a6470da26', '300 Image Centrée', 'r48_300_Image_Centree.xml', 'standard', '', 'img.gif', 'Cette rangée insère une image centrée dont la largeur est limitée à 500px', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(49, 'e5ae9be6-0baa-102e-80e2-001a6470da26', '410 Animation Flash', 'r49_500_Animation_Flash.xml', 'standard', '', 'flash.gif', 'Cette rangée permet d''insérer une animation Flash (.swf)', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(54, 'e5ae9d8a-0baa-102e-80e2-001a6470da26', '700 Plan du site', 'r54_700_Plan_du_site.xml', '', 'admin', 'tree.gif', 'Cette rangée génère un plan du site à partir de la racine du site sur 3 niveaux de profondeur', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(55, 'e5ae9f92-0baa-102e-80e2-001a6470da26', '800 [Formulaire]', 'r55_800_Formulaire.xml', 'cms_forms', 'admin', 'form.gif', 'Cette rangée permet d''insérer un formulaire créé à partir du module formulaire', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(58, 'e5aea17c-0baa-102e-80e2-001a6470da26', '605 [Actualités] Recherche', 'r58_610_Actualites__Recherche_FR.xml', 'pnews', 'admin', 'module.gif', 'Cette rangée affiche les dix dernières actualités et permet une recherche par mots-clés ou par catégorie d''actualités', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(61, 'e5aea3ac-0baa-102e-80e2-001a6470da26', '900 Carte Google', 'r61_900_Google_Maps.xml', 'standard', 'admin', 'googlemaps.gif', 'Cette rangée vous permet d''insérer une carte Google Maps à partir d''une adresse postale.\nVoir le code source de la rangée pour plus d''informations.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(66, 'e5aea776-0baa-102e-80e2-001a6470da26', '615 [Actualités] Dernière actualité', 'r66_615_Derniere_actualite.xml', 'pnews', 'admin', 'module.gif', 'Cette rangée affiche la dernière actualité', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(67, 'e5aea92e-0baa-102e-80e2-001a6470da26', '120 Mini Titre (niveau 3)', 'r67_120_Sous_Sous_Titre.xml', 'standard', '', 'title.gif', 'Cette rangée vous permet d''insérer un titre de niveau 3 correspondant à l''élément H3 en HTML', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(68, 'e5aeab54-0baa-102e-80e2-001a6470da26', '650 [Médiathèque] Recherche', 'r68_650_Mediatheque.xml', 'pmedia', 'admin', 'module.gif', 'Cette rangée affiche les dix derniers éléments de la médiathèque et permet une recherche par mots-clés ou par catégorie de médias', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(69, 'e5aeadb6-0baa-102e-80e2-001a6470da26', '230 Texte et Média à Droite', 'r69_Texte_-_Media_a_droite.xml', 'pmedia;standard', '', 'text-mod-right.gif', 'Cette rangée permet d''insérer du texte qu''on pourra mettre en forme via l''éditeur Wysiwyg avec,  aligné à droite, un élément issu du module médiathèque', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(70, 'e5aeb0b8-0baa-102e-80e2-001a6470da26', '240 Texte et Média à Gauche', 'r70_240_Texte_et_Media_a_Gauche.xml', 'pmedia;standard', '', 'text-mod-left.gif', 'Cette rangée permet d''insérer du texte qu''on pourra mettre en forme via l''éditeur Wysiwyg avec,  aligné à gauche, un élément issu du module médiathèque', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(71, '02163c06-9082-102e-80e2-001a6470da26', '300 Média Centré', 'r71_300_Media_centre.xml', 'pmedia', '', 'module.gif', 'Cette rangée permet d''insérer un élément issu du module médiathèque centré dans la page.', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_date_deleted`
--

DROP TABLE IF EXISTS `mod_subobject_date_deleted`;
CREATE TABLE `mod_subobject_date_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_date_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_date_edited`
--

DROP TABLE IF EXISTS `mod_subobject_date_edited`;
CREATE TABLE `mod_subobject_date_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_date_edited`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_date_public`
--

DROP TABLE IF EXISTS `mod_subobject_date_public`;
CREATE TABLE `mod_subobject_date_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_date_public`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_integer_deleted`
--

DROP TABLE IF EXISTS `mod_subobject_integer_deleted`;
CREATE TABLE `mod_subobject_integer_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_integer_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_integer_edited`
--

DROP TABLE IF EXISTS `mod_subobject_integer_edited`;
CREATE TABLE `mod_subobject_integer_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_integer_edited`
--

INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(9, 4, 0, 0, 49);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(11, 4, 5, 0, 17);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(26, 17, 0, 0, 75);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(27, 17, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(28, 17, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 35, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 35, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 35, 0, 0, 107);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 24, 0, 0, 96);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(48, 24, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(49, 24, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(50, 25, 0, 0, 97);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(51, 25, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(52, 25, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(53, 26, 0, 0, 98);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(54, 26, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(55, 26, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(56, 27, 0, 0, 99);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(57, 27, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(58, 27, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(59, 28, 0, 0, 100);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(60, 28, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(61, 28, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(62, 29, 0, 0, 101);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(63, 29, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(64, 29, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 34, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 34, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(77, 34, 0, 0, 106);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 36, 0, 0, 109);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 36, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 36, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 37, 0, 0, 110);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 37, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 37, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 38, 0, 0, 111);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 38, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 38, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 39, 0, 0, 112);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 39, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 39, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 40, 0, 0, 113);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 40, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 40, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 44, 0, 0, 117);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 44, 5, 0, 17);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 45, 0, 0, 118);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 45, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 45, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 46, 0, 0, 119);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 46, 8, 0, 22);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 46, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 47, 0, 0, 120);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 47, 8, 0, 19);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(108, 47, 9, 3, 1);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(109, 48, 0, 0, 121);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(110, 48, 8, 0, 21);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(111, 48, 9, 3, 0);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(112, 49, 0, 0, 122);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(113, 49, 8, 0, 19);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(114, 49, 9, 3, 0);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(115, 50, 0, 0, 123);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(116, 50, 8, 0, 19);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(117, 50, 9, 3, 0);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(118, 51, 0, 0, 124);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(119, 51, 8, 0, 23);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(120, 51, 9, 3, 0);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(121, 44, 11, 0, 48);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(122, 4, 11, 0, 0);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(123, 52, 0, 0, 125);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(124, 52, 8, 0, 20);
INSERT INTO `mod_subobject_integer_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(125, 52, 9, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_integer_public`
--

DROP TABLE IF EXISTS `mod_subobject_integer_public`;
CREATE TABLE `mod_subobject_integer_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_integer_public`
--

INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(122, 4, 11, 0, 0);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(11, 4, 5, 0, 17);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(28, 17, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(27, 17, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(26, 17, 0, 0, 75);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 35, 0, 0, 107);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 35, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 35, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(49, 24, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(48, 24, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 24, 0, 0, 96);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(52, 25, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(51, 25, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(50, 25, 0, 0, 97);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(55, 26, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(54, 26, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(53, 26, 0, 0, 98);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(58, 27, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(57, 27, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(56, 27, 0, 0, 99);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(61, 28, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(60, 28, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(59, 28, 0, 0, 100);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(64, 29, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(63, 29, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(62, 29, 0, 0, 101);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(77, 34, 0, 0, 106);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 34, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 34, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 36, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 36, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 36, 0, 0, 109);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 37, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 37, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 37, 0, 0, 110);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 38, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 38, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 38, 0, 0, 111);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 39, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 39, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 39, 0, 0, 112);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 40, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 40, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 40, 0, 0, 113);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(121, 44, 11, 0, 48);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 44, 5, 0, 17);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 45, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 45, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 45, 0, 0, 118);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 46, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 46, 8, 0, 22);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 46, 0, 0, 119);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(108, 47, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 47, 8, 0, 19);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 47, 0, 0, 120);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(111, 48, 9, 3, 0);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(110, 48, 8, 0, 21);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(109, 48, 0, 0, 121);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(114, 49, 9, 3, 0);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(113, 49, 8, 0, 19);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(112, 49, 0, 0, 122);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(115, 50, 0, 0, 123);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(116, 50, 8, 0, 19);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(117, 50, 9, 3, 0);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(118, 51, 0, 0, 124);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(119, 51, 8, 0, 23);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(120, 51, 9, 3, 0);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 44, 0, 0, 117);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(9, 4, 0, 0, 49);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(125, 52, 9, 3, 1);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(124, 52, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(123, 52, 0, 0, 125);

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_string_deleted`
--

DROP TABLE IF EXISTS `mod_subobject_string_deleted`;
CREATE TABLE `mod_subobject_string_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_string_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_string_edited`
--

DROP TABLE IF EXISTS `mod_subobject_string_edited`;
CREATE TABLE `mod_subobject_string_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_string_edited`
--

INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(15, 4, 1, 0, 'Automne : le CMS intuitif');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(204, 52, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 17, 6, 0, 'Gestion des dates de publication');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 17, 9, 0, 'Gestion des dates de publication');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 17, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 17, 9, 2, '0.01');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 17, 9, 4, 'r17_9_date_de_publication_-_automne_cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(137, 35, 9, 4, 'r35_9_interface-automne-cms-demo.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(136, 35, 9, 2, '0.21');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(134, 35, 9, 0, 'Interface du CMS Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(135, 35, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 24, 6, 0, 'Gestion des rangées de contenu');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 24, 9, 0, 'Gestion des rangées de contenu');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 24, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 24, 9, 2, '0.05');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 24, 9, 4, 'r24_9_edition_rangee_de_contenu_-_automne_cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 25, 6, 0, 'Gestion des modèles de pages');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 25, 9, 0, 'Gestion des modèles de pages');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 25, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 25, 9, 2, '0.11');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 25, 9, 4, 'r25_9_gestion_des_modeles_de_page_-_automne.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 26, 6, 0, 'Modules installés par défaut dans Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 26, 9, 0, 'Modules installés par défaut dans Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 26, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 26, 9, 2, '0.02');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 26, 9, 4, 'r26_9_module.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 27, 6, 0, 'Gestion des utilisateurs / groupes');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 27, 9, 0, 'Gestion des utilisateurs / groupes');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 27, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 27, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 27, 9, 4, 'r27_9_gestion_des_utilisateurs_-_automne_cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 28, 6, 0, 'Gestion des droits d&#039;utilisateurs.');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 28, 9, 0, 'Gestion des droits d&#039;utilisateurs.');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 28, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 28, 9, 2, '0.08');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 28, 9, 4, 'r28_9_droits.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 29, 6, 0, 'Franky aux RMLL');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 29, 9, 0, 'Franky aux RMLL');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 29, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 29, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 29, 9, 4, 'r29_9_franky.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(132, 34, 9, 4, 'r34_9_glisser-deposer-rangee-automne-cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(130, 34, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(131, 34, 9, 2, '0.09');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(129, 34, 9, 0, 'Glisser-déposer d&#039;une rangée de contenu');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(128, 34, 6, 0, 'Glisser-déposer d&#039;une rangée de contenu');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(133, 35, 6, 0, 'Interface d&#039;administration du CMS Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(138, 36, 6, 0, 'Assistant de création de page');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(139, 36, 9, 0, 'Assistant de création de page');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(140, 36, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(141, 36, 9, 2, '0.06');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(142, 36, 9, 4, 'r36_9_assistant-creation-de-page-automne-cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(143, 37, 6, 0, 'Aide du module actualités');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(144, 37, 9, 0, 'Aide du module actualités');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(145, 37, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(146, 37, 9, 2, '0.14');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(147, 37, 9, 4, 'r37_9_aide.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(148, 38, 6, 0, 'Aide contextuelle');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(149, 38, 9, 0, 'Aide contextuelle');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(150, 38, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(151, 38, 9, 2, '0.13');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(152, 38, 9, 4, 'r38_9_aiderobots.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(153, 39, 6, 0, 'Moteur de recherche');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(154, 39, 9, 0, 'Résultats de recherche');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(155, 39, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(156, 39, 9, 2, '0.09');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(157, 39, 9, 4, 'r39_9_moteur-recherche-automne-cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(158, 40, 6, 0, 'Administration du module formulaire');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(159, 40, 9, 0, 'Administration du module formulaire');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(160, 40, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(161, 40, 9, 2, '0');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(162, 40, 9, 4, 'r40_9_gestion-formulaires-automne-cms.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(163, 44, 1, 0, 'Automne aux rencontres mondiales du logiciel libre');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(203, 52, 9, 0, 'Logo Open Source');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(202, 52, 6, 0, 'Logo Open Source');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(167, 45, 6, 0, 'Automne : anatomie des pages');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(168, 45, 9, 0, 'Automne : anatomie des pages');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(169, 45, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(170, 45, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(171, 45, 9, 4, 'r45_9_automne-shema-modeles-rangees.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(172, 46, 6, 0, 'Fichier audio');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(173, 46, 9, 0, 'Fichier audio');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(174, 46, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(175, 46, 9, 2, '0.07');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(176, 46, 9, 4, 'r46_9_automne-loop.mp3');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(177, 47, 6, 0, 'Animation vidéo Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(178, 47, 9, 0, 'Animation vidéo Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(179, 47, 9, 1, 'r47_9_video_thumbnail.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(180, 47, 9, 2, '0.19');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(181, 47, 9, 4, 'r47_9_logo_atm2.flv');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(182, 48, 6, 0, 'Présentation Automne sur Slideshare');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(183, 48, 9, 0, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(184, 48, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(185, 48, 9, 2, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(186, 48, 9, 4, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(187, 49, 6, 0, 'Vidéo Automne sur DailyMotion');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(188, 49, 9, 0, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(189, 49, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(190, 49, 9, 2, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(191, 49, 9, 4, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(192, 50, 6, 0, 'Vidéo Automne sur Youtube');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(193, 50, 9, 0, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(194, 50, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(195, 50, 9, 2, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(196, 50, 9, 4, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(197, 51, 6, 0, 'Diaporama Automne sur Flickr');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(198, 51, 9, 0, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(199, 51, 9, 1, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(200, 51, 9, 2, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(201, 51, 9, 4, '');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(205, 52, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(206, 52, 9, 4, 'r52_9_opensource.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_string_public`
--

DROP TABLE IF EXISTS `mod_subobject_string_public`;
CREATE TABLE `mod_subobject_string_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_string_public`
--

INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(180, 47, 9, 2, '0.19');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 28, 9, 0, 'Gestion des droits d&#039;utilisateurs.');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 27, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 25, 9, 2, '0.11');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 25, 9, 4, 'r25_9_gestion_des_modeles_de_page_-_automne.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 26, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 27, 9, 4, 'r27_9_gestion_des_utilisateurs_-_automne_cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 27, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 29, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(128, 34, 6, 0, 'Glisser-déposer d&#039;une rangée de contenu');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 26, 9, 0, 'Modules installés par défaut dans Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 29, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 29, 9, 0, 'Franky aux RMLL');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 28, 6, 0, 'Gestion des droits d&#039;utilisateurs.');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 25, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 24, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(129, 34, 9, 0, 'Glisser-déposer d&#039;une rangée de contenu');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(135, 35, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(133, 35, 6, 0, 'Interface d&#039;administration du CMS Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(141, 36, 9, 2, '0.06');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(142, 36, 9, 4, 'r36_9_assistant-creation-de-page-automne-cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(146, 37, 9, 2, '0.14');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(145, 37, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(144, 37, 9, 0, 'Aide du module actualités');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(151, 38, 9, 2, '0.13');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(150, 38, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(156, 39, 9, 2, '0.09');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(157, 39, 9, 4, 'r39_9_moteur-recherche-automne-cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(155, 39, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(161, 40, 9, 2, '0');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(162, 40, 9, 4, 'r40_9_gestion-formulaires-automne-cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(160, 40, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(134, 35, 9, 0, 'Interface du CMS Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(205, 52, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(202, 52, 6, 0, 'Logo Open Source');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 24, 9, 2, '0.05');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 29, 6, 0, 'Franky aux RMLL');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(143, 37, 6, 0, 'Aide du module actualités');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(149, 38, 9, 0, 'Aide contextuelle');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(148, 38, 6, 0, 'Aide contextuelle');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(15, 4, 1, 0, 'Automne : le CMS intuitif');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 17, 9, 2, '0.01');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 17, 9, 4, 'r17_9_date_de_publication_-_automne_cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(136, 35, 9, 2, '0.21');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(137, 35, 9, 4, 'r35_9_interface-automne-cms-demo.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(140, 36, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(167, 45, 6, 0, 'Automne : anatomie des pages');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(168, 45, 9, 0, 'Automne : anatomie des pages');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(169, 45, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(170, 45, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(171, 45, 9, 4, 'r45_9_automne-shema-modeles-rangees.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(175, 46, 9, 2, '0.07');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(174, 46, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(179, 47, 9, 1, 'r47_9_video_thumbnail.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(173, 46, 9, 0, 'Fichier audio');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(172, 46, 6, 0, 'Fichier audio');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 26, 6, 0, 'Modules installés par défaut dans Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 25, 9, 0, 'Gestion des modèles de pages');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 25, 6, 0, 'Gestion des modèles de pages');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(139, 36, 9, 0, 'Assistant de création de page');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(138, 36, 6, 0, 'Assistant de création de page');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(178, 47, 9, 0, 'Animation vidéo Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(159, 40, 9, 0, 'Administration du module formulaire');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(158, 40, 6, 0, 'Administration du module formulaire');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(177, 47, 6, 0, 'Animation vidéo Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(154, 39, 9, 0, 'Résultats de recherche');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(153, 39, 6, 0, 'Moteur de recherche');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(131, 34, 9, 2, '0.09');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(130, 34, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(132, 34, 9, 4, 'r34_9_glisser-deposer-rangee-automne-cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 27, 9, 0, 'Gestion des utilisateurs / groupes');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 27, 6, 0, 'Gestion des utilisateurs / groupes');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 24, 9, 4, 'r24_9_edition_rangee_de_contenu_-_automne_cms.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 24, 9, 0, 'Gestion des rangées de contenu');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 24, 6, 0, 'Gestion des rangées de contenu');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 17, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 17, 9, 0, 'Gestion des dates de publication');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 17, 6, 0, 'Gestion des dates de publication');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 29, 9, 4, 'r29_9_franky.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(163, 44, 1, 0, 'Automne aux rencontres mondiales du logiciel libre');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(176, 46, 9, 4, 'r46_9_automne-loop.mp3');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(152, 38, 9, 4, 'r38_9_aiderobots.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(147, 37, 9, 4, 'r37_9_aide.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 28, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 28, 9, 2, '0.08');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 28, 9, 4, 'r28_9_droits.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 26, 9, 2, '0.02');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 26, 9, 4, 'r26_9_module.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(181, 47, 9, 4, 'r47_9_logo_atm2.flv');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(183, 48, 9, 0, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(182, 48, 6, 0, 'Présentation Automne sur Slideshare');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(184, 48, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(185, 48, 9, 2, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(186, 48, 9, 4, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(189, 49, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(188, 49, 9, 0, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(187, 49, 6, 0, 'Vidéo Automne sur DailyMotion');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(192, 50, 6, 0, 'Vidéo Automne sur Youtube');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(193, 50, 9, 0, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(194, 50, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(195, 50, 9, 2, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(196, 50, 9, 4, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(190, 49, 9, 2, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(191, 49, 9, 4, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(197, 51, 6, 0, 'Diaporama Automne sur Flickr');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(198, 51, 9, 0, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(199, 51, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(200, 51, 9, 2, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(201, 51, 9, 4, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(203, 52, 9, 0, 'Logo Open Source');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(204, 52, 9, 1, '');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(206, 52, 9, 4, 'r52_9_opensource.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_text_deleted`
--

DROP TABLE IF EXISTS `mod_subobject_text_deleted`;
CREATE TABLE `mod_subobject_text_deleted` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_text_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_text_edited`
--

DROP TABLE IF EXISTS `mod_subobject_text_edited`;
CREATE TABLE `mod_subobject_text_edited` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_text_edited`
--

INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(4, 4, 2, 0, '<p>Connectez-vous sur le site et appréciez la simplicité d''édition et de gestion de contenu offerte par Automne. Modifiez le contenu et l''arborescence des pages du site ainsi que les actualités ou les éléments de la médiathèque en quelques clics.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(5, 4, 3, 0, '<p>Automne est l''aboutissement de plusieurs années d''expérience utilisateur avec les précédentes versions d''Automne.&#160;L''interface d''administration a été pensée pour être intuitive, ergonomique et extensible.&#160;</p> <blockquote> <p>Grâce à des outils provenant de la communauté open-source, nous avons pu ajouter plein de fonctionnalités pratiques à Automne. Un grand merci à leurs auteurs pour leur travail !</p> </blockquote> <p>Vous pouvez utiliser librement <a target="_blank" href="http://www.automne-cms.org">Automne</a> pour vos projets, nous avons mis à votre disposition <a target="_blank" href="http://doc.automne-cms.org">toutes les informations nécessaires</a> pour vous lancer.</p> <p>Si vous avez des questions vous pouvez vous rendre sur le <a target="_blank" href="http://forum.automne-cms.org">forum</a> ou nous contacter directement via le <span id="standard-9-true"><?php if (CMS_tree::pageExistsForUser(9)) { echo ''<a  href="''.CMS_tree::getPageValue(9, ''url'').''">formulaire de contact</a>'';} else { echo ''formulaire de contact'';} ?><!--{elements:YToxOntzOjY6Im1vZHVsZSI7YToxOntpOjA7czo4OiJzdGFuZGFyZCI7fX0=}--></span>.</p> <p>Bonne visite.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(36, 44, 2, 0, '<p>Nous avons eu le plaisir de nous rendre pour la première fois aux rencontres mondiales du logiciel libre dont l''édition 2010 se tenait à Bordeaux. Beaucoup d''échanges et de présentations intéressantes avec des acteurs du logiciel libre et donc un bilan très positif.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(37, 44, 3, 0, '<p>Voici la présentation d''Automne que nous avons donné aux rencontres mondiales du logiciel libre à Bordeaux. Il s''agissait pour nous de faire passer en 20 minutes, les principales caractéristiques et la philosophie d''Automne, qui s''adresse à la fois au grand public pour la partie mise à jour des contenus et avant-tout à un public de développeurs front-end pour la conception.</p> <p><a title="Automne, CMS open source" target="_blank" href="http://www.slideshare.net/DIrtyF/automne-cms-open-source-4727427">Slide de la présentation : Automne, CMS open source</a></p> <p>Si vous avez des retours ou des demandes sur Automne, n''hésitez pas poster dans les commentaires ou sur le <a target="_blank" href="http://forum.automne-cms.org">forum</a>.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(12, 17, 7, 0, '<p>Gestion des dates de publication d''un élément sur le site dans Automne.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(19, 24, 7, 0, '<p>Lors de l''édition de rangée de contenu, vous pouvez modifier les propriétés de la rangée ainsi que son code XML.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(20, 25, 7, 0, '<p>Gestion des modèles de page, édition du code XML.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(21, 26, 7, 0, '<p>Modules disponibles par défaut dans Automne : gestion de pages, actualités, formulaires, alias et médiathèque.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(22, 27, 7, 0, '<p>L''interface de gestion des utilisateurs et des groupes dans Automne.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(23, 28, 7, 0, '<p>Ecran de la gestion des droits d''utilisateurs.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(24, 29, 7, 0, '<p>Frank et son beau tee-shirt Automne aux RMLL 2010.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(29, 34, 7, 0, '<p>Lors de l''édition, &#160;vous pouvez faire un glisser-déposer pour déplacer les rangées et réorganiser votre page simplement.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(30, 35, 7, 0, '<p>L''interface d''Automne vient se greffer sur votre site web. Vous avez ensuite la possibilité d''éditer les pages de manière visuelle. Vous avez également accès à la gestion des modules installés dans la barre latérale ainsi qu''à toutes les fonctions d''administration si vous avez les droits adéquats.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(31, 36, 7, 0, '<p>L''assistant d''ajout de page vous permet d''ajouter simplement des pages dans votre arborescence en choisissant :</p><ul><li>un titre voire un libellé différent pour le lien vers cette page ;</li><li>un modèle avec ou sans les rangées par défaut.</li></ul>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(32, 37, 7, 0, '<p>Aide à la syntaxe des rangées de contenu actualités.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(33, 38, 7, 0, '<p>Ecran de l''aide contextuelle pour les robots.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(34, 39, 7, 0, '<p>Liste de résultats pour une recherche sur le mot "interface" dans Automne.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(35, 40, 7, 0, '<p>Ecran d''administration du module formulaire.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(38, 45, 7, 0, '<p>Dans Automne une page web comporte obligatoirement un modèle de page qui peut contenir une ou plusieurs zones modifiables (espaces client), qui elles même peuvent recevoir un ou plusieurs blocs de contenu (rangées).&#160;</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(39, 46, 7, 0, '<p>Exemple de fichier audio.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(40, 47, 7, 0, '<p>&#160;Exemple d''animation vidéo pour la démonstration d''Automne.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(41, 48, 7, 0, '<p>Slide de présentation d''Automne pour les <a target="_blank" href="http://2010.rmll.info/CMS-Automne-Goutez-la-simplicite.html">Rencontres Mondiales du Logiciel Libre 2010</a>. Hébergé sur SlideShare.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(42, 48, 10, 0, 'http://www.slideshare.net/DIrtyF/automne-cms-open-source-4727427');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 49, 7, 0, '<p>Vidéo de présentation d''Automne, hébergée sur Dailymotion.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 49, 10, 0, 'http://www.dailymotion.com/video/xcrlfc_automne-cms-open-source_tech');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 50, 7, 0, '<p>Vidéo de présentation d''Automne hébergée sur Youtube.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 50, 10, 0, 'http://www.youtube.com/watch?v=NS4Dr1kyL5w');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 51, 7, 0, '<p>Diaporama d''images Automne hébergé sur Flickr.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(48, 51, 10, 0, 'http://www.flickr.com/groups/automne-cms/pool/show/');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(49, 29, 10, 0, '');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(50, 52, 7, 0, '<p>Emblème officielle des logiciels open-source.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(51, 52, 10, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `mod_subobject_text_public`
--

DROP TABLE IF EXISTS `mod_subobject_text_public`;
CREATE TABLE `mod_subobject_text_public` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `objectID` int(11) unsigned NOT NULL default '0',
  `objectFieldID` int(11) unsigned NOT NULL default '0',
  `objectSubFieldID` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `objectID` (`objectID`),
  KEY `objectFieldID` (`objectFieldID`),
  KEY `objectSubFieldID` (`objectSubFieldID`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mod_subobject_text_public`
--

INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(30, 35, 7, 0, '<p>L''interface d''Automne vient se greffer sur votre site web. Vous avez ensuite la possibilité d''éditer les pages de manière visuelle. Vous avez également accès à la gestion des modules installés dans la barre latérale ainsi qu''à toutes les fonctions d''administration si vous avez les droits adéquats.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(20, 25, 7, 0, '<p>Gestion des modèles de page, édition du code XML.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(21, 26, 7, 0, '<p>Modules disponibles par défaut dans Automne : gestion de pages, actualités, formulaires, alias et médiathèque.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(22, 27, 7, 0, '<p>L''interface de gestion des utilisateurs et des groupes dans Automne.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(24, 29, 7, 0, '<p>Frank et son beau tee-shirt Automne aux RMLL 2010.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(23, 28, 7, 0, '<p>Ecran de la gestion des droits d''utilisateurs.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(32, 37, 7, 0, '<p>Aide à la syntaxe des rangées de contenu actualités.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(33, 38, 7, 0, '<p>Ecran de l''aide contextuelle pour les robots.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(34, 39, 7, 0, '<p>Liste de résultats pour une recherche sur le mot "interface" dans Automne.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(35, 40, 7, 0, '<p>Ecran d''administration du module formulaire.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(5, 4, 3, 0, '<p>Automne est l''aboutissement de plusieurs années d''expérience utilisateur avec les précédentes versions d''Automne.&#160;L''interface d''administration a été pensée pour être intuitive, ergonomique et extensible.&#160;</p> <blockquote> <p>Grâce à des outils provenant de la communauté open-source, nous avons pu ajouter plein de fonctionnalités pratiques à Automne. Un grand merci à leurs auteurs pour leur travail !</p> </blockquote> <p>Vous pouvez utiliser librement <a target="_blank" href="http://www.automne-cms.org">Automne</a> pour vos projets, nous avons mis à votre disposition <a target="_blank" href="http://doc.automne-cms.org">toutes les informations nécessaires</a> pour vous lancer.</p> <p>Si vous avez des questions vous pouvez vous rendre sur le <a target="_blank" href="http://forum.automne-cms.org">forum</a> ou nous contacter directement via le <span id="standard-9-true"><?php if (CMS_tree::pageExistsForUser(9)) { echo ''<a  href="''.CMS_tree::getPageValue(9, ''url'').''">formulaire de contact</a>'';} else { echo ''formulaire de contact'';} ?><!--{elements:YToxOntzOjY6Im1vZHVsZSI7YToxOntpOjA7czo4OiJzdGFuZGFyZCI7fX0=}--></span>.</p> <p>Bonne visite.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(37, 44, 3, 0, '<p>Voici la présentation d''Automne que nous avons donné aux rencontres mondiales du logiciel libre à Bordeaux. Il s''agissait pour nous de faire passer en 20 minutes, les principales caractéristiques et la philosophie d''Automne, qui s''adresse à la fois au grand public pour la partie mise à jour des contenus et avant-tout à un public de développeurs front-end pour la conception.</p> <p><a title="Automne, CMS open source" target="_blank" href="http://www.slideshare.net/DIrtyF/automne-cms-open-source-4727427">Slide de la présentation : Automne, CMS open source</a></p> <p>Si vous avez des retours ou des demandes sur Automne, n''hésitez pas poster dans les commentaires ou sur le <a target="_blank" href="http://forum.automne-cms.org">forum</a>.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(31, 36, 7, 0, '<p>L''assistant d''ajout de page vous permet d''ajouter simplement des pages dans votre arborescence en choisissant :</p><ul><li>un titre voire un libellé différent pour le lien vers cette page ;</li><li>un modèle avec ou sans les rangées par défaut.</li></ul>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(38, 45, 7, 0, '<p>Dans Automne une page web comporte obligatoirement un modèle de page qui peut contenir une ou plusieurs zones modifiables (espaces client), qui elles même peuvent recevoir un ou plusieurs blocs de contenu (rangées).&#160;</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(39, 46, 7, 0, '<p>Exemple de fichier audio.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(40, 47, 7, 0, '<p>&#160;Exemple d''animation vidéo pour la démonstration d''Automne.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(29, 34, 7, 0, '<p>Lors de l''édition, &#160;vous pouvez faire un glisser-déposer pour déplacer les rangées et réorganiser votre page simplement.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(19, 24, 7, 0, '<p>Lors de l''édition de rangée de contenu, vous pouvez modifier les propriétés de la rangée ainsi que son code XML.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(12, 17, 7, 0, '<p>Gestion des dates de publication d''un élément sur le site dans Automne.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(42, 48, 10, 0, 'http://www.slideshare.net/DIrtyF/automne-cms-open-source-4727427');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(41, 48, 7, 0, '<p>Slide de présentation d''Automne pour les <a target="_blank" href="http://2010.rmll.info/CMS-Automne-Goutez-la-simplicite.html">Rencontres Mondiales du Logiciel Libre 2010</a>. Hébergé sur SlideShare.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 49, 10, 0, 'http://www.dailymotion.com/video/xcrlfc_automne-cms-open-source_tech');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 49, 7, 0, '<p>Vidéo de présentation d''Automne, hébergée sur Dailymotion.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 50, 7, 0, '<p>Vidéo de présentation d''Automne hébergée sur Youtube.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 50, 10, 0, 'http://www.youtube.com/watch?v=NS4Dr1kyL5w');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 51, 7, 0, '<p>Diaporama d''images Automne hébergé sur Flickr.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(48, 51, 10, 0, 'http://www.flickr.com/groups/automne-cms/pool/show/');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(36, 44, 2, 0, '<p>Nous avons eu le plaisir de nous rendre pour la première fois aux rencontres mondiales du logiciel libre dont l''édition 2010 se tenait à Bordeaux. Beaucoup d''échanges et de présentations intéressantes avec des acteurs du logiciel libre et donc un bilan très positif.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(49, 29, 10, 0, '');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(50, 52, 7, 0, '<p>Emblème officielle des logiciels open-source.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(51, 52, 10, 0, '');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(4, 4, 2, 0, '<p>Connectez-vous sur le site et appréciez la simplicité d''édition et de gestion de contenu offerte par Automne. Modifiez le contenu et l''arborescence des pages du site ainsi que les actualités ou les éléments de la médiathèque en quelques clics.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id_pag` int(11) unsigned NOT NULL auto_increment,
  `resource_pag` int(11) unsigned NOT NULL default '0',
  `remindedEditorsStack_pag` varchar(255) NOT NULL default '',
  `lastReminder_pag` date NOT NULL default '0000-00-00',
  `template_pag` int(11) unsigned NOT NULL default '0',
  `lastFileCreation_pag` datetime NOT NULL default '0000-00-00 00:00:00',
  `url_pag` varchar(255) NOT NULL default '',
  `protected_pag` int(1) NOT NULL,
  `https_pag` int(1) NOT NULL,
  PRIMARY KEY  (`id_pag`),
  KEY `template_pag` (`template_pag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(1, 1, '', '2008-10-31', 1, '2011-07-12 18:12:14', '1-automne.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(2, 40, '1', '2008-10-31', 57, '2011-07-12 18:12:16', '2-automne-gouter-a-la-simplicite.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(3, 41, '1', '2008-11-03', 59, '2011-07-12 18:12:18', '3-presentation.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(5, 43, '1', '2008-11-03', 61, '2011-07-12 18:12:19', '5-actualites.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(6, 44, '1', '2008-11-03', 62, '2011-07-12 18:12:13', '6-mediatheque.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(7, 45, '', '2008-11-03', 63, '0000-00-00 00:00:00', '', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(8, 46, '1', '2008-11-03', 64, '2011-07-12 18:12:12', '8-plan-du-site.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(9, 47, '1', '2008-11-03', 65, '2011-07-12 18:12:10', '9-contact.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(38, 108, '1', '2009-03-04', 95, '2011-07-12 18:12:21', '38-aide-aux-utilisateurs.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(24, 80, '1', '2009-02-03', 81, '2011-07-12 18:12:09', '24-fonctionnalites.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(25, 81, '1', '2009-02-03', 82, '2011-07-12 18:12:07', '25-modeles-de-pages.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(26, 82, '1', '2009-02-03', 83, '2011-07-12 18:12:06', '26-rangees-de-contenu.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(27, 83, '1', '2009-02-03', 84, '2011-07-12 18:12:04', '27-modules.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(28, 84, '1', '2009-02-03', 85, '2011-07-12 18:12:03', '28-gestion-des-utilisateurs.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(29, 85, '1', '2009-02-04', 86, '2011-07-12 18:12:01', '29-automne.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(30, 86, '1', '2009-02-04', 87, '2011-07-12 18:12:00', '30-pre-requis.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(31, 87, '1', '2009-02-04', 88, '2011-07-12 18:11:58', '31-exemples-de-modules.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(33, 89, '1', '2009-02-04', 90, '2011-07-12 18:11:56', '33-points-forts.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(34, 90, '1', '2009-02-04', 91, '2011-07-12 18:11:54', '34-fonctions-avancees.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(35, 91, '1', '2009-02-04', 92, '2011-07-12 18:11:53', '35-gestion-des-droits.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(36, 92, '', '2009-03-02', 93, '2011-07-12 18:11:51', '36-formulaire.php', 0, 0);
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`, `protected_pag`, `https_pag`) VALUES(37, 93, '1', '2009-03-02', 94, '2011-07-12 18:11:50', '37-circuit-de-publication.php', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `pagesBaseData_archived`
--

DROP TABLE IF EXISTS `pagesBaseData_archived`;
CREATE TABLE `pagesBaseData_archived` (
  `id_pbd` int(11) unsigned NOT NULL auto_increment,
  `page_pbd` int(11) unsigned NOT NULL default '0',
  `title_pbd` varchar(150) NOT NULL default '',
  `linkTitle_pbd` varchar(150) NOT NULL default '',
  `keywords_pbd` mediumtext NOT NULL,
  `description_pbd` mediumtext NOT NULL,
  `reminderPeriodicity_pbd` smallint(6) unsigned NOT NULL default '0',
  `reminderOn_pbd` date NOT NULL default '0000-00-00',
  `reminderOnMessage_pbd` mediumtext NOT NULL,
  `category_pbd` varchar(255) NOT NULL default '',
  `author_pbd` varchar(255) NOT NULL default '',
  `replyto_pbd` varchar(255) NOT NULL default '',
  `copyright_pbd` varchar(255) NOT NULL default '',
  `language_pbd` varchar(255) NOT NULL default '',
  `robots_pbd` varchar(255) NOT NULL default '',
  `pragma_pbd` varchar(255) NOT NULL default '',
  `refresh_pbd` varchar(255) NOT NULL default '',
  `redirect_pbd` varchar(255) NOT NULL default '',
  `refreshUrl_pbd` int(1) NOT NULL default '0',
  `url_pbd` varchar(255) NOT NULL default '',
  `metas_pbd` text NOT NULL,
  `codename_pbd` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_archived`
--


-- --------------------------------------------------------

--
-- Structure de la table `pagesBaseData_deleted`
--

DROP TABLE IF EXISTS `pagesBaseData_deleted`;
CREATE TABLE `pagesBaseData_deleted` (
  `id_pbd` int(11) unsigned NOT NULL auto_increment,
  `page_pbd` int(11) unsigned NOT NULL default '0',
  `title_pbd` varchar(150) NOT NULL default '',
  `linkTitle_pbd` varchar(150) NOT NULL default '',
  `keywords_pbd` mediumtext NOT NULL,
  `description_pbd` mediumtext NOT NULL,
  `reminderPeriodicity_pbd` smallint(6) unsigned NOT NULL default '0',
  `reminderOn_pbd` date NOT NULL default '0000-00-00',
  `reminderOnMessage_pbd` mediumtext NOT NULL,
  `category_pbd` varchar(255) NOT NULL default '',
  `author_pbd` varchar(255) NOT NULL default '',
  `replyto_pbd` varchar(255) NOT NULL default '',
  `copyright_pbd` varchar(255) NOT NULL default '',
  `language_pbd` varchar(255) NOT NULL default '',
  `robots_pbd` varchar(255) NOT NULL default '',
  `pragma_pbd` varchar(255) NOT NULL default '',
  `refresh_pbd` varchar(255) NOT NULL default '',
  `redirect_pbd` varchar(255) NOT NULL default '',
  `refreshUrl_pbd` int(1) NOT NULL default '0',
  `url_pbd` varchar(255) NOT NULL default '',
  `metas_pbd` text NOT NULL,
  `codename_pbd` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_deleted`
--


-- --------------------------------------------------------

--
-- Structure de la table `pagesBaseData_edited`
--

DROP TABLE IF EXISTS `pagesBaseData_edited`;
CREATE TABLE `pagesBaseData_edited` (
  `id_pbd` int(11) unsigned NOT NULL auto_increment,
  `page_pbd` int(11) unsigned NOT NULL default '0',
  `title_pbd` varchar(150) NOT NULL default '',
  `linkTitle_pbd` varchar(150) NOT NULL default '',
  `keywords_pbd` mediumtext NOT NULL,
  `description_pbd` mediumtext NOT NULL,
  `reminderPeriodicity_pbd` smallint(6) unsigned NOT NULL default '0',
  `reminderOn_pbd` date NOT NULL default '0000-00-00',
  `reminderOnMessage_pbd` mediumtext NOT NULL,
  `category_pbd` varchar(255) NOT NULL default '',
  `author_pbd` varchar(255) NOT NULL default '',
  `replyto_pbd` varchar(255) NOT NULL default '',
  `copyright_pbd` varchar(255) NOT NULL default '',
  `language_pbd` varchar(255) NOT NULL default '',
  `robots_pbd` varchar(255) NOT NULL default '',
  `pragma_pbd` varchar(255) NOT NULL default '',
  `refresh_pbd` varchar(255) NOT NULL default '',
  `redirect_pbd` varchar(255) NOT NULL default '',
  `refreshUrl_pbd` int(1) NOT NULL default '0',
  `url_pbd` varchar(255) NOT NULL default '',
  `metas_pbd` text NOT NULL,
  `codename_pbd` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`),
  FULLTEXT KEY `title_pbd` (`title_pbd`,`linkTitle_pbd`,`keywords_pbd`,`description_pbd`,`codename_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_edited`
--

INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(1, 1, 'Automne - test - 4.2.0-dev', 'Automne - test - 4.2.0-dev', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|2|||_top|||', 0, '', '', 'root');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(20, 2, 'Automne : goûter à la simplicité', 'Accueil', 'automne, cms, ecm, gestionnaire de contenu, toulouse, ws-interactive', 'Automne est un gestionnaire de contenu pour les entreprises open-source. Entièrement modulable il s''adapte à vos besoins.', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'home');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(21, 3, 'Présentation', 'Présentation', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(23, 5, 'Actualités', 'Actualités', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', 'news');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(24, 6, 'Médiathèque', 'Médiathèque', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', 'media');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(25, 7, 'Bas de page', 'Bas de page', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', 'footer');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(26, 8, 'Plan du site', 'Plan du site', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'sitemap');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(27, 9, 'Contact', 'Contact', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'contact');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(54, 38, 'Aide aux utilisateurs', 'Aide utilisateurs', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(40, 24, 'Fonctionnalités', 'Fonctionnalités', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(41, 25, 'Modèles de Pages', 'Modèles', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(42, 26, 'Rangées de contenu', 'Rangées', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(43, 27, 'Modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(44, 28, 'Gestion des utilisateurs', 'Gestion des utilisateurs', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(45, 29, 'Automne', 'Automne', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(46, 30, 'Pré-requis', 'Pré-requis', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(47, 31, 'Exemples de modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(49, 33, 'Points forts', 'Points forts', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(50, 34, 'Fonctions avancées', 'Fonctions avancées', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(51, 35, 'Gestion des droits', 'Gestion des droits', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(52, 36, 'Formulaire', 'Formulaire', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|9|||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(53, 37, 'Circuit de publication', 'Circuit de publication', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `pagesBaseData_public`
--

DROP TABLE IF EXISTS `pagesBaseData_public`;
CREATE TABLE `pagesBaseData_public` (
  `id_pbd` int(11) unsigned NOT NULL auto_increment,
  `page_pbd` int(11) unsigned NOT NULL default '0',
  `title_pbd` varchar(150) NOT NULL default '',
  `linkTitle_pbd` varchar(150) NOT NULL default '',
  `keywords_pbd` mediumtext NOT NULL,
  `description_pbd` mediumtext NOT NULL,
  `reminderPeriodicity_pbd` smallint(6) unsigned NOT NULL default '0',
  `reminderOn_pbd` date NOT NULL default '0000-00-00',
  `reminderOnMessage_pbd` mediumtext NOT NULL,
  `category_pbd` varchar(255) NOT NULL default '',
  `author_pbd` varchar(255) NOT NULL default '',
  `replyto_pbd` varchar(255) NOT NULL default '',
  `copyright_pbd` varchar(255) NOT NULL default '',
  `language_pbd` varchar(255) NOT NULL default '',
  `robots_pbd` varchar(255) NOT NULL default '',
  `pragma_pbd` varchar(255) NOT NULL default '',
  `refresh_pbd` varchar(255) NOT NULL default '',
  `redirect_pbd` varchar(255) NOT NULL default '',
  `refreshUrl_pbd` int(1) NOT NULL default '0',
  `url_pbd` varchar(255) NOT NULL default '',
  `metas_pbd` text NOT NULL,
  `codename_pbd` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`),
  FULLTEXT KEY `title_pbd` (`title_pbd`,`linkTitle_pbd`,`keywords_pbd`,`description_pbd`,`codename_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_public`
--

INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(1, 1, 'Automne - test - 4.2.0-dev', 'Automne - test - 4.2.0-dev', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|2|||_top|||', 0, '', '', 'root');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(20, 2, 'Automne : goûter à la simplicité', 'Accueil', 'automne, cms, ecm, gestionnaire de contenu, toulouse, ws-interactive', 'Automne est un gestionnaire de contenu pour les entreprises open-source. Entièrement modulable il s''adapte à vos besoins.', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'home');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(21, 3, 'Présentation', 'Présentation', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(23, 5, 'Actualités', 'Actualités', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', 'news');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(24, 6, 'Médiathèque', 'Médiathèque', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '|||||||', 0, '', '', 'media');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(25, 7, 'Bas de page', 'Bas de page', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', 'footer');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(54, 38, 'Aide aux utilisateurs', 'Aide utilisateurs', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(42, 26, 'Rangées de contenu', 'Rangées', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(40, 24, 'Fonctionnalités', 'Fonctionnalités', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(43, 27, 'Modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(44, 28, 'Gestion des utilisateurs', 'Gestion des utilisateurs', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(45, 29, 'Automne', 'Automne', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(47, 31, 'Exemples de modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(41, 25, 'Modèles de Pages', 'Modèles', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(51, 35, 'Gestion des droits', 'Gestion des droits', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(52, 36, 'Formulaire', 'Formulaire', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|9|||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(50, 34, 'Fonctions avancées', 'Fonctions avancées', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(27, 9, 'Contact', 'Contact', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'contact');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(26, 8, 'Plan du site', 'Plan du site', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'sitemap');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(53, 37, 'Circuit de publication', 'Circuit de publication', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(49, 33, 'Points forts', 'Points forts', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(46, 30, 'Pré-requis', 'Pré-requis', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `pageTemplates`
--

DROP TABLE IF EXISTS `pageTemplates`;
CREATE TABLE `pageTemplates` (
  `id_pt` int(11) unsigned NOT NULL auto_increment,
  `label_pt` varchar(100) NOT NULL default '',
  `groupsStack_pt` varchar(255) NOT NULL default '',
  `modulesStack_pt` varchar(255) NOT NULL default '1',
  `definitionFile_pt` varchar(100) NOT NULL default '',
  `creator_pt` int(11) unsigned NOT NULL default '0',
  `private_pt` tinyint(4) NOT NULL default '0',
  `image_pt` varchar(255) NOT NULL default '',
  `inUse_pt` tinyint(4) unsigned NOT NULL default '0',
  `printingCSOrder_pt` varchar(255) NOT NULL default '',
  `description_pt` text NOT NULL,
  `websitesdenied_pt` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_pt`),
  KEY `definitionFile_pt` (`definitionFile_pt`),
  FULLTEXT KEY `label_pt` (`label_pt`,`description_pt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pageTemplates`
--

INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(1, '[Vide] Redirection', 'fr', '', 'splash.xml', 0, 0, 'nopicto.gif', 0, '', 'Modèle vide. Usuellement employé pour les pages de redirections.', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(2, 'Exemple', 'fr', 'standard', 'example.xml', 0, 0, 'nopicto.gif', 0, '', 'Modèle d''exemple. Comporte les différents tags Automne disponibles pour la création d''un modèle de page.', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(56, '[Demo] Accueil', 'fr', 'standard', 'pt56_Accueil.xml', 0, 0, 'pt56_accueil.png', 1, 'first;second', 'Modèle de la page d''accueil de la démonstration Automne.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(57, '[Demo] Accueil', 'fr', 'standard', 'pt56_Accueil.xml', 0, 1, 'pt56_accueil.png', 0, 'first;second', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(58, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 0, 'pt58_page.png', 1, 'first', 'Modèle des pages intérieures de la démonstration Automne.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(59, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(60, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(61, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(62, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(63, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(64, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(65, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(66, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(67, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(68, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(69, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(70, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(71, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(72, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(73, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(74, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(75, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(76, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(77, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(78, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(79, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(95, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(81, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(82, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(83, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(84, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(85, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(86, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(87, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(88, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(89, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(90, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(91, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(92, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(93, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(94, '[Demo] Page', 'fr', 'standard', 'pt58_Interieur.xml', 0, 1, 'pt58_page.png', 0, 'first', 'Modèles des pages intérieures du site français.', '1');

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id_pr` int(11) unsigned NOT NULL auto_increment,
  `templateGroupsDeniedStack_pr` varchar(255) NOT NULL default '',
  `rowGroupsDeniedStack_pr` varchar(255) NOT NULL default '',
  `pageClearancesStack_pr` text NOT NULL,
  `moduleClearancesStack_pr` text NOT NULL,
  `validationClearancesStack_pr` text NOT NULL,
  `administrationClearance_pr` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_pr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profiles`
--

INSERT INTO `profiles` (`id_pr`, `templateGroupsDeniedStack_pr`, `rowGroupsDeniedStack_pr`, `pageClearancesStack_pr`, `moduleClearancesStack_pr`, `validationClearancesStack_pr`, `administrationClearance_pr`) VALUES(1, '', '', '1,2', 'standard,2;cms_aliases,2;pnews,2;cms_forms,2', 'standard', 319);
INSERT INTO `profiles` (`id_pr`, `templateGroupsDeniedStack_pr`, `rowGroupsDeniedStack_pr`, `pageClearancesStack_pr`, `moduleClearancesStack_pr`, `validationClearancesStack_pr`, `administrationClearance_pr`) VALUES(3, 'fr;en', '', '1,1', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `profilesUsers`
--

DROP TABLE IF EXISTS `profilesUsers`;
CREATE TABLE `profilesUsers` (
  `id_pru` int(11) unsigned NOT NULL auto_increment,
  `login_pru` varchar(50) NOT NULL default '',
  `password_pru` varchar(45) NOT NULL default '',
  `firstName_pru` varchar(50) NOT NULL default '',
  `lastName_pru` varchar(50) NOT NULL default '',
  `contactData_pru` int(11) unsigned NOT NULL default '0',
  `profile_pru` int(11) unsigned NOT NULL default '0',
  `language_pru` varchar(16) NOT NULL default 'fr',
  `active_pru` tinyint(4) NOT NULL default '0',
  `deleted_pru` tinyint(4) unsigned NOT NULL default '0',
  `alerts_pru` text NOT NULL,
  `favorites_pru` text NOT NULL,
  PRIMARY KEY  (`id_pru`),
  FULLTEXT KEY `login_pru` (`login_pru`,`firstName_pru`,`lastName_pru`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profilesUsers`
--

INSERT INTO `profilesUsers` (`id_pru`, `login_pru`, `password_pru`, `firstName_pru`, `lastName_pru`, `contactData_pru`, `profile_pru`, `language_pru`, `active_pru`, `deleted_pru`, `alerts_pru`, `favorites_pru`) VALUES(1, 'root', '{sha}38f5e2ad12977a6100562dd369aba61aee589454', '', 'Super administrateur', 1, 1, 'fr', 1, 0, 'standard,7;pnews,1;pmedia,1', '');
INSERT INTO `profilesUsers` (`id_pru`, `login_pru`, `password_pru`, `firstName_pru`, `lastName_pru`, `contactData_pru`, `profile_pru`, `language_pru`, `active_pru`, `deleted_pru`, `alerts_pru`, `favorites_pru`) VALUES(3, 'anonymous', '{sha}0a92fab3230134cca6eadd9898325b9b2ae67998', '', 'Utilisateur anonyme', 3, 3, 'fr', 1, 0, 'standard,7', '');

-- --------------------------------------------------------

--
-- Structure de la table `profilesUsersGroups`
--

DROP TABLE IF EXISTS `profilesUsersGroups`;
CREATE TABLE `profilesUsersGroups` (
  `id_prg` int(11) unsigned NOT NULL auto_increment,
  `description_prg` mediumtext NOT NULL,
  `label_prg` varchar(50) NOT NULL default '',
  `profile_prg` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_prg`),
  FULLTEXT KEY `description_prg` (`description_prg`,`label_prg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profilesUsersGroups`
--


-- --------------------------------------------------------

--
-- Structure de la table `profilesUsers_validators`
--

DROP TABLE IF EXISTS `profilesUsers_validators`;
CREATE TABLE `profilesUsers_validators` (
  `id_puv` int(11) NOT NULL auto_increment,
  `userId_puv` int(11) unsigned NOT NULL default '0',
  `module_puv` varchar(100) default NULL,
  PRIMARY KEY  (`id_puv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profilesUsers_validators`
--


-- --------------------------------------------------------

--
-- Structure de la table `profileUsersByGroup`
--

DROP TABLE IF EXISTS `profileUsersByGroup`;
CREATE TABLE `profileUsersByGroup` (
  `id_gu` int(11) NOT NULL auto_increment,
  `groupId_gu` int(11) NOT NULL default '0',
  `userId_gu` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_gu`),
  KEY `groupId_gu` (`groupId_gu`),
  KEY `userId_gu` (`userId_gu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profileUsersByGroup`
--


-- --------------------------------------------------------

--
-- Structure de la table `regenerator`
--

DROP TABLE IF EXISTS `regenerator`;
CREATE TABLE `regenerator` (
  `id_reg` int(11) unsigned NOT NULL auto_increment,
  `module_reg` varchar(255) NOT NULL default '0',
  `parameters_reg` text NOT NULL,
  PRIMARY KEY  (`id_reg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `regenerator`
--


-- --------------------------------------------------------

--
-- Structure de la table `resources`
--

DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id_res` int(11) unsigned NOT NULL auto_increment,
  `status_res` int(11) unsigned NOT NULL default '0',
  `editorsStack_res` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_res`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `resources`
--

INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(1, 1, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(40, 40, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(41, 41, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(42, 42, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(43, 43, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(44, 44, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(45, 45, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(46, 46, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(47, 47, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(48, 48, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(49, 49, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(50, 50, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(51, 51, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(52, 52, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(53, 53, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(54, 54, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(55, 55, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(56, 56, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(57, 57, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(58, 58, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(59, 59, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(60, 60, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(61, 61, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(62, 62, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(63, 63, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(64, 64, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(65, 65, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(66, 66, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(67, 67, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(68, 68, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(69, 69, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(70, 70, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(71, 71, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(72, 72, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(73, 73, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(74, 74, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(75, 75, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(76, 76, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(77, 77, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(78, 78, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(79, 79, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(80, 80, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(81, 81, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(82, 82, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(83, 83, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(84, 84, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(85, 85, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(86, 86, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(87, 87, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(88, 88, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(89, 89, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(90, 90, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(91, 91, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(92, 92, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(93, 93, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(94, 94, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(95, 95, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(96, 96, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(97, 97, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(98, 98, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(99, 99, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(100, 100, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(101, 101, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(102, 102, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(103, 103, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(104, 104, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(105, 105, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(106, 106, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(107, 107, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(108, 108, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(109, 109, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(110, 110, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(111, 111, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(112, 112, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(113, 113, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(114, 114, '1,2');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(115, 115, '1,2');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(116, 116, '1,2');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(117, 117, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(118, 118, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(119, 119, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(120, 120, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(121, 121, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(122, 122, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(123, 123, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(124, 124, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(125, 125, '');
INSERT INTO `resources` (`id_res`, `status_res`, `editorsStack_res`) VALUES(126, 126, '');

-- --------------------------------------------------------

--
-- Structure de la table `resourceStatuses`
--

DROP TABLE IF EXISTS `resourceStatuses`;
CREATE TABLE `resourceStatuses` (
  `id_rs` int(11) unsigned NOT NULL auto_increment,
  `location_rs` tinyint(4) unsigned NOT NULL default '1',
  `proposedFor_rs` tinyint(4) unsigned NOT NULL default '0',
  `editions_rs` tinyint(4) unsigned NOT NULL default '0',
  `validationsRefused_rs` tinyint(4) unsigned NOT NULL default '0',
  `publication_rs` tinyint(4) unsigned NOT NULL default '0',
  `publicationDateStart_rs` date NOT NULL default '0000-00-00',
  `publicationDateEnd_rs` date NOT NULL default '0000-00-00',
  `publicationDateStartEdited_rs` date NOT NULL default '0000-00-00',
  `publicationDateEndEdited_rs` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id_rs`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `resourceStatuses`
--

INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(1, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-10-31', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(40, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-10-31', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(41, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(42, 3, 0, 0, 0, 1, '2008-11-03', '2009-03-01', '2008-11-03', '2009-03-01');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(43, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(44, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(45, 1, 0, 0, 0, 1, '2008-11-03', '2008-11-02', '2008-11-03', '2008-11-02');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(46, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(47, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(48, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(49, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2011-07-13', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(50, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-07', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(51, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-07', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(52, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(53, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(54, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(55, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(56, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(57, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(58, 3, 0, 1, 0, 0, '2008-11-14', '0000-00-00', '2008-11-14', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(59, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2008-11-14', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(60, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(61, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(62, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(63, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(64, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-11-21', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(65, 3, 0, 3, 0, 0, '2008-11-29', '0000-00-00', '2008-11-29', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(66, 3, 0, 3, 0, 0, '2008-11-29', '2008-11-30', '2008-11-29', '2008-11-30');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(67, 3, 0, 1, 0, 0, '2008-11-29', '0000-00-00', '2008-11-29', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(68, 3, 0, 2, 0, 0, '2008-11-29', '2008-12-01', '2008-11-29', '2008-12-01');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(69, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2008-12-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(70, 3, 0, 1, 0, 0, '2008-12-23', '0000-00-00', '2008-12-23', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(71, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(72, 3, 0, 2, 0, 0, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(73, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(74, 3, 0, 3, 3, 0, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(75, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(76, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(77, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(78, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(79, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(80, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(81, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(82, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(83, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(84, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(85, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(86, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(87, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(88, 3, 0, 0, 0, 1, '2011-02-16', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(89, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(90, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(91, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(92, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(93, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(94, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(95, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(96, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(97, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(98, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(99, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(100, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(101, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(102, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(103, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(104, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(105, 3, 0, 2, 0, 1, '2011-02-16', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(106, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(107, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(108, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(109, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(110, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(111, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(112, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(113, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(114, 3, 0, 2, 0, 0, '2008-11-05', '0000-00-00', '2008-11-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(115, 3, 0, 2, 0, 0, '2008-11-05', '0000-00-00', '2008-11-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(116, 3, 0, 2, 0, 0, '2009-06-23', '0000-00-00', '2009-06-23', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(117, 1, 0, 0, 0, 2, '2010-07-19', '0000-00-00', '2010-07-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(118, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2010-02-15', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(119, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-02-18', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(120, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-02-18', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(121, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-06-06', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(122, 1, 0, 0, 0, 2, '2011-07-13', '0000-00-00', '2011-06-06', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(123, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-06-06', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(124, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-06-06', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(125, 1, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-07-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(126, 3, 0, 0, 0, 1, '2011-07-13', '0000-00-00', '2011-07-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `resourceValidations`
--

DROP TABLE IF EXISTS `resourceValidations`;
CREATE TABLE `resourceValidations` (
  `id_rv` int(11) unsigned NOT NULL auto_increment,
  `module_rv` varchar(100) NOT NULL default '',
  `editions_rv` int(11) unsigned NOT NULL default '0',
  `resourceID_rv` int(11) unsigned NOT NULL default '0',
  `serializedObject_rv` mediumtext NOT NULL,
  `creationDate_rv` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id_rv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `resourceValidations`
--


-- --------------------------------------------------------

--
-- Structure de la table `scriptsStatuses`
--

DROP TABLE IF EXISTS `scriptsStatuses`;
CREATE TABLE `scriptsStatuses` (
  `scriptName_ss` varchar(255) NOT NULL default '',
  `launchDate_ss` datetime default NULL,
  `pidFileName_ss` varchar(255) NOT NULL default '',
  `module_ss` varchar(255) NOT NULL default '',
  `parameters_ss` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `scriptsStatuses`
--


-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id_ses` int(11) unsigned NOT NULL auto_increment,
  `phpid_ses` varchar(75) NOT NULL default '',
  `lastTouch_ses` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_ses` int(11) unsigned NOT NULL default '0',
  `remote_addr_ses` varchar(64) NOT NULL,
  `cookie_expire_ses` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_ses`),
  KEY `lastTouch_ses` (`lastTouch_ses`),
  KEY `phpid_ses` (`phpid_ses`),
  KEY `user_ses` (`user_ses`),
  KEY `cookie_expire_ses` (`cookie_expire_ses`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sessions`
--

-- --------------------------------------------------------

--
-- Structure de la table `toolbars`
--

DROP TABLE IF EXISTS `toolbars`;
CREATE TABLE `toolbars` (
  `id_tool` int(11) unsigned NOT NULL auto_increment,
  `code_tool` varchar(20) NOT NULL default '',
  `label_tool` varchar(255) NOT NULL default '',
  `elements_tool` text NOT NULL,
  PRIMARY KEY  (`id_tool`),
  KEY `code_tool` (`code_tool`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `toolbars`
--

INSERT INTO `toolbars` (`id_tool`, `code_tool`, `label_tool`, `elements_tool`) VALUES(1, 'Default', 'Default', 'Source|Separator1|ShowBlocks|Separator2|Preview|Templates|Separator3|Cut|Copy|Paste|PasteText|PasteWord|Separator4|Print|Separator5|Undo|Redo|Separator6|Find|Replace|Separator7|SelectAll|RemoveFormat|Separator8|Bold|Italic|Underline|StrikeThrough|Separator9|Subscript|Superscript|Separator10|OrderedList|UnorderedList|Separator11|Outdent|Indent|Separator12|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|Separator13|Link|Unlink|Anchor|Separator14|Table|Rule|SpecialChar|Separator15|Style|FontFormat|FontSize|Separator16|TextColor|BGColor|Separator17|automneLinks|polymod|Image');
INSERT INTO `toolbars` (`id_tool`, `code_tool`, `label_tool`, `elements_tool`) VALUES(2, 'Basic', 'Basic', 'Source|Cut|Copy|Paste|PasteText|PasteWord|Separator4|Undo|Redo|Separator6|Bold|Italic|Underline|StrikeThrough|Separator9|Subscript|Superscript|Separator10|OrderedList|UnorderedList|Separator11|Outdent|Indent|Separator12|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|Separator13|Table|Rule|SpecialChar|Separator1');
INSERT INTO `toolbars` (`id_tool`, `code_tool`, `label_tool`, `elements_tool`) VALUES(3, 'BasicLink', 'BasicLink', 'Source|Separator1|Cut|Copy|Paste|PasteText|PasteWord|Separator4|Undo|Redo|Separator6|Bold|Italic|Underline|StrikeThrough|Separator9|Subscript|Superscript|Separator10|OrderedList|UnorderedList|Separator11|Outdent|Indent|Separator12|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|Separator13|Link|Unlink|Anchor|Separator14|Table|Rule|SpecialChar|Separator16|automneLinks|polymod');

-- --------------------------------------------------------

--
-- Structure de la table `websites`
--

DROP TABLE IF EXISTS `websites`;
CREATE TABLE `websites` (
  `id_web` int(11) unsigned NOT NULL auto_increment,
  `codename_web` varchar(255) NOT NULL,
  `label_web` varchar(255) NOT NULL default '',
  `url_web` varchar(255) NOT NULL default '',
  `altdomains_web` text NOT NULL,
  `altredir_web` int(1) NOT NULL,
  `root_web` int(11) unsigned NOT NULL default '0',
  `keywords_web` mediumtext NOT NULL,
  `description_web` mediumtext NOT NULL,
  `category_web` varchar(255) NOT NULL default '',
  `author_web` varchar(255) NOT NULL default '',
  `replyto_web` varchar(255) NOT NULL default '',
  `copyright_web` varchar(255) NOT NULL default '',
  `language_web` varchar(255) NOT NULL default '',
  `robots_web` varchar(255) NOT NULL default '',
  `favicon_web` varchar(255) NOT NULL default '',
  `metas_web` text NOT NULL,
  `order_web` int(11) unsigned NOT NULL default '0',
  `403_web` int(11) unsigned NOT NULL,
  `404_web` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id_web`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `websites`
--

INSERT INTO `websites` (`id_web`, `codename_web`, `label_web`, `url_web`, `altdomains_web`, `altredir_web`, `root_web`, `keywords_web`, `description_web`, `category_web`, `author_web`, `replyto_web`, `copyright_web`, `language_web`, `robots_web`, `favicon_web`, `metas_web`, `order_web`, `403_web`, `404_web`) VALUES(1, 'root', 'Site principal', '127.0.0.1', '', 0, 1, '', '', '', '', '', '', 'fr', '', '/favicon.ico', '', 2, 0, 0);
INSERT INTO `websites` (`id_web`, `codename_web`, `label_web`, `url_web`, `altdomains_web`, `altredir_web`, `root_web`, `keywords_web`, `description_web`, `category_web`, `author_web`, `replyto_web`, `copyright_web`, `language_web`, `robots_web`, `favicon_web`, `metas_web`, `order_web`, `403_web`, `404_web`) VALUES(2, 'demo', 'Démo du CMS Automne', '127.0.0.1', '', 0, 2, '', '', '', '', '', '', 'fr', '', '/favicon.ico', '<link rel="alternate" type="application/rss+xml" title="Actualités du site démo d''Automne" href="rss/rss.php?id=1" />', 1, 0, 0);
