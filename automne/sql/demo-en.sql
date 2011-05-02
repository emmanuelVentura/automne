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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(1, 9, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 'form', 'a:1:{s:6:"formID";s:1:"2";}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(5, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"36";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(4, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"35";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(6, 3, 'first', '401937687b65ea5c249faa74f4e23c9a', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"40";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(7, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"25";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"26";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(9, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"27";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(10, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"28";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(11, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"29";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(15, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"37";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(12, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"38";}}}');
INSERT INTO `blocksRawDatas_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(14, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"39";}}}');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(1, 9, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 'form', 'a:1:{s:6:"formID";s:1:"2";}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(6, 3, 'first', '401937687b65ea5c249faa74f4e23c9a', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"40";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(4, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"35";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(5, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"36";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(7, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"25";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"26";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(9, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"27";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(10, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"28";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(11, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"29";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(14, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"39";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(12, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"38";}}}');
INSERT INTO `blocksRawDatas_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(15, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'medias', 'a:1:{s:6:"search";a:1:{s:11:"mediaresult";a:1:{s:4:"item";s:2:"37";}}}');

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

INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(562, 33, 'first', 'adbbb020aeadb2df9957a83e19e55211', 'texte', '<h2>Here are some of the new features in Automne 4:</h2>\n<ul>\n    <li>New admin interface, <strong>more ergonomic, more intuitive, more reactive,</strong></li>\n    <li>Your site is no longer cut from the admin, it''s all about front-end.</li>\n    <li>No technical background needed to write and modify your website content,</li>\n    <li><strong>Contextual help</strong> is everywhere, you''ll learn very fast,</li>\n    <li>Much <strong>better performances</strong>, new cache management/li&gt;</li>\n    <li>Based on latest web technologies like <strong>PHP5, AJAX,</strong></li>\n    <li>UTF-8 native, Automne 4 is ready for internationalization and can hangle multiple languages websites,</li>\n    <li>Full text search for your content,</li>\n    <li>...</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(465, 33, 'first', '12ea6baf8092e5e6c7abb476cf71ce08', 'texte', '<p style="text-align: left;"><span id="polymod-1-35" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''35'', '''', true); \n</span></p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(563, 9, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 'texte', '<p>You can send us a message via this contact form.&#160;To modify the form properties (felds, action, email), go and change the form in the forms module administration.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(559, 3, 'first', '409d0a2f5060ddb2747151da5e264f99', 'texte', '<h2>Want full access ?</h2>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(258, 3, 'first', '8be44600466b3bd947f5b2c5cb45bf01', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(560, 3, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 'texte', '<h3>If you want a complete access to all features ywe encourage you to <a target="_blank" href="http://en.automne.ws/download/">download</a> Automne 4.</h3>\n<p>For more informations, you can read the following pages :</p>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="29"/></start></selection><noselection>Automne 4</noselection><display><htmltemplate><a  href="{{href}}">Automne 4</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="33"/></start></selection><noselection>What''s new ?</noselection><display><htmltemplate><a  href="{{href}}">What''s new ?</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>Feature</noselection><display><htmltemplate><a  href="{{href}}">Feature</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="30"/></start></selection><noselection>Requirements</noselection><display><htmltemplate><a  href="{{href}}">Requirements</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(579, 27, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 'texte', '<p>You have the possibility to add modules to Automne to add features corresponding to the specific needs of your website.</p>\n<p>By default, Automne comes with commonly used modules : <strong>Mediacenter, news, forms, aliases. </strong></p>\n<h3>You''re free to add as many modules as you like, either using the <a href="http://www.automne.ws/api/">Automne API</a> or the module generator</h3>\n<h2>Polymod, a module generator</h2>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(582, 27, 'first', '4564d92b193505d71f29b5ae69dddde0', 'texte', '<h2>Specific modules</h2>\n<h3>If the Polymod isn''t powerful enough, we encourage you to use the <a href="http://www.automne.ws/api/">Automne API</a> to developp more evolved modules .</h3>\n<p>With pure PHP modules, you can then produce professionnal and more complex webapps that will be integrated into Automne interface ,</p>\n<p>You can link Automne to you database and developp whatever feature you want : mailing, e-commerce, web services, etc.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(580, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'texte', '<p>One of Automne characteristics is the embedded module generator named <strong>Polymod</strong> for Polymorphic module.</p>\n<p>It makes it possible to manage elements containing different types of data : texts, files, images, dates, users, etc.</p>\n<p>You can create and link objects composed of these elements without any technical skill through the modules management application.</p>\n<p>For instance, the news and mediacenter modules of the demo were entirely designed with the modules manager and the <abbr title="Polymorphic Module">Polymod</abbr> . You can modify and adapt them to your needs very simply.</p>\n<p>The <abbr title="Polymorphic Module">Polymod</abbr> gives you the possibilit to add RSS feeds, front-end search and WYSWYG plugins <strong>créer simplement</strong> des flux RSS, des moteurs de recherche côté client…</p>\n<p>So you can develop your own applications like a products management module, directory, etc.</p>\n<p>We''re currently working on a import/export module so that you can share your modules with the rest of the community.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(192, 5, 'first', '68a1b1d8a072af0eb92f6392eb309ad1', 'texte', '');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(585, 31, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 'texte', '<p>Here are some Automne modules examples included in the demo. You can also add your own modules very simply.</p>\n<h2>News module</h2>\n<ul>\n    <li>Publish news with a publication deadline à une date de publication</li>\n    <li>Create and sort news by catgory</li>\n    <li>frton-end search by keywords, category, publiction date, etc.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>See the demo example of the news module</noselection><display><htmltemplate><a href="{{href}}" >See the demo example of the news module</a></htmltemplate></display></atm-linx></p>\n<h2>Mediacenter module</h2>\n<ul>\n    <li>Store and display all types of media : video, image, audio... at the same place.</li>\n    <li>Included features :<br />\n    <ul>\n        <li>Sort your media by category (image, video audio) and create as much sub-categories as you need</li>\n        <li>Front-end search by keywords, date, category, etc.</li>\n        <li>Insert media directly from the WYSIWYG editor</li>\n    </ul>\n    </li>\n    <li>One your media is stored in the database, it''s reusable in every other module for instance for the pages or the news module.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>See a demo example of the mediacenter module</noselection><display><htmltemplate><a href="{{href}}" >See a demo example of the mediacenter module</a></htmltemplate></display></atm-linx></p>\n<h2>Forms module</h2>\n<ul>\n    <li>Build you forms with the integrated wizard to identify users, send mail, build quizz, write in the database and more ...</li>\n    <li>The forms wizard helps you quickly bluid complex forms and add supplementary fields and actions in a few mouse clicks.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="9"/></start></selection><noselection>See a simple contact form</noselection><display><htmltemplate><a href="{{href}}" >See a simple contact form</a></htmltemplate></display></atm-linx> made with the forms module</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(558, 3, 'first', '401937687b65ea5c249faa74f4e23c9a', 'texte', '<h3>Want you cannot do:</h3>\n<ul>\n    <li>access to modules management.</li>\n    <li>valid pages modifications,</li>\n    <li>add new users</li>\n    <li>...</li>\n</ul>\n<p>This operations require an <strong>admin</strong> account.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(556, 3, 'first', '6ff77816cb91134d254f1b0723fa0022', 'texte', '<h3>What you can do:</h3>\n<p>As an author, you can access to Automne''s admin and modify the website content.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(561, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'texte', '<h3>Welcome to the demo website of Automne 4</h3>\n<p>You will find here all necessary information to discover&#160; the basic features as well as essential notions to start using Automne.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(569, 30, 'first', 'dda8207197eda19c8be4b1f63d76b382', 'texte', '<h2>Recommanded configuration</h2>\n<ul>\n    <li>PHP installed as an Apache module (CGI offers less good performances).</li>\n    <li><a href="http://fr.php.net/manual/fr/features.commandline.php">CLI PHP module installed</a> and available on the server disponible sur le serveur as well as "<a href="http://fr.php.net/system">system</a>" and "<a href="http://fr2.php.net/manual/fr/function.exec.php">exec</a>" PHP functions in order to benefit from background scripts.</li>\n    <li><a href="http://fr2.php.net/manual/fr/ref.info.php#ini.magic-quotes-gpc"> "magic_quotes_gpc"</a> PHP option deactivated.</li>\n    <li>Apache needs to have the right to create and modify all Automne files  on the server to benefit from installation and automatic updates, if you don''t want to perform these operations manually.</li>\n    <li>PHP code cache (opcode cache) like <a href="http://pecl.php.net/package/APC">APC</a> or  <a href="http://www.zend.com/products/zend_optimizer">Zend optimizer </a> will give you better performances.</li>\n    <li>Some functionnalities like website''s pages regeneration may need a lot of memory (especially if you have compiled PHP&#160;with a great number of extensions). It''s usually better to let PHP handle the allocated memory for the scripts by&#160; activating the&#160; <a href="http://fr2.php.net/manual/fr/ini.core.php#ini.memory-limit">"memory_limit"</a> function.</li>\n</ul>\n<h3>For better performances, we do recommend a Linux or Unix production server.</h3>\n<h3>As Automne makes use of .htaccess files, we do recommand to run an Apache server.</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(592, 38, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 'texte', '<p>Automne 4 users can sometimes ask themselves questions about how it works.<em>Whatif I click on this button?</em>" "<em>How do I perform this operation ?</em>".</p>\n<h3>To answer all current questions, we added a contextual help system available in all administration windows</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(594, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'texte', '<p>Automne brings you the whole essential help for you to write your own content rows.</p>\n<p>It gives you all the syntax details about XML tags as well as variables and functions that you can use. THe insertion of modules blocks in your rows is documented in the same way.</p>\n<p>Create your own content rows is thus far more simple !</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(593, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'texte', '<p>The contextual help gives you additional informations when you mouse over the elements.</p>\n<h3>Automne won''t have any more secrets from you !</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(595, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'texte', '<p>At last, if you''re wondering how to modify such contents or element managed by Automne 4 and that you have no idea where Automne 4 stores it, <strong>a powerful search engine</strong> you allows to seek on all contents and  elements, whatever their type may be : pages content, modules elements, users, page templates, content rows, etc.</p>\n<h3>The results returned by the Automne search engine will adapt even to the level of right of the user to propose him only the elements on which he has access.</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(589, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'texte', '<p>There are 3 types of basic right :</p>\n<ul>\n    <li><strong>Write</strong> : equivalent to an admin right</li>\n    <li><strong>Read</strong>  : equivalent to a view right</li>\n    <li><strong>No rights</strong> : User can not see the content.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(590, 35, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 'texte', '<p>Automne 4 has an intelligent system of management of the rights of the users. It allows a fine management of the rights, as well in the various pages as in the contents of the various modules. This system makes it possible to apply the whole of these rights to any types of elements managed by Automne 4.</p>\n<p>These rights can be allotted on the pages but also on the modules, the  page templates, contents rows and on all actions of administration... The whole of these rights are applicable to the users and the user groups having access to the site.</p>\n<h3>There exists a specific right entitled <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>right of validation</noselection><display><htmltemplate><a  href="{{href}}">right of validation</a></htmltemplate></display></atm-linx>.</h3>\n<p>This right makes it possible to give to the user the possibility of validating the work of the other users and to publish the contents on the website.</p>\n<h3>Some examples of rights users</h3>\n<ul>\n    <li><em>User A can have rights of administrations on certain pages and a right limited on the page templates. That will give him the right to create only pages using the templates that it can use.</em></li>\n    <li><em>The user B can have the rights of administration on the French category of the  news and only the right of visibility on the English category of the news. It will be able to thus modify only the french news of the site.</em></li>\n    <li><em>The user C can have the rights of administrations on the mediacenter module but any right on the news modules and the pages of the site. He will be able to thus add, modify or delete medias that other users will use in the news or in the website pages.</em></li>\n</ul>\n<p>Of course you can precisely define all the rights that you wish and create user groups with very specific rights that will be added with the users belonging to various groups.</p>\n<h3>Rights management by user groups</h3>\n<p>Let''s say you have six distinct user groups</p>\n<ul>\n    <li>Administration of <em>french</em> news</li>\n    <li>Administration of <em>english</em> news</li>\n    <li>Administration of <em>french</em> pages and rights on the <em>french</em> page templates</li>\n    <li>Administration of <em>english</em> pages and rights on the <em>english</em> page templates</li>\n    <li>Validation rights on the  <em>news</em> module</li>\n    <li>Validation rights on the <em>Pages</em> module</li>\n</ul>\n<p><strong>By associating one or more of these groups to users</strong>, you will give them simply the corresponding rights thus allowing you to create and manage <em>simply</em> combinations more or less complex of rights of administration.</p>\n<p>Moreover, in the case of Extranet or Intranet sites, you can also do this kind of combination on the right of visibility of the various contents of the site, thus allowing to secure some parts of your site.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(587, 28, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Users management</h2>\n<p>By default for every Automne instance, the root or "super user" has all priviledges.</p>\n<p>This ''super admin'' user can then create groups and users. He can affect the precise rights that users need on the differents modules. Automne comes with default groups as&#160; administrators, moderators et authors but you''re free to modify them and create your own.&#160;You must just keep an anonymous user for client-side rights management.</p>\n<p>Contributors will then only have the necessary rights to add content in the allowed modules and categories</p>\n<p>It''s also possible for the contributors thanks to the <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>publication workflow</noselection><display><htmltemplate><a href="{{href}}" >publication workflow</a></htmltemplate></display></atm-linx> to submit content to the moderators, so that he can be verified before the publication on the website.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(588, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'texte', '<ul>\n    <li>Only users with sufficient rights can create new users and groups ,</li>\n    <li>The users will automatically inherit their rights from the different groups they belongs to.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(591, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'texte', '<h3>An autmatic email alert system informs validators of the modifications made on the site.</h3>\n<p>The validator can thus check the modifications made on the content and can either accept, modify or refuse them.</p>\n<p>SImple icons indicate the current status of the elements: published, unpublished, pending for validation, etc..</p>\n<p>Online publication is only effective once approved by a validator. This particular right can be set in the <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users management.</noselection><display><htmltemplate><a  href="{{href}}">users management.</a></htmltemplate></display></atm-linx></p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(567, 30, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h3>Here are the requirements for Automne 4 installation and use :</h3>\n<h2>Mandatory technical requirements</h2>\n<h3>Linux, Windows, Max OSX, Solaris, BSD server or any Unix system capable of running all these programs :</h3>\n<ul>\n    <li><a href="http://httpd.apache.org/">Apache</a> web server.</li>\n    <li><a href="http://www.php.net/">PHP 5.2.x</a>. For security purpose, we recommand running the last PHP 5.x version.\n    <ul>\n        <li>GD extension available for PHP (for <a href="http://www.php.net/manual/fr/ref.image.php">image processing</a>) with  JPEG, GIF and PNG librairies.</li>\n        <li>PHP "<a href="http://fr2.php.net/manual/fr/features.safe-mode.php">safe_mode</a>" option deactivated.</li>\n        <li>From 32 to 64Mo allocated memory for PHP scripts  (depending on the amount of installed PHP extensions : the more installed extensions, the more memory is required..</li>\n    </ul>\n    </li>\n    <li><a href="http://www.mysql.com/">MySQL 5.x .</a></li>\n</ul>\n<h3>Automne supports the following browsers : Internet Explorer 7 and above, Firefox 3 and above, Safari 3 and above, Google Chrome, Opera 9 and above.</h3>\n<p>The browser compatibility of websites powered by Automne only depends on the pages templates you''ll devellop.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(572, 25, 'first', 'f87771b9821f911d00f29d8d494a055b', 'texte', '<h2>Templates principle</h2>\n<p>The fundamental principle is the separation between <strong>content and presentation</strong>, that is to say that design and information are totally independant from each other.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(573, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'texte', '<p>During the page template creation, we determine editable regions and navigation links through XML tags insertion</p>\n<p>Templates will then be used for the different website pages.</p>\n<p>Editable regions allow not only to determine content positionning in pages but also the intervention perimeter for the contributors.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(557, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'texte', '<ul>\n    <li>modify, create and copy pages,</li>\n    <li>update your user account,</li>\n    <li>handle modules data,</li>\n    <li>…</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(555, 3, 'first', 'c44b397b36f4839fd7bba0c769b5e56e', 'texte', '<p>&#160;</p>\n<h2>Your rights on this website</h2>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(553, 2, 'first', 'a0922acb28a233e527aa46607bfec987c', 'texte', '<p>If you''re looking for a powerful and extensible content management system, Automne is the answer.</p>\n<p>Automne allows autonomy and leading control.</p>\n<p>That your contents are static or dynamic with a management in databases, Automne facilitates communication without technical requirements.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(565, 29, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Content management system</h2>\n<p>Automne is <a href="http://fr.wikipedia.org/wiki/Open_source"><strong>open-source</strong>,</a> software, it''s fast and intuitive. Automne is a professionnal <strong>content management system (CMS)</strong> that is appropriate for the needs of companies, public organizations or associations.</p>\n<h3>Automne 4 offers a <strong>secure and collaborative environnement </strong> to handle both static web pages and dynamic applications.</h3>\n<h2>Powerful and evolutionary</h2>\n<p>Automne is robust, it already powers many corporate websites and can handle thousands of pages. Automne is written in PHP5 an object oriented language and use some parts of the Zend Framework. It also follows the W3C recommandations and can produce valid and accessible XHTML.</p>\n<p>Thanks to the native module generator <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>modules dynamiques</noselection><display><htmltemplate><a href="{{href}}" >modules dynamiques</a></htmltemplate></display></atm-linx>, you can enrich the <atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>functionalities of your website</noselection><display><htmltemplate><a href="{{href}}" >functionalities of your website</a></htmltemplate></display></atm-linx> according to <strong>your</strong> needs.</p>\n<h2>Flexible and modular</h2>\n<p>Automne 4 will help you create and manage many websites at once, even your intranet or extranet. Define specific roles and let users contribute the way you want them to.</p>\n<p>Developers will appreciate how quick you can build quality websites and web applications with Automne.</p>\n<h2>Perennial and secure</h2>\n<p>It all started in 1999. Amongst the first CMS, Automne followed the evolution of Internet. From the start it was used by web developers to power large websites, it offers professionnal functionnalities</p>\n<p>Automne is a very active project, we provide constant updates that you can apply safely on you websites.</p>\n<p>Automne is developed by certified PHP profesionnals, who have many years of programming experience. All developpment are verified and have a high quality and security level.</p>\n<p>Automne is free software, you can <a href="http://sourceforge.net/projects/automne/" target="_blank">dowload it on Sourceforge</a>. Automne embeds independant open-source software, it''s a guarantee that you can use it as long as you want, free from any editing software company</p>\n<p>You also have access to the <a href="http://www.automne.ws/forum/" target="_blank">community forum</a> where you can ask for some help.</p>\n<h3><strong>We also provide services like <a href="http://en.automne.ws/web/en/439-support-and-training-programs.php">training workshops and professionnal support</a>.</strong></h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(570, 24, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Automne main principles</h2>\n<p>Automne is a powerful content management system, that can run very large websites with thousands of pages, to <strong>simply modify their design</strong> with the  <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>pages templates</noselection><display><htmltemplate><a  href="{{href}}">pages templates</a></htmltemplate></display></atm-linx> and to intuitively modify your content via <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>content rows.</noselection><display><htmltemplate><a  href="{{href}}">content rows.</a></htmltemplate></display></atm-linx></p>\n<p>Simple or more complex website functionnalities can be automatically  generated by the <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection><strong>Polymod</strong></noselection><display><htmltemplate><a  href="{{href}}"><strong>Polymod</strong></a></htmltemplate></display></atm-linx> module or directly developped with PHP thanks to <a title="Automne classes Manual" href="http://www.automne.ws/api/">Automne API</a>.</p>\n<p>Automne 4 comes with an evolved <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users management</noselection><display><htmltemplate><a  href="{{href}}">users management</a></htmltemplate></display></atm-linx> and <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users groups</noselection><display><htmltemplate><a  href="{{href}}">users groups</a></htmltemplate></display></atm-linx>  system that allows a <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>very precise rights management.</noselection><display><htmltemplate><a  href="{{href}}">very precise rights management.</a></htmltemplate></display></atm-linx> It offers you an homogeneous customized work environment and gives you access only to the needed functionnalities.</p>\n<h3>Automne 4 main features are described in these pages :</h3>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>Pages templates</noselection><display><htmltemplate><a  href="{{href}}">Pages templates</a></htmltemplate></display></atm-linx> (the website visual appearance),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>Content rows</noselection><display><htmltemplate><a  href="{{href}}">Content rows</a></htmltemplate></display></atm-linx> (reusable content blocks),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Dynamic modules</noselection><display><htmltemplate><a  href="{{href}}">Dynamic modules</a></htmltemplate></display></atm-linx> (custom tools and dedicated applications ),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>Users and groups management </noselection><display><htmltemplate><a  href="{{href}}">Users and groups management </a></htmltemplate></display></atm-linx> (roles definition),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>Access rights</noselection><display><htmltemplate><a  href="{{href}}">Access rights</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>Content publication workflow</noselection><display><htmltemplate><a  href="{{href}}">Content publication workflow</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="38"/></start></selection><noselection>User''s Help</noselection><display><htmltemplate><a  href="{{href}}">User''s Help</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="34"/></start></selection><noselection>Advanced features</noselection><display><htmltemplate><a  href="{{href}}">Advanced features</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(575, 25, 'first', '508f7be6da1c7022ae3df00f30190e49', 'texte', '<p>This principle give you the assurance of an homogeneous presentation all over your websites.</p>\n<p>Only people with sufficient <a href="http://demov4.automne.ws/web/demo/35-gestion-des-droits.php">rights</a> will then be able to add or modify the pages content through the <a href="http://demov4.automne.ws/web/demo/26-rangees.php">content rows</a> that can be inserted in defined modifiable regions.</p>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(597, 34, 'first', '592c2e33c7971c02ec553000d0eaea43', 'texte', '<h2>Multi-sites management</h2>\n<p>A single Automne instance can manage as many different sites as you wish. Each website can have its own domain name, its own language and its own elements (templates, rows) allowing to manage the various pages which compose them.</p>\n<h2>Secure the public access to the contents (Intranet / Extranet)</h2>\n<p>This advanced system of management of the rights allows to develop <strong>secure areas</strong> on your sites. With a simple login form your website turns into an <strong>Extranet site</strong> applying <strong>rights and restrictions</strong> on specified pages and contents. The restrictions are invisible to those which do not have the rights to see them thus avoiding any frustration of your users.</p>\n<h3>For instance, if a user has not access to a "special" page, he won''t see the links to this page in the navigation.</h3>\n<h2>LDAP connection</h2>\n<p>The principal interest of a LDAP directory is the <strong>standardization of the authentification.</strong> This directory gathers all information about the user (First name, Last name, office, phone, etc.).  Automne 4 allows to automatically recover information of the directory in order to define the users and their corresponding rights. « The employee working in human resources department, will have automatically access to the human resources page, whereas others employess will not have access to it».</p>\n<h3>At the begining of the session, the login and password are sent to the directory which then transmits information of the user.</h3>\n<h2><abbr title="Single Sign On">SSO</abbr> authentification</h2>\n<p><strong>Single authentification</strong> is a way to access many diffferents web applications or secure websites through a unique login. Automne 4 supports this technology and users can directly log into Automne 4 at their session start on their computer.</p>\n<h3>No more login for Automne 4.</h3>');
INSERT INTO `blocksTexts_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(578, 26, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Content rows</h2>\n<p>Content rows are block templates that store or display data. <strong>It can contain and mix different block types :</strong> text, image, flash, video… For instance, Automne is shipped with some preformatted content rows for titles, text, text and a right-aligned image.</p>\n<p>Every row is styled with CSS to ensure that you keep an homogeneous presentation all over your website.</p>\n<h3>You are free to create your own content rows - static or module related - to display the desired information</h3>\n<p><span id="polymod-1-24" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''24'', '''', true); \n</span><span id="polymod-1-34" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''34'', '''', true); \n</span></p>\n<h3>Content row arrangement in a page is relatively easy to do. You can insert a row wherever you want in the page and reorganize existing rows with a simple drag-and-drop.</h3>\n<p>Insertion points are clearly indicated and you can modify your content with intuitive helping tools like the WYSIWYG editor to structure and style text, resize and crop images, create internal and external links, etc.</p>\n<p>You can also decide to embed module''s data wherever you want in a text row. If a module element suddenly disappears (deletion, unpublished, ...), it will also disappear everywhere it was mentionned.</p>');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(585, 31, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 'texte', '<p>Here are some Automne modules examples included in the demo. You can also add your own modules very simply.</p>\n<h2>News module</h2>\n<ul>\n    <li>Publish news with a publication deadline à une date de publication</li>\n    <li>Create and sort news by catgory</li>\n    <li>frton-end search by keywords, category, publiction date, etc.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="5"/></start></selection><noselection>See the demo example of the news module</noselection><display><htmltemplate><a href="{{href}}" >See the demo example of the news module</a></htmltemplate></display></atm-linx></p>\n<h2>Mediacenter module</h2>\n<ul>\n    <li>Store and display all types of media : video, image, audio... at the same place.</li>\n    <li>Included features :<br />\n    <ul>\n        <li>Sort your media by category (image, video audio) and create as much sub-categories as you need</li>\n        <li>Front-end search by keywords, date, category, etc.</li>\n        <li>Insert media directly from the WYSIWYG editor</li>\n    </ul>\n    </li>\n    <li>One your media is stored in the database, it''s reusable in every other module for instance for the pages or the news module.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="6"/></start></selection><noselection>See a demo example of the mediacenter module</noselection><display><htmltemplate><a href="{{href}}" >See a demo example of the mediacenter module</a></htmltemplate></display></atm-linx></p>\n<h2>Forms module</h2>\n<ul>\n    <li>Build you forms with the integrated wizard to identify users, send mail, build quizz, write in the database and more ...</li>\n    <li>The forms wizard helps you quickly bluid complex forms and add supplementary fields and actions in a few mouse clicks.</li>\n</ul>\n<p><atm-linx type="direct"><selection><start><nodespec type="node" value="9"/></start></selection><noselection>See a simple contact form</noselection><display><htmltemplate><a href="{{href}}" >See a simple contact form</a></htmltemplate></display></atm-linx> made with the forms module</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(556, 3, 'first', '6ff77816cb91134d254f1b0723fa0022', 'texte', '<h3>What you can do:</h3>\n<p>As an author, you can access to Automne''s admin and modify the website content.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(561, 3, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 'texte', '<h3>Welcome to the demo website of Automne 4</h3>\n<p>You will find here all necessary information to discover&#160; the basic features as well as essential notions to start using Automne.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(557, 3, 'first', '39a32afb98d21c8252ea3714cff0f62e', 'texte', '<ul>\n    <li>modify, create and copy pages,</li>\n    <li>update your user account,</li>\n    <li>handle modules data,</li>\n    <li>…</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(555, 3, 'first', 'c44b397b36f4839fd7bba0c769b5e56e', 'texte', '<p>&#160;</p>\n<h2>Your rights on this website</h2>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(558, 3, 'first', '401937687b65ea5c249faa74f4e23c9a', 'texte', '<h3>Want you cannot do:</h3>\n<ul>\n    <li>access to modules management.</li>\n    <li>valid pages modifications,</li>\n    <li>add new users</li>\n    <li>...</li>\n</ul>\n<p>This operations require an <strong>admin</strong> account.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(559, 3, 'first', '409d0a2f5060ddb2747151da5e264f99', 'texte', '<h2>Want full access ?</h2>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(258, 3, 'first', '8be44600466b3bd947f5b2c5cb45bf01', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(560, 3, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 'texte', '<h3>If you want a complete access to all features ywe encourage you to <a target="_blank" href="http://en.automne.ws/download/">download</a> Automne 4.</h3>\n<p>For more informations, you can read the following pages :</p>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="29"/></start></selection><noselection>Automne 4</noselection><display><htmltemplate><a  href="{{href}}">Automne 4</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="33"/></start></selection><noselection>What''s new ?</noselection><display><htmltemplate><a  href="{{href}}">What''s new ?</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>Feature</noselection><display><htmltemplate><a  href="{{href}}">Feature</a></htmltemplate></display></atm-linx>.</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="30"/></start></selection><noselection>Requirements</noselection><display><htmltemplate><a  href="{{href}}">Requirements</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(567, 30, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h3>Here are the requirements for Automne 4 installation and use :</h3>\n<h2>Mandatory technical requirements</h2>\n<h3>Linux, Windows, Max OSX, Solaris, BSD server or any Unix system capable of running all these programs :</h3>\n<ul>\n    <li><a href="http://httpd.apache.org/">Apache</a> web server.</li>\n    <li><a href="http://www.php.net/">PHP 5.2.x</a>. For security purpose, we recommand running the last PHP 5.x version.\n    <ul>\n        <li>GD extension available for PHP (for <a href="http://www.php.net/manual/fr/ref.image.php">image processing</a>) with  JPEG, GIF and PNG librairies.</li>\n        <li>PHP "<a href="http://fr2.php.net/manual/fr/features.safe-mode.php">safe_mode</a>" option deactivated.</li>\n        <li>From 32 to 64Mo allocated memory for PHP scripts  (depending on the amount of installed PHP extensions : the more installed extensions, the more memory is required..</li>\n    </ul>\n    </li>\n    <li><a href="http://www.mysql.com/">MySQL 5.x .</a></li>\n</ul>\n<h3>Automne supports the following browsers : Internet Explorer 7 and above, Firefox 3 and above, Safari 3 and above, Google Chrome, Opera 9 and above.</h3>\n<p>The browser compatibility of websites powered by Automne only depends on the pages templates you''ll devellop.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(192, 5, 'first', '68a1b1d8a072af0eb92f6392eb309ad1', 'texte', '');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(589, 35, 'first', '9f851c9d1868ad933f280c33e5a419f3', 'texte', '<p>There are 3 types of basic right :</p>\n<ul>\n    <li><strong>Write</strong> : equivalent to an admin right</li>\n    <li><strong>Read</strong>  : equivalent to a view right</li>\n    <li><strong>No rights</strong> : User can not see the content.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(590, 35, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 'texte', '<p>Automne 4 has an intelligent system of management of the rights of the users. It allows a fine management of the rights, as well in the various pages as in the contents of the various modules. This system makes it possible to apply the whole of these rights to any types of elements managed by Automne 4.</p>\n<p>These rights can be allotted on the pages but also on the modules, the  page templates, contents rows and on all actions of administration... The whole of these rights are applicable to the users and the user groups having access to the site.</p>\n<h3>There exists a specific right entitled <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>right of validation</noselection><display><htmltemplate><a  href="{{href}}">right of validation</a></htmltemplate></display></atm-linx>.</h3>\n<p>This right makes it possible to give to the user the possibility of validating the work of the other users and to publish the contents on the website.</p>\n<h3>Some examples of rights users</h3>\n<ul>\n    <li><em>User A can have rights of administrations on certain pages and a right limited on the page templates. That will give him the right to create only pages using the templates that it can use.</em></li>\n    <li><em>The user B can have the rights of administration on the French category of the  news and only the right of visibility on the English category of the news. It will be able to thus modify only the french news of the site.</em></li>\n    <li><em>The user C can have the rights of administrations on the mediacenter module but any right on the news modules and the pages of the site. He will be able to thus add, modify or delete medias that other users will use in the news or in the website pages.</em></li>\n</ul>\n<p>Of course you can precisely define all the rights that you wish and create user groups with very specific rights that will be added with the users belonging to various groups.</p>\n<h3>Rights management by user groups</h3>\n<p>Let''s say you have six distinct user groups</p>\n<ul>\n    <li>Administration of <em>french</em> news</li>\n    <li>Administration of <em>english</em> news</li>\n    <li>Administration of <em>french</em> pages and rights on the <em>french</em> page templates</li>\n    <li>Administration of <em>english</em> pages and rights on the <em>english</em> page templates</li>\n    <li>Validation rights on the  <em>news</em> module</li>\n    <li>Validation rights on the <em>Pages</em> module</li>\n</ul>\n<p><strong>By associating one or more of these groups to users</strong>, you will give them simply the corresponding rights thus allowing you to create and manage <em>simply</em> combinations more or less complex of rights of administration.</p>\n<p>Moreover, in the case of Extranet or Intranet sites, you can also do this kind of combination on the right of visibility of the various contents of the site, thus allowing to secure some parts of your site.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(579, 27, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 'texte', '<p>You have the possibility to add modules to Automne to add features corresponding to the specific needs of your website.</p>\n<p>By default, Automne comes with commonly used modules : <strong>Mediacenter, news, forms, aliases. </strong></p>\n<h3>You''re free to add as many modules as you like, either using the <a href="http://www.automne.ws/api/">Automne API</a> or the module generator</h3>\n<h2>Polymod, a module generator</h2>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(582, 27, 'first', '4564d92b193505d71f29b5ae69dddde0', 'texte', '<h2>Specific modules</h2>\n<h3>If the Polymod isn''t powerful enough, we encourage you to use the <a href="http://www.automne.ws/api/">Automne API</a> to developp more evolved modules .</h3>\n<p>With pure PHP modules, you can then produce professionnal and more complex webapps that will be integrated into Automne interface ,</p>\n<p>You can link Automne to you database and developp whatever feature you want : mailing, e-commerce, web services, etc.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(580, 27, 'first', '56025a9b887be03112111d215ca6f31d', 'texte', '<p>One of Automne characteristics is the embedded module generator named <strong>Polymod</strong> for Polymorphic module.</p>\n<p>It makes it possible to manage elements containing different types of data : texts, files, images, dates, users, etc.</p>\n<p>You can create and link objects composed of these elements without any technical skill through the modules management application.</p>\n<p>For instance, the news and mediacenter modules of the demo were entirely designed with the modules manager and the <abbr title="Polymorphic Module">Polymod</abbr> . You can modify and adapt them to your needs very simply.</p>\n<p>The <abbr title="Polymorphic Module">Polymod</abbr> gives you the possibilit to add RSS feeds, front-end search and WYSWYG plugins <strong>créer simplement</strong> des flux RSS, des moteurs de recherche côté client…</p>\n<p>So you can develop your own applications like a products management module, directory, etc.</p>\n<p>We''re currently working on a import/export module so that you can share your modules with the rest of the community.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(563, 9, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 'texte', '<p>You can send us a message via this contact form.&#160;To modify the form properties (felds, action, email), go and change the form in the forms module administration.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(569, 30, 'first', 'dda8207197eda19c8be4b1f63d76b382', 'texte', '<h2>Recommanded configuration</h2>\n<ul>\n    <li>PHP installed as an Apache module (CGI offers less good performances).</li>\n    <li><a href="http://fr.php.net/manual/fr/features.commandline.php">CLI PHP module installed</a> and available on the server disponible sur le serveur as well as "<a href="http://fr.php.net/system">system</a>" and "<a href="http://fr2.php.net/manual/fr/function.exec.php">exec</a>" PHP functions in order to benefit from background scripts.</li>\n    <li><a href="http://fr2.php.net/manual/fr/ref.info.php#ini.magic-quotes-gpc"> "magic_quotes_gpc"</a> PHP option deactivated.</li>\n    <li>Apache needs to have the right to create and modify all Automne files  on the server to benefit from installation and automatic updates, if you don''t want to perform these operations manually.</li>\n    <li>PHP code cache (opcode cache) like <a href="http://pecl.php.net/package/APC">APC</a> or  <a href="http://www.zend.com/products/zend_optimizer">Zend optimizer </a> will give you better performances.</li>\n    <li>Some functionnalities like website''s pages regeneration may need a lot of memory (especially if you have compiled PHP&#160;with a great number of extensions). It''s usually better to let PHP handle the allocated memory for the scripts by&#160; activating the&#160; <a href="http://fr2.php.net/manual/fr/ini.core.php#ini.memory-limit">"memory_limit"</a> function.</li>\n</ul>\n<h3>For better performances, we do recommend a Linux or Unix production server.</h3>\n<h3>As Automne makes use of .htaccess files, we do recommand to run an Apache server.</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(465, 33, 'first', '12ea6baf8092e5e6c7abb476cf71ce08', 'texte', '<p style="text-align: left;"><span id="polymod-1-35" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''35'', '''', true); \n</span></p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(562, 33, 'first', 'adbbb020aeadb2df9957a83e19e55211', 'texte', '<h2>Here are some of the new features in Automne 4:</h2>\n<ul>\n    <li>New admin interface, <strong>more ergonomic, more intuitive, more reactive,</strong></li>\n    <li>Your site is no longer cut from the admin, it''s all about front-end.</li>\n    <li>No technical background needed to write and modify your website content,</li>\n    <li><strong>Contextual help</strong> is everywhere, you''ll learn very fast,</li>\n    <li>Much <strong>better performances</strong>, new cache management/li&gt;</li>\n    <li>Based on latest web technologies like <strong>PHP5, AJAX,</strong></li>\n    <li>UTF-8 native, Automne 4 is ready for internationalization and can hangle multiple languages websites,</li>\n    <li>Full text search for your content,</li>\n    <li>...</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(593, 38, 'first', '4f342492c25a2b686c2b531760008d98', 'texte', '<p>The contextual help gives you additional informations when you mouse over the elements.</p>\n<h3>Automne won''t have any more secrets from you !</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(595, 38, 'first', '65990b9ff00394714dd60ffd708b2d77', 'texte', '<p>At last, if you''re wondering how to modify such contents or element managed by Automne 4 and that you have no idea where Automne 4 stores it, <strong>a powerful search engine</strong> you allows to seek on all contents and  elements, whatever their type may be : pages content, modules elements, users, page templates, content rows, etc.</p>\n<h3>The results returned by the Automne search engine will adapt even to the level of right of the user to propose him only the elements on which he has access.</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(592, 38, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 'texte', '<p>Automne 4 users can sometimes ask themselves questions about how it works.<em>Whatif I click on this button?</em>" "<em>How do I perform this operation ?</em>".</p>\n<h3>To answer all current questions, we added a contextual help system available in all administration windows</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(594, 38, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 'texte', '<p>Automne brings you the whole essential help for you to write your own content rows.</p>\n<p>It gives you all the syntax details about XML tags as well as variables and functions that you can use. THe insertion of modules blocks in your rows is documented in the same way.</p>\n<p>Create your own content rows is thus far more simple !</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(591, 37, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 'texte', '<h3>An autmatic email alert system informs validators of the modifications made on the site.</h3>\n<p>The validator can thus check the modifications made on the content and can either accept, modify or refuse them.</p>\n<p>SImple icons indicate the current status of the elements: published, unpublished, pending for validation, etc..</p>\n<p>Online publication is only effective once approved by a validator. This particular right can be set in the <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users management.</noselection><display><htmltemplate><a  href="{{href}}">users management.</a></htmltemplate></display></atm-linx></p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(572, 25, 'first', 'f87771b9821f911d00f29d8d494a055b', 'texte', '<h2>Templates principle</h2>\n<p>The fundamental principle is the separation between <strong>content and presentation</strong>, that is to say that design and information are totally independant from each other.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(573, 25, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 'texte', '<p>During the page template creation, we determine editable regions and navigation links through XML tags insertion</p>\n<p>Templates will then be used for the different website pages.</p>\n<p>Editable regions allow not only to determine content positionning in pages but also the intervention perimeter for the contributors.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(553, 2, 'first', 'a0922acb28a233e527aa46607bfec987c', 'texte', '<p>If you''re looking for a powerful and extensible content management system, Automne is the answer.</p>\n<p>Automne allows autonomy and leading control.</p>\n<p>That your contents are static or dynamic with a management in databases, Automne facilitates communication without technical requirements.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(587, 28, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Users management</h2>\n<p>By default for every Automne instance, the root or "super user" has all priviledges.</p>\n<p>This ''super admin'' user can then create groups and users. He can affect the precise rights that users need on the differents modules. Automne comes with default groups as&#160; administrators, moderators et authors but you''re free to modify them and create your own.&#160;You must just keep an anonymous user for client-side rights management.</p>\n<p>Contributors will then only have the necessary rights to add content in the allowed modules and categories</p>\n<p>It''s also possible for the contributors thanks to the <atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>publication workflow</noselection><display><htmltemplate><a href="{{href}}" >publication workflow</a></htmltemplate></display></atm-linx> to submit content to the moderators, so that he can be verified before the publication on the website.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(588, 28, 'first', '9ba530cba11a3763a081a2e34072711f', 'texte', '<ul>\n    <li>Only users with sufficient rights can create new users and groups ,</li>\n    <li>The users will automatically inherit their rights from the different groups they belongs to.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(565, 29, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Content management system</h2>\n<p>Automne is <a href="http://fr.wikipedia.org/wiki/Open_source"><strong>open-source</strong>,</a> software, it''s fast and intuitive. Automne is a professionnal <strong>content management system (CMS)</strong> that is appropriate for the needs of companies, public organizations or associations.</p>\n<h3>Automne 4 offers a <strong>secure and collaborative environnement </strong> to handle both static web pages and dynamic applications.</h3>\n<h2>Powerful and evolutionary</h2>\n<p>Automne is robust, it already powers many corporate websites and can handle thousands of pages. Automne is written in PHP5 an object oriented language and use some parts of the Zend Framework. It also follows the W3C recommandations and can produce valid and accessible XHTML.</p>\n<p>Thanks to the native module generator <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>modules dynamiques</noselection><display><htmltemplate><a href="{{href}}" >modules dynamiques</a></htmltemplate></display></atm-linx>, you can enrich the <atm-linx type="direct"><selection><start><nodespec type="node" value="24"/></start></selection><noselection>functionalities of your website</noselection><display><htmltemplate><a href="{{href}}" >functionalities of your website</a></htmltemplate></display></atm-linx> according to <strong>your</strong> needs.</p>\n<h2>Flexible and modular</h2>\n<p>Automne 4 will help you create and manage many websites at once, even your intranet or extranet. Define specific roles and let users contribute the way you want them to.</p>\n<p>Developers will appreciate how quick you can build quality websites and web applications with Automne.</p>\n<h2>Perennial and secure</h2>\n<p>It all started in 1999. Amongst the first CMS, Automne followed the evolution of Internet. From the start it was used by web developers to power large websites, it offers professionnal functionnalities</p>\n<p>Automne is a very active project, we provide constant updates that you can apply safely on you websites.</p>\n<p>Automne is developed by certified PHP profesionnals, who have many years of programming experience. All developpment are verified and have a high quality and security level.</p>\n<p>Automne is free software, you can <a href="http://sourceforge.net/projects/automne/" target="_blank">dowload it on Sourceforge</a>. Automne embeds independant open-source software, it''s a guarantee that you can use it as long as you want, free from any editing software company</p>\n<p>You also have access to the <a href="http://www.automne.ws/forum/" target="_blank">community forum</a> where you can ask for some help.</p>\n<h3><strong>We also provide services like <a href="http://en.automne.ws/web/en/439-support-and-training-programs.php">training workshops and professionnal support</a>.</strong></h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(570, 24, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Automne main principles</h2>\n<p>Automne is a powerful content management system, that can run very large websites with thousands of pages, to <strong>simply modify their design</strong> with the  <atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>pages templates</noselection><display><htmltemplate><a  href="{{href}}">pages templates</a></htmltemplate></display></atm-linx> and to intuitively modify your content via <atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>content rows.</noselection><display><htmltemplate><a  href="{{href}}">content rows.</a></htmltemplate></display></atm-linx></p>\n<p>Simple or more complex website functionnalities can be automatically  generated by the <atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection><strong>Polymod</strong></noselection><display><htmltemplate><a  href="{{href}}"><strong>Polymod</strong></a></htmltemplate></display></atm-linx> module or directly developped with PHP thanks to <a title="Automne classes Manual" href="http://www.automne.ws/api/">Automne API</a>.</p>\n<p>Automne 4 comes with an evolved <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users management</noselection><display><htmltemplate><a  href="{{href}}">users management</a></htmltemplate></display></atm-linx> and <atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>users groups</noselection><display><htmltemplate><a  href="{{href}}">users groups</a></htmltemplate></display></atm-linx>  system that allows a <atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>very precise rights management.</noselection><display><htmltemplate><a  href="{{href}}">very precise rights management.</a></htmltemplate></display></atm-linx> It offers you an homogeneous customized work environment and gives you access only to the needed functionnalities.</p>\n<h3>Automne 4 main features are described in these pages :</h3>\n<ul>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="25"/></start></selection><noselection>Pages templates</noselection><display><htmltemplate><a  href="{{href}}">Pages templates</a></htmltemplate></display></atm-linx> (the website visual appearance),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="26"/></start></selection><noselection>Content rows</noselection><display><htmltemplate><a  href="{{href}}">Content rows</a></htmltemplate></display></atm-linx> (reusable content blocks),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="27"/></start></selection><noselection>Dynamic modules</noselection><display><htmltemplate><a  href="{{href}}">Dynamic modules</a></htmltemplate></display></atm-linx> (custom tools and dedicated applications ),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="28"/></start></selection><noselection>Users and groups management </noselection><display><htmltemplate><a  href="{{href}}">Users and groups management </a></htmltemplate></display></atm-linx> (roles definition),</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="35"/></start></selection><noselection>Access rights</noselection><display><htmltemplate><a  href="{{href}}">Access rights</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="37"/></start></selection><noselection>Content publication workflow</noselection><display><htmltemplate><a  href="{{href}}">Content publication workflow</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="38"/></start></selection><noselection>User''s Help</noselection><display><htmltemplate><a  href="{{href}}">User''s Help</a></htmltemplate></display></atm-linx>,</li>\n    <li><atm-linx type="direct"><selection><start><nodespec type="node" value="34"/></start></selection><noselection>Advanced features</noselection><display><htmltemplate><a  href="{{href}}">Advanced features</a></htmltemplate></display></atm-linx>.</li>\n</ul>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(575, 25, 'first', '508f7be6da1c7022ae3df00f30190e49', 'texte', '<p>This principle give you the assurance of an homogeneous presentation all over your websites.</p>\n<p>Only people with sufficient <a href="http://demov4.automne.ws/web/demo/35-gestion-des-droits.php">rights</a> will then be able to add or modify the pages content through the <a href="http://demov4.automne.ws/web/demo/26-rangees.php">content rows</a> that can be inserted in defined modifiable regions.</p>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(597, 34, 'first', '592c2e33c7971c02ec553000d0eaea43', 'texte', '<h2>Multi-sites management</h2>\n<p>A single Automne instance can manage as many different sites as you wish. Each website can have its own domain name, its own language and its own elements (templates, rows) allowing to manage the various pages which compose them.</p>\n<h2>Secure the public access to the contents (Intranet / Extranet)</h2>\n<p>This advanced system of management of the rights allows to develop <strong>secure areas</strong> on your sites. With a simple login form your website turns into an <strong>Extranet site</strong> applying <strong>rights and restrictions</strong> on specified pages and contents. The restrictions are invisible to those which do not have the rights to see them thus avoiding any frustration of your users.</p>\n<h3>For instance, if a user has not access to a "special" page, he won''t see the links to this page in the navigation.</h3>\n<h2>LDAP connection</h2>\n<p>The principal interest of a LDAP directory is the <strong>standardization of the authentification.</strong> This directory gathers all information about the user (First name, Last name, office, phone, etc.).  Automne 4 allows to automatically recover information of the directory in order to define the users and their corresponding rights. « The employee working in human resources department, will have automatically access to the human resources page, whereas others employess will not have access to it».</p>\n<h3>At the begining of the session, the login and password are sent to the directory which then transmits information of the user.</h3>\n<h2><abbr title="Single Sign On">SSO</abbr> authentification</h2>\n<p><strong>Single authentification</strong> is a way to access many diffferents web applications or secure websites through a unique login. Automne 4 supports this technology and users can directly log into Automne 4 at their session start on their computer.</p>\n<h3>No more login for Automne 4.</h3>');
INSERT INTO `blocksTexts_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(578, 26, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 'texte', '<h2>Content rows</h2>\n<p>Content rows are block templates that store or display data. <strong>It can contain and mix different block types :</strong> text, image, flash, video… For instance, Automne is shipped with some preformatted content rows for titles, text, text and a right-aligned image.</p>\n<p>Every row is styled with CSS to ensure that you keep an homogeneous presentation all over your website.</p>\n<h3>You are free to create your own content rows - static or module related - to display the desired information</h3>\n<p><span id="polymod-1-24" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''24'', '''', true); \n</span><span id="polymod-1-34" class="polymod">\n require_once($_SERVER["DOCUMENT_ROOT"].''/automne/classes/polymodFrontEnd.php'');\necho CMS_poly_definition_functions::pluginCode(''1'', ''34'', '''', true); \n</span></p>\n<h3>Content row arrangement in a page is relatively easy to do. You can insert a row wherever you want in the page and reorganize existing rows with a simple drag-and-drop.</h3>\n<p>Insertion points are clearly indicated and you can modify your content with intuitive helping tools like the WYSIWYG editor to structure and style text, resize and crop images, create internal and external links, etc.</p>\n<p>You can also decide to embed module''s data wherever you want in a text row. If a module element suddenly disappears (deletion, unpublished, ...), it will also disappear everywhere it was mentionned.</p>');

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

INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(29, 2, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 'stitre', 'Keep it simple !');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 29, 'first', 'ef68332801171f3678986a9192ea85db', 'stitre', '');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(31, 35, 'first', '18f076b2de7e3b4310097f83ac547533', 'stitre', 'Rights management principles');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(33, 38, 'first', '229fdaa261c7fed31f048dc9f7d1c95d', 'stitre', 'Assistance with XML syntax (for the advanced users)');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(32, 38, 'first', 'e76f4966a4808ea827d71853fd371ee3', 'stitre', 'Contextual help');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(34, 38, 'first', '67834d6b4d508349b9b2892e4932e718', 'stitre', 'Internal search engine');
INSERT INTO `blocksVarchars_edited` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(28, 3, 'first', '71b5c89dda723156165f086098957ded', 'stitre', 'Welcome to Automne 4');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(29, 2, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 'stitre', 'Keep it simple !');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(16, 29, 'first', 'ef68332801171f3678986a9192ea85db', 'stitre', '');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(4, 3, 'first', 'a909549cfffa588cae12e01ad4152f1f8', 'titre', 'Présentation Titre h1');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(28, 3, 'first', '71b5c89dda723156165f086098957ded', 'stitre', 'Welcome to Automne 4');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(31, 35, 'first', '18f076b2de7e3b4310097f83ac547533', 'stitre', 'Rights management principles');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(33, 38, 'first', '229fdaa261c7fed31f048dc9f7d1c95d', 'stitre', 'Assistance with XML syntax (for the advanced users)');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(32, 38, 'first', 'e76f4966a4808ea827d71853fd371ee3', 'stitre', 'Contextual help');
INSERT INTO `blocksVarchars_public` (`id`, `page`, `clientSpaceID`, `rowID`, `blockID`, `value`) VALUES(34, 38, 'first', '67834d6b4d508349b9b2892e4932e718', 'stitre', 'Internal search engine');

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
  PRIMARY KEY  (`id_cd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contactDatas`
--

INSERT INTO `contactDatas` (`id_cd`, `service_cd`, `jobTitle_cd`, `addressField1_cd`, `addressField2_cd`, `addressField3_cd`, `zip_cd`, `city_cd`, `state_cd`, `country_cd`, `phone_cd`, `cellphone_cd`, `fax_cd`, `email_cd`) VALUES(1, '', '', '', '', '', '', '', '', '', '', '', '', 'root@localhost');
INSERT INTO `contactDatas` (`id_cd`, `service_cd`, `jobTitle_cd`, `addressField1_cd`, `addressField2_cd`, `addressField3_cd`, `zip_cd`, `city_cd`, `state_cd`, `country_cd`, `phone_cd`, `cellphone_cd`, `fax_cd`, `email_cd`) VALUES(3, '', '', '', '', '', '', '', '', '', '', '', '', 'nobody@localhost');

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

INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 2);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 3);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 8);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 9);
INSERT INTO `linx_real_public` (`start_lre`, `stop_lre`) VALUES(2, 24);
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
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(3, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(3, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 5);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(5, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 6);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(6, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 8);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(8, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 9);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(9, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(24, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 25);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(25, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 26);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(26, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 27);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(27, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 28);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(28, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 29);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(29, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 30);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(30, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(31, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(33, 33);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(34, 34);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(35, 35);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(36, 36);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 31);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(37, 37);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 2);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 3);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 7);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 24);
INSERT INTO `linx_watch_public` (`page_lwa`, `target_lwa`) VALUES(38, 31);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY  (`id_mca`),
  KEY `module` (`module_mca`),
  KEY `lineage` (`lineage_mca`),
  KEY `parent` (`parent_mca`),
  KEY `root` (`root_mca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `modulesCategories`
--

INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(1, 'a5ffafda-0baa-102e-80e2-001a6470da26', 'cms_forms', 0, 0, '1', 1, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(2, 'a5ffb0f2-0baa-102e-80e2-001a6470da26', 'pnews', 0, 0, '2', 2, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(17, 'a5ffb1b0-0baa-102e-80e2-001a6470da26', 'pnews', 2, 2, '2;17', 1, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(18, 'a5ffb278-0baa-102e-80e2-001a6470da26', 'pmedia', 0, 0, '18', 5, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(19, 'a5ffb32c-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;19', 3, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(20, 'a5ffb3ea-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;20', 1, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(21, 'a5ffb4a8-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;21', 2, '');
INSERT INTO `modulesCategories` (`id_mca`, `uuid_mca`, `module_mca`, `parent_mca`, `root_mca`, `lineage_mca`, `order_mca`, `icon_mca`) VALUES(22, 'a5ffb566-0baa-102e-80e2-001a6470da26', 'pmedia', 18, 18, '18;22', 4, '');

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

INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(681, 1, 18, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(677, 3, 1, 1);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(678, 3, 2, 1);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(680, 1, 2, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(671, 4, 18, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(670, 4, 2, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(679, 1, 1, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(673, 10, 18, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(672, 10, 2, 3);
INSERT INTO `modulesCategories_clearances` (`id_mcc`, `profile_mcc`, `category_mcc`, `clearance_mcc`) VALUES(669, 4, 1, 3);

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
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(179, 17, 'en', 'General', '', '');
INSERT INTO `modulesCategories_i18nm` (`id_mcl`, `category_mcl`, `language_mcl`, `label_mcl`, `description_mcl`, `file_mcl`) VALUES(180, 17, 'fr', 'Général', '', '');
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
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(9, 2, 'text', 99, 'Your message has been sent, we''ll answer you as soon as possible.');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(10, 2, 'text', 1, 'The following fields are not properly fullfilled');
INSERT INTO `mod_cms_forms_actions` (`id_act`, `form_act`, `value_act`, `type_act`, `text_act`) VALUES(11, 2, 'root@automne.ws', 3, 'Contact§§The following message was sent from the contact form on Automne demo website:§§');

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

INSERT INTO `mod_cms_forms_categories` (`id_fca`, `form_fca`, `category_fca`) VALUES(4, 2, 1);

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

INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(11, 2, '54b8a11ea29b491d40561eb321aed37f', 'Last Name * ', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 0, 'a:0:{}');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(12, 2, '5d62b28a2c474455ae3a937127cf7204', 'First name * ', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 1, 'a:0:{}');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(13, 2, '4f77750ba5f191904e9aaab3acab488d', 'Email * ', '', '', 'email', 'a:1:{s:0:"";s:0:"";}', 1, 1, 2, 'a:0:{}');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(14, 2, '4005693f0d616bab1865d71fea32d1f6', 'Topic * ', '', '', 'text', 'a:1:{s:0:"";s:0:"";}', 1, 1, 3, 'a:0:{}');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(15, 2, '778a8c9cce20558836139d64c7d403c0', 'Message * ', '', '', 'textarea', 'a:1:{s:0:"";s:0:"";}', 1, 1, 4, 'a:0:{}');
INSERT INTO `mod_cms_forms_fields` (`id_fld`, `form_fld`, `name_fld`, `label_fld`, `defaultValue_fld`, `dataValidation_fld`, `type_fld`, `options_fld`, `required_fld`, `active_fld`, `order_fld`, `params_fld`) VALUES(16, 2, '8e17e732a07c18b447c226014789627c', 'Send', 'Send', '', 'submit', 'a:1:{s:0:"";s:0:"";}', 0, 1, 5, 'a:0:{}');

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

INSERT INTO `mod_cms_forms_formulars` (`id_frm`, `name_frm`, `source_frm`, `language_frm`, `owner_frm`, `closed_frm`, `destinationType_frm`, `DestinationData_frm`, `responses_frm`) VALUES(2, 'Contact', '\n<form id="cms_forms_2">\n    <table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">\n        <tbody>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzExX3JlcQ">Last Name * </label></td>\n                <td><input type="text" name="54b8a11ea29b491d40561eb321aed37f" id="zY21zX2ZpZWxkXzExX3JlcQ" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzEyX3JlcQ">First name * </label></td>\n                <td><input type="text" name="5d62b28a2c474455ae3a937127cf7204" id="zY21zX2ZpZWxkXzEyX3JlcQ" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzEzX2VtYWlsX3JlcQ">Email * </label></td>\n                <td><input type="text" name="4f77750ba5f191904e9aaab3acab488d" id="zY21zX2ZpZWxkXzEzX2VtYWlsX3JlcQ" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzE0X3JlcQ">Topic * </label></td>\n                <td><input type="text" name="4005693f0d616bab1865d71fea32d1f6" id="zY21zX2ZpZWxkXzE0X3JlcQ" value="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;"><label for="zY21zX2ZpZWxkXzE1X3JlcQ">Message * </label></td>\n                <td><textarea name="778a8c9cce20558836139d64c7d403c0" id="zY21zX2ZpZWxkXzE1X3JlcQ" rows="6" cols="40"></textarea><img src="chrome://itsalltext/locale/gumdrop.png" title="It''s All Text!" style="cursor: pointer ! important; display: none ! important; position: absolute ! important; padding: 0pt ! important; margin: 0pt ! important; border: medium none ! important; width: 28px ! important; height: 14px ! important; opacity: 0.0152174 ! important; left: 415px ! important; top: 259px ! important;" alt="" /></td>\n            </tr>\n            <tr>\n                <td style="text-align: right;">&#160;</td>\n                <td><input type="submit" value="Send" name="8e17e732a07c18b447c226014789627c" class="button" id="zY21zX2ZpZWxkXzE2" /></td>\n            </tr>\n        </tbody>\n    </table>\n</form>', 'en', 4, 0, 0, '', 0);

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

INSERT INTO `mod_object_definition` (`id_mod`, `uuid_mod`, `label_id_mod`, `description_id_mod`, `resource_usage_mod`, `module_mod`, `admineditable_mod`, `composedLabel_mod`, `previewURL_mod`, `indexable_mod`, `indexURL_mod`, `compiledIndexURL_mod`, `resultsDefinition_mod`) VALUES(1, 'a5f0452c-0baa-102e-80e2-001a6470da26', 1, 2, 1, 'pnews', 0, '', '5||item={[''object1''][''id'']}', 0, '', '', '');
INSERT INTO `mod_object_definition` (`id_mod`, `uuid_mod`, `label_id_mod`, `description_id_mod`, `resource_usage_mod`, `module_mod`, `admineditable_mod`, `composedLabel_mod`, `previewURL_mod`, `indexable_mod`, `indexURL_mod`, `compiledIndexURL_mod`, `resultsDefinition_mod`) VALUES(2, 'a5f0468a-0baa-102e-80e2-001a6470da26', 70, 71, 1, 'pmedia', 0, '', '6||item={[''object2''][''id'']}', 0, '', '', '<div class="pmedias">\r\n	<atm-if what="{[''object2''][''fields''][9][''thumbnail'']} &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''flv'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''mp3''">\r\n		<p style="float:right;"><a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" target="_blank"><img src="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''thumbnail'']}" /></a></p>\r\n	</atm-if>\r\n	<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''flv''">\r\n		<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n			<script type="text/javascript">\r\n				swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml'', startimage:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''thumbnail'']}''}, {allowfullscreen:true, wmode:''transparent''}, {''style'':''float:right;''});\r\n			</script>\r\n		</atm-if>\r\n		<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n			<script type="text/javascript">\r\n				swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, {''style'':''float:right;''});\r\n			</script>\r\n		</atm-if>\r\n		<div id="media-{[''object2''][''id'']}" class="pmedias-video" style="width:320px;height:200px;float:right;">\r\n			<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n		</div>\r\n	</atm-if>\r\n	<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''mp3''">\r\n		<script type="text/javascript">\r\n			swfobject.embedSWF(''{constant:string:PATH_REALROOT_WR}/automne/playermp3/player_mp3.swf'', ''media-{[''object2''][''id'']}'', ''200'', ''20'', ''9.0.0'', ''{constant:string:PATH_REALROOT_WR}/automne/swfobject/expressInstall.swf'', {mp3:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''{constant:string:PATH_REALROOT_WR}/automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, {''style'':''float:right;''});\r\n		</script>\r\n		<div id="media-{[''object2''][''id'']}" class="pmedias-audio" style="width:200px;height:20px;float:right;">\r\n			<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n		</div>\r\n	</atm-if>\r\n	<p>{[''object2''][''fields''][9][''fieldname'']} : <strong><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="{[''object2''][''fields''][9][''fileExtension'']}" title="{[''object2''][''fields''][9][''fileExtension'']}" /></atm-if> {[''object2''][''fields''][9][''fileHTML'']} ({[''object2''][''fields''][9][''fileSize'']}Mo)</strong></p>\r\n	<p>{[''object2''][''fields''][8][''fieldname'']} : <strong>{[''object2''][''fields''][8][''label'']}</strong></p>\r\n	<div style="clear:both;"> </div>\r\n</div>');

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

INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(1, 'a5f7fa92-0baa-102e-80e2-001a6470da26', 1, 3, 0, 'CMS_object_string', 1, 0, 1, 0, 0, 1, 'a:3:{s:9:"maxLength";s:3:"255";s:7:"isEmail";b:0;s:8:"matchExp";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(2, 'a5f7fbbe-0baa-102e-80e2-001a6470da26', 1, 4, 5, 'CMS_object_text', 3, 0, 1, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:3:"550";s:13:"toolbarHeight";s:3:"200";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(3, 'a5f7fc90-0baa-102e-80e2-001a6470da26', 1, 6, 7, 'CMS_object_text', 4, 0, 0, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:3:"550";s:13:"toolbarHeight";s:3:"500";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(4, 'a5f7fd62-0baa-102e-80e2-001a6470da26', 1, 8, 0, 'CMS_object_image', 5, 0, 0, 0, 0, 1, 'a:5:{s:8:"maxWidth";s:3:"100";s:9:"maxHeight";s:0:"";s:15:"useDistinctZoom";b:0;s:8:"makeZoom";b:1;s:14:"maxWidthPreviz";s:2:"16";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(5, 'a5f7fe2a-0baa-102e-80e2-001a6470da26', 1, 9, 0, 'CMS_object_categories', 2, 0, 1, 0, 1, 1, 'a:6:{s:15:"multiCategories";b:0;s:12:"rootCategory";s:1:"2";s:12:"defaultValue";s:0:"";s:15:"associateUnused";b:0;s:11:"selectWidth";s:0:"";s:12:"selectHeight";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(6, 'a5f7fef2-0baa-102e-80e2-001a6470da26', 2, 80, 0, 'CMS_object_string', 1, 0, 1, 0, 0, 1, 'a:3:{s:9:"maxLength";s:3:"255";s:7:"isEmail";b:0;s:8:"matchExp";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(7, 'a5f7ffba-0baa-102e-80e2-001a6470da26', 2, 83, 0, 'CMS_object_text', 2, 0, 0, 0, 0, 1, 'a:4:{s:4:"html";b:1;s:7:"toolbar";s:9:"BasicLink";s:12:"toolbarWidth";s:4:"100%";s:13:"toolbarHeight";s:3:"200";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(8, 'a5f80082-0baa-102e-80e2-001a6470da26', 2, 84, 0, 'CMS_object_categories', 3, 0, 1, 0, 1, 1, 'a:6:{s:15:"multiCategories";b:0;s:12:"rootCategory";s:2:"18";s:12:"defaultValue";s:0:"";s:15:"associateUnused";b:0;s:11:"selectWidth";s:0:"";s:12:"selectHeight";s:0:"";}');
INSERT INTO `mod_object_field` (`id_mof`, `uuid_mof`, `object_id_mof`, `label_id_mof`, `desc_id_mof`, `type_mof`, `order_mof`, `system_mof`, `required_mof`, `indexable_mof`, `searchlist_mof`, `searchable_mof`, `params_mof`) VALUES(9, 'a5f80154-0baa-102e-80e2-001a6470da26', 2, 85, 86, 'CMS_object_file', 4, 0, 1, 0, 1, 1, 'a:8:{s:12:"useThumbnail";b:1;s:13:"thumbMaxWidth";s:3:"200";s:14:"thumbMaxHeight";s:0:"";s:9:"fileIcons";a:18:{s:3:"doc";s:7:"doc.gif";s:3:"gif";s:7:"gif.gif";s:4:"html";s:8:"html.gif";s:3:"htm";s:8:"html.gif";s:3:"jpg";s:7:"jpg.gif";s:4:"jpeg";s:7:"jpg.gif";s:3:"jpe";s:7:"jpg.gif";s:3:"mov";s:7:"mov.gif";s:3:"mp3";s:7:"mp3.gif";s:3:"pdf";s:7:"pdf.gif";s:3:"png";s:7:"png.gif";s:3:"ppt";s:7:"ppt.gif";s:3:"pps";s:7:"ppt.gif";s:3:"swf";s:7:"swf.gif";s:3:"sxw";s:7:"sxw.gif";s:3:"url";s:7:"url.gif";s:3:"xls";s:7:"xls.gif";s:3:"xml";s:7:"xml.gif";}s:8:"allowFtp";b:0;s:6:"ftpDir";s:13:"/automne/tmp/";s:11:"allowedType";s:0:"";s:14:"disallowedType";s:31:"exe,php,pif,vbs,bat,com,scr,reg";}');

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
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(5, 'fr', 'L''introduction doit donner en quelques lignes un aperçu globale de l''actualité.');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(5, 'en', 'The introduction has to sum up the whole article in a few lines');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(6, 'fr', 'Texte');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(6, 'en', 'Text');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(7, 'fr', 'Ce texte sera visible dans le détail d''une actualité');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(7, 'en', 'This text will be visible in the news detail');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(8, 'fr', 'Image');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(8, 'en', 'Image');
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
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(41, 'fr', 'Flux RSS du site de démonstration d''automne');
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
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(71, 'fr', 'Média à télécharger de type Vidéo (flv), Image (jpg, gif, png), Son (mp3) ou tout autre type de fichier (doc, pdf, etc.).');
INSERT INTO `mod_object_i18nm` (`id_i18nm`, `code_i18nm`, `value_i18nm`) VALUES(71, 'en', 'Downloadable Media of type Video (flv), image (jpg, gif, png), Audio (mp3) or any other file type (doc, pdf, etc.).');
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

INSERT INTO `mod_object_plugin_definition` (`id_mowd`, `uuid_mowd`, `object_id_mowd`, `label_id_mowd`, `description_id_mowd`, `query_mowd`, `definition_mowd`, `compiled_definition_mowd`) VALUES(1, 'a607613a-0baa-102e-80e2-001a6470da26', 2, 87, 88, 'a:1:{i:8;s:1:"0";}', '<atm-plugin language="en">\r\n    <atm-plugin-valid>\r\n        <atm-if what="{[''object2''][''fields''][9][''fileExtension'']} != ''flv'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''mp3'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''jpg'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''gif'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''png''">\r\n			<a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" target="_blank" title="Download file :  ''{[''object2''][''fields''][9][''fileLabel'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="" /></atm-if> {[''object2''][''label'']}</a>\r\n		</atm-if>\r\n    	<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''flv''">\r\n			<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<script type="text/javascript" src="js/modules/pmedia/swfobject.js"></script>\r\n				<script type="text/javascript">\r\n					swfobject.addLoadEvent(function(){\r\n						swfobject.embedSWF(''automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''automne/playerflv/config_playerflv.xml'', startimage:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''thumbnail'']}''}, {allowfullscreen:true, wmode:''transparent''}, false);\r\n					});\r\n				</script>\r\n			</atm-if>\r\n			<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<script type="text/javascript" src="js/modules/pmedia/swfobject.js"></script>\r\n				<script type="text/javascript">\r\n					swfobject.addLoadEvent(function(){\r\n						swfobject.embedSWF(''automne/playerflv/player_flv.swf'', ''media-{[''object2''][''id'']}'', ''320'', ''200'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {flv:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, false);\r\n					});\r\n				</script>\r\n			</atm-if>\r\n			<div id="media-{[''object2''][''id'']}" class="pmedias-video" style="width:320px;height:200px;">\r\n				<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n			</div>\r\n		</atm-if>\r\n		<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''mp3''">\r\n			<script type="text/javascript" src="js/modules/pmedia/swfobject.js"></script>\r\n			<script type="text/javascript">\r\n				swfobject.addLoadEvent(function(){\r\n					swfobject.embedSWF(''automne/playermp3/player_mp3.swf'', ''media-{[''object2''][''id'']}'', ''200'', ''20'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {mp3:''{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}'', configxml:''automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, false);\r\n				});\r\n			</script>\r\n			<div id="media-{[''object2''][''id'']}" class="pmedias-audio" style="width:200px;height:20px;">\r\n				<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>\r\n			</div>\r\n		</atm-if>\r\n		<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''jpg'' || {[''object2''][''fields''][9][''fileExtension'']} == ''gif'' || {[''object2''][''fields''][9][''fileExtension'']} == ''png''">\r\n			<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" onclick="javascript:CMS_openPopUpImage(''imagezoom.php?location=public&amp;module=pmedia&amp;file={[''object2''][''fields''][9][''filename'']}&amp;label={[''object2''][''label'']|js}'');return false;" target="_blank" title="Watch ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><img src="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''thumbnail'']}" alt="{[''object2''][''label'']}" title="{[''object2''][''label'']}" /></a>\r\n			</atm-if>\r\n			<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<img src="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" alt="{[''object2''][''label'']}" title="{[''object2''][''label'']}" style="max-width:200px;" />\r\n			</atm-if>\r\n		</atm-if>\r\n    </atm-plugin-valid>\r\n	<atm-plugin-view>\r\n        <atm-if what="{[''object2''][''fields''][9][''fileExtension'']} != ''jpg'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''gif'' &amp;&amp; {[''object2''][''fields''][9][''fileExtension'']} != ''png''">\r\n			<a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" target="_blank" title="Download file : ''{[''object2''][''fields''][9][''fileLabel'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="" /></atm-if> {[''object2''][''label'']}</a>\r\n		</atm-if>\r\n    	<atm-if what="{[''object2''][''fields''][9][''fileExtension'']} == ''jpg'' || {[''object2''][''fields''][9][''fileExtension'']} == ''gif'' || {[''object2''][''fields''][9][''fileExtension'']} == ''png''">\r\n			<atm-if what="{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" onclick="javascript:CMS_openPopUpImage(''imagezoom.php?location=public&amp;module=pmedia&amp;file={[''object2''][''fields''][9][''filename'']}&amp;label={[''object2''][''label'']|js}'');return false;" target="_blank" title="See ''{[''object2''][''label'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><img src="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''thumbnail'']}" alt="{[''object2''][''label'']}" title="{[''object2''][''label'']}" /></a>\r\n			</atm-if>\r\n			<atm-if what="!{[''object2''][''fields''][9][''thumbnail'']}">\r\n				<img src="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" alt="{[''object2''][''label'']}" title="{[''object2''][''label'']}" style="max-width:200px;" />\r\n			</atm-if>\r\n		</atm-if>\r\n    </atm-plugin-view>\r\n</atm-plugin>', '<?php\n/*Generated on Fri, 10 Sep 2010 11:57:55 +0200 by Automne (TM) 4.1.0a1 */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pmedia'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 2;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''en'')) $cms_language = new CMS_language(''en'');\n	$parameters[''public''] = (isset($parameters[''public''])) ? $parameters[''public''] : true;\n	if (isset($parameters[''item''])) {$parameters[''objectID''] = $parameters[''item'']->getObjectID();} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) $parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[2])) $object[2] = new CMS_poly_object(2, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pmedia'';\n	//PLUGIN TAG START 19_ec010f\n	if (!sensitiveIO::isPositiveInteger($parameters[''itemID'']) || !sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-plugin tag : can\\''t found object infos to use into : $parameters[\\''itemID\\''] and $parameters[\\''objectID\\'']'');\n	} else {\n		//search needed object (need to search it for publications and rights purpose)\n		if (!isset($objectDefinitions[$parameters[''objectID'']])) {\n			$objectDefinitions[$parameters[''objectID'']] = new CMS_poly_object_definition($parameters[''objectID'']);\n		}\n		$search_19_ec010f = new CMS_object_search($objectDefinitions[$parameters[''objectID'']], $parameters[''public'']);\n		$search_19_ec010f->addWhereCondition(''item'', $parameters[''itemID'']);\n		$results_19_ec010f = $search_19_ec010f->search();\n		if (isset($results_19_ec010f[$parameters[''itemID'']]) && is_object($results_19_ec010f[$parameters[''itemID'']])) {\n			$object[$parameters[''objectID'']] = $results_19_ec010f[$parameters[''itemID'']];\n		} else {\n			$object[$parameters[''objectID'']] = new CMS_poly_object($parameters[''objectID''], 0, array(), $parameters[''public'']);\n		}\n		unset($search_19_ec010f);\n		$parameters[''has-plugin-view''] = true;\n		//PLUGIN-VALID TAG START 20_4f569b\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && !(@$parameters[''plugin-view''] && @$parameters[''has-plugin-view'']) ) {\n			//IF TAG START 21_8248e3\n			$ifcondition_21_8248e3 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''flv'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''mp3'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''jpg'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''gif'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''png''", $replace);\n			if ($ifcondition_21_8248e3) {\n				$func_21_8248e3 = create_function("","return (".$ifcondition_21_8248e3.");");\n				if ($func_21_8248e3()) {\n					$content .="\n					<a href=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" target=\\"_blank\\" title=\\"Download file :  ''".$object[2]->objectValues(9)->getValue(''fileLabel'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\">";\n					//IF TAG START 22_4eaa2c\n					$ifcondition_22_4eaa2c = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileIcon'','''')), $replace);\n					if ($ifcondition_22_4eaa2c) {\n						$func_22_4eaa2c = create_function("","return (".$ifcondition_22_4eaa2c.");");\n						if ($func_22_4eaa2c()) {\n							$content .="<img src=\\"".$object[2]->objectValues(9)->getValue(''fileIcon'','''')."\\" alt=\\"\\" />";\n						}\n						unset($func_22_4eaa2c);\n					}\n					unset($ifcondition_22_4eaa2c);\n					//IF TAG END 22_4eaa2c\n					$content .=" ".$object[2]->getValue(''label'','''')."</a>\n					";\n				}\n				unset($func_21_8248e3);\n			}\n			unset($ifcondition_21_8248e3);\n			//IF TAG END 21_8248e3\n			//IF TAG START 23_5ec861\n			$ifcondition_23_5ec861 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''flv''", $replace);\n			if ($ifcondition_23_5ec861) {\n				$func_23_5ec861 = create_function("","return (".$ifcondition_23_5ec861.");");\n				if ($func_23_5ec861()) {\n					//IF TAG START 24_9a6da8\n					$ifcondition_24_9a6da8 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_24_9a6da8) {\n						$func_24_9a6da8 = create_function("","return (".$ifcondition_24_9a6da8.");");\n						if ($func_24_9a6da8()) {\n							$content .="\n							<script type=\\"text/javascript\\" src=\\"js/modules/pmedia/swfobject.js\\"></script>\n							<script type=\\"text/javascript\\">\n							swfobject.addLoadEvent(function(){\n								swfobject.embedSWF(''automne/playerflv/player_flv.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''320'', ''200'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {flv:''".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."'', configxml:''automne/playerflv/config_playerflv.xml'', startimage:''".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''thumbnail'','''')."''}, {allowfullscreen:true, wmode:''transparent''}, false);\n							});\n							</script>\n							";\n						}\n						unset($func_24_9a6da8);\n					}\n					unset($ifcondition_24_9a6da8);\n					//IF TAG END 24_9a6da8\n					//IF TAG START 25_b7bad5\n					$ifcondition_25_b7bad5 = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_25_b7bad5) {\n						$func_25_b7bad5 = create_function("","return (".$ifcondition_25_b7bad5.");");\n						if ($func_25_b7bad5()) {\n							$content .="\n							<script type=\\"text/javascript\\" src=\\"js/modules/pmedia/swfobject.js\\"></script>\n							<script type=\\"text/javascript\\">\n							swfobject.addLoadEvent(function(){\n								swfobject.embedSWF(''automne/playerflv/player_flv.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''320'', ''200'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {flv:''".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."'', configxml:''automne/playerflv/config_playerflv.xml''}, {allowfullscreen:true, wmode:''transparent''}, false);\n							});\n							</script>\n							";\n						}\n						unset($func_25_b7bad5);\n					}\n					unset($ifcondition_25_b7bad5);\n					//IF TAG END 25_b7bad5\n					$content .="\n					<div id=\\"media-".$object[2]->getValue(''id'','''')."\\" class=\\"pmedias-video\\" style=\\"width:320px;height:200px;\\">\n					<p><a href=\\"http://www.adobe.com/go/getflashplayer\\"><img src=\\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\\" alt=\\"Get Adobe Flash player\\" /></a></p>\n					</div>\n					";\n				}\n				unset($func_23_5ec861);\n			}\n			unset($ifcondition_23_5ec861);\n			//IF TAG END 23_5ec861\n			//IF TAG START 26_e5482d\n			$ifcondition_26_e5482d = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''mp3''", $replace);\n			if ($ifcondition_26_e5482d) {\n				$func_26_e5482d = create_function("","return (".$ifcondition_26_e5482d.");");\n				if ($func_26_e5482d()) {\n					$content .="\n					<script type=\\"text/javascript\\" src=\\"js/modules/pmedia/swfobject.js\\"></script>\n					<script type=\\"text/javascript\\">\n					swfobject.addLoadEvent(function(){\n						swfobject.embedSWF(''automne/playermp3/player_mp3.swf'', ''media-".$object[2]->getValue(''id'','''')."'', ''200'', ''20'', ''9.0.0'', ''automne/swfobject/expressInstall.swf'', {mp3:''".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."'', configxml:''automne/playermp3/config_playermp3.xml''}, {wmode:''transparent''}, false);\n					});\n					</script>\n					<div id=\\"media-".$object[2]->getValue(''id'','''')."\\" class=\\"pmedias-audio\\" style=\\"width:200px;height:20px;\\">\n					<p><a href=\\"http://www.adobe.com/go/getflashplayer\\"><img src=\\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\\" alt=\\"Get Adobe Flash player\\" /></a></p>\n					</div>\n					";\n				}\n				unset($func_26_e5482d);\n			}\n			unset($ifcondition_26_e5482d);\n			//IF TAG END 26_e5482d\n			//IF TAG START 27_72e2f5\n			$ifcondition_27_72e2f5 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''jpg'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''gif'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''png''", $replace);\n			if ($ifcondition_27_72e2f5) {\n				$func_27_72e2f5 = create_function("","return (".$ifcondition_27_72e2f5.");");\n				if ($func_27_72e2f5()) {\n					//IF TAG START 28_5a1483\n					$ifcondition_28_5a1483 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_28_5a1483) {\n						$func_28_5a1483 = create_function("","return (".$ifcondition_28_5a1483.");");\n						if ($func_28_5a1483()) {\n							$content .="\n							<a href=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" onclick=\\"javascript:CMS_openPopUpImage(''imagezoom.php?location=public&amp;module=pmedia&amp;file=".$object[2]->objectValues(9)->getValue(''filename'','''')."&amp;label=".$object[2]->getValue(''label'',''js'')."'');return false;\\" target=\\"_blank\\" title=\\"Watch ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\"><img src=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''thumbnail'','''')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" title=\\"".$object[2]->getValue(''label'','''')."\\" /></a>\n							";\n						}\n						unset($func_28_5a1483);\n					}\n					unset($ifcondition_28_5a1483);\n					//IF TAG END 28_5a1483\n					//IF TAG START 29_cc18d6\n					$ifcondition_29_cc18d6 = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_29_cc18d6) {\n						$func_29_cc18d6 = create_function("","return (".$ifcondition_29_cc18d6.");");\n						if ($func_29_cc18d6()) {\n							$content .="\n							<img src=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" title=\\"".$object[2]->getValue(''label'','''')."\\" style=\\"max-width:200px;\\" />\n							";\n						}\n						unset($func_29_cc18d6);\n					}\n					unset($ifcondition_29_cc18d6);\n					//IF TAG END 29_cc18d6\n				}\n				unset($func_27_72e2f5);\n			}\n			unset($ifcondition_27_72e2f5);\n			//IF TAG END 27_72e2f5\n		}\n		//PLUGIN-VALID END 20_4f569b\n		//PLUGIN-VIEW TAG START 30_087e34\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && isset($parameters[''plugin-view''])) {\n			//IF TAG START 31_272672\n			$ifcondition_31_272672 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''jpg'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''gif'' && ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." != ''png''", $replace);\n			if ($ifcondition_31_272672) {\n				$func_31_272672 = create_function("","return (".$ifcondition_31_272672.");");\n				if ($func_31_272672()) {\n					$content .="\n					<a href=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" target=\\"_blank\\" title=\\"Download file : ''".$object[2]->objectValues(9)->getValue(''fileLabel'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\">";\n					//IF TAG START 32_3a7412\n					$ifcondition_32_3a7412 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileIcon'','''')), $replace);\n					if ($ifcondition_32_3a7412) {\n						$func_32_3a7412 = create_function("","return (".$ifcondition_32_3a7412.");");\n						if ($func_32_3a7412()) {\n							$content .="<img src=\\"".$object[2]->objectValues(9)->getValue(''fileIcon'','''')."\\" alt=\\"\\" />";\n						}\n						unset($func_32_3a7412);\n					}\n					unset($ifcondition_32_3a7412);\n					//IF TAG END 32_3a7412\n					$content .=" ".$object[2]->getValue(''label'','''')."</a>\n					";\n				}\n				unset($func_31_272672);\n			}\n			unset($ifcondition_31_272672);\n			//IF TAG END 31_272672\n			//IF TAG START 33_3da034\n			$ifcondition_33_3da034 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''jpg'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''gif'' || ".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileExtension'',''''))." == ''png''", $replace);\n			if ($ifcondition_33_3da034) {\n				$func_33_3da034 = create_function("","return (".$ifcondition_33_3da034.");");\n				if ($func_33_3da034()) {\n					//IF TAG START 34_e34075\n					$ifcondition_34_e34075 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_34_e34075) {\n						$func_34_e34075 = create_function("","return (".$ifcondition_34_e34075.");");\n						if ($func_34_e34075()) {\n							$content .="\n							<a href=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" onclick=\\"javascript:CMS_openPopUpImage(''imagezoom.php?location=public&amp;module=pmedia&amp;file=".$object[2]->objectValues(9)->getValue(''filename'','''')."&amp;label=".$object[2]->getValue(''label'',''js'')."'');return false;\\" target=\\"_blank\\" title=\\"See ''".$object[2]->getValue(''label'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\"><img src=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''thumbnail'','''')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" title=\\"".$object[2]->getValue(''label'','''')."\\" /></a>\n							";\n						}\n						unset($func_34_e34075);\n					}\n					unset($ifcondition_34_e34075);\n					//IF TAG END 34_e34075\n					//IF TAG START 35_9ba98c\n					$ifcondition_35_9ba98c = CMS_polymod_definition_parsing::replaceVars("!".CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''thumbnail'','''')), $replace);\n					if ($ifcondition_35_9ba98c) {\n						$func_35_9ba98c = create_function("","return (".$ifcondition_35_9ba98c.");");\n						if ($func_35_9ba98c()) {\n							$content .="\n							<img src=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" alt=\\"".$object[2]->getValue(''label'','''')."\\" title=\\"".$object[2]->getValue(''label'','''')."\\" style=\\"max-width:200px;\\" />\n							";\n						}\n						unset($func_35_9ba98c);\n					}\n					unset($ifcondition_35_9ba98c);\n					//IF TAG END 35_9ba98c\n				}\n				unset($func_33_3da034);\n			}\n			unset($ifcondition_33_3da034);\n			//IF TAG END 33_3da034\n		}\n		//PLUGIN-VIEW END 30_087e34\n		$content .="\n		";\n	}\n	//PLUGIN TAG END 19_ec010f\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''pmedia'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);}\n	?>');
INSERT INTO `mod_object_plugin_definition` (`id_mowd`, `uuid_mowd`, `object_id_mowd`, `label_id_mowd`, `description_id_mowd`, `query_mowd`, `definition_mowd`, `compiled_definition_mowd`) VALUES(2, 'a6076392-0baa-102e-80e2-001a6470da26', 2, 89, 90, 'a:1:{i:8;s:1:"0";}', '<atm-plugin language="en">\r\n    <atm-plugin-valid>\r\n        <a href="{[''object2''][''fields''][9][''filePath'']}/{[''object2''][''fields''][9][''filename'']}" target="_blank" title="Download file ''{[''object2''][''fields''][9][''fileLabel'']}'' ({[''object2''][''fields''][9][''fileExtension'']} - {[''object2''][''fields''][9][''fileSize'']}Mo)"><atm-if what="{[''object2''][''fields''][9][''fileIcon'']}"><img src="{[''object2''][''fields''][9][''fileIcon'']}" alt="" /> </atm-if>{plugin:selection}</a>\r\n    </atm-plugin-valid>\r\n	<atm-plugin-invalid>\r\n        {plugin:selection}\r\n    </atm-plugin-invalid>\r\n</atm-plugin>', '<?php\n/*Generated on Wed, 08 Sep 2010 15:00:57 +0200 by Automne (TM) 4.1.0a1 */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pmedia'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 2;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''en'')) $cms_language = new CMS_language(''en'');\n	$parameters[''public''] = (isset($parameters[''public''])) ? $parameters[''public''] : true;\n	if (isset($parameters[''item''])) {$parameters[''objectID''] = $parameters[''item'']->getObjectID();} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) $parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[2])) $object[2] = new CMS_poly_object(2, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pmedia'';\n	//PLUGIN TAG START 19_1d94de\n	if (!sensitiveIO::isPositiveInteger($parameters[''itemID'']) || !sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-plugin tag : can\\''t found object infos to use into : $parameters[\\''itemID\\''] and $parameters[\\''objectID\\'']'');\n	} else {\n		//search needed object (need to search it for publications and rights purpose)\n		if (!isset($objectDefinitions[$parameters[''objectID'']])) {\n			$objectDefinitions[$parameters[''objectID'']] = new CMS_poly_object_definition($parameters[''objectID'']);\n		}\n		$search_19_1d94de = new CMS_object_search($objectDefinitions[$parameters[''objectID'']], $parameters[''public'']);\n		$search_19_1d94de->addWhereCondition(''item'', $parameters[''itemID'']);\n		$results_19_1d94de = $search_19_1d94de->search();\n		if (isset($results_19_1d94de[$parameters[''itemID'']]) && is_object($results_19_1d94de[$parameters[''itemID'']])) {\n			$object[$parameters[''objectID'']] = $results_19_1d94de[$parameters[''itemID'']];\n		} else {\n			$object[$parameters[''objectID'']] = new CMS_poly_object($parameters[''objectID''], 0, array(), $parameters[''public'']);\n		}\n		unset($search_19_1d94de);\n		$parameters[''has-plugin-view''] = false;\n		//PLUGIN-VALID TAG START 20_f5d7d6\n		if ($object[$parameters[''objectID'']]->isInUserSpace() && !(@$parameters[''plugin-view''] && @$parameters[''has-plugin-view'']) ) {\n			$content .="\n			<a href=\\"".$object[2]->objectValues(9)->getValue(''filePath'','''')."/".$object[2]->objectValues(9)->getValue(''filename'','''')."\\" target=\\"_blank\\" title=\\"Download file ''".$object[2]->objectValues(9)->getValue(''fileLabel'','''')."'' (".$object[2]->objectValues(9)->getValue(''fileExtension'','''')." - ".$object[2]->objectValues(9)->getValue(''fileSize'','''')."Mo)\\">";\n			//IF TAG START 21_d487b1\n			$ifcondition_21_d487b1 = CMS_polymod_definition_parsing::replaceVars(CMS_polymod_definition_parsing::prepareVar($object[2]->objectValues(9)->getValue(''fileIcon'','''')), $replace);\n			if ($ifcondition_21_d487b1) {\n				$func_21_d487b1 = create_function("","return (".$ifcondition_21_d487b1.");");\n				if ($func_21_d487b1()) {\n					$content .="<img src=\\"".$object[2]->objectValues(9)->getValue(''fileIcon'','''')."\\" alt=\\"\\" /> ";\n				}\n				unset($func_21_d487b1);\n			}\n			unset($ifcondition_21_d487b1);\n			//IF TAG END 21_d487b1\n			$content .=$parameters[''selection'']."</a>\n			";\n		}\n		//PLUGIN-VALID END 20_f5d7d6\n		//PLUGIN-INVALID TAG START 22_6344e2\n		if (!$object[$parameters[''objectID'']]->isInUserSpace()) {\n			$content .="\n			".$parameters[''selection'']."\n			";\n		}\n		//PLUGIN-INVALID END 22_6344e2\n		$content .="\n		";\n	}\n	//PLUGIN TAG END 19_1d94de\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''pmedia'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);}\n	?>');

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
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(41, 1, 1);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(42, 1, 1);
INSERT INTO `mod_object_polyobjects` (`id_moo`, `object_type_id_moo`, `deleted_moo`) VALUES(43, 2, 1);

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

INSERT INTO `mod_object_rss_definition` (`id_mord`, `uuid_mord`, `object_id_mord`, `label_id_mord`, `description_id_mord`, `link_mord`, `author_mord`, `copyright_mord`, `categories_mord`, `ttl_mord`, `email_mord`, `definition_mord`, `compiled_definition_mord`, `last_compilation_mord`) VALUES(3, 'a61282b8-0baa-102e-80e2-001a6470da26', 1, 40, 41, '', '', '', '', 1440, '', '<atm-rss language="en">\r\n    <atm-rss-title>Automne demo news</atm-rss-title>\r\n    <atm-search what="{[''object1'']}" name="rss">\r\n        <atm-search-order search="rss" type="publication date after" direction="desc" />\r\n        <atm-result search="rss">\r\n            <atm-rss-item>\r\n                <atm-rss-item-url>{page:5:url}?item={[''object1''][''id'']}</atm-rss-item-url>\r\n                <atm-rss-item-title>{[''object1''][''fields''][1][''value'']}</atm-rss-item-title>\r\n                <atm-rss-item-content>{[''object1''][''fields''][2][''htmlvalue'']}</atm-rss-item-content>\r\n                <atm-rss-item-date>{[''object1''][''formatedDateStart'']|rss}</atm-rss-item-date>\r\n            </atm-rss-item>\r\n        </atm-result>\r\n    </atm-search>\r\n</atm-rss>', '<?php\n/*Generated on Wed, 02 Jun 2010 15:17:49 +0200 by Automne (TM) 4.0.2 */\nif(!APPLICATION_ENFORCES_ACCESS_CONTROL || (isset($cms_user) && is_a($cms_user, ''CMS_profile_user'') && $cms_user->hasModuleClearance(''pnews'', CLEARANCE_MODULE_VIEW))){\n	$content = "";\n	$replace = "";\n	$atmIfResults = array();\n	if (!isset($objectDefinitions) || !is_array($objectDefinitions)) $objectDefinitions = array();\n	$parameters[''objectID''] = 1;\n	if (!isset($cms_language) || (isset($cms_language) && $cms_language->getCode() != ''en'')) $cms_language = new CMS_language(''en'');\n	$parameters[''public''] = true;\n	if (isset($parameters[''item''])) {$parameters[''objectID''] = $parameters[''item'']->getObjectID();} elseif (isset($parameters[''itemID'']) && sensitiveIO::isPositiveInteger($parameters[''itemID'']) && !isset($parameters[''objectID''])) $parameters[''objectID''] = CMS_poly_object_catalog::getObjectDefinitionByID($parameters[''itemID'']);\n	if (!isset($object) || !is_array($object)) $object = array();\n	if (!isset($object[1])) $object[1] = new CMS_poly_object(1, 0, array(), $parameters[''public'']);\n	$parameters[''module''] = ''pnews'';\n	//RSS TAG START 32_fc7c81\n	if (!sensitiveIO::isPositiveInteger($parameters[''objectID''])) {\n		CMS_grandFather::raiseError(''Error into atm-rss tag : can\\''t found object infos to use into : $parameters[\\''objectID\\'']'');\n	} else {\n		//RSS-ITEM-TITLE TAG START 33_0faffb\n		$content .= ''<title>'';\n		//save content\n		$content_33_0faffb = $content;\n		$content = '''';\n		$content .="Automen demo news";\n		//then remove tags from content and add it to old content\n		$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n		$content = $content_33_0faffb.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n		unset($content_33_0faffb);\n		$content .= ''</title>'';\n		//RSS-ITEM-TITLE TAG END 33_0faffb\n		//SEARCH rss TAG START 34_5ff90d\n		$objectDefinition_rss = ''1'';\n		if (!isset($objectDefinitions[$objectDefinition_rss])) {\n			$objectDefinitions[$objectDefinition_rss] = new CMS_poly_object_definition($objectDefinition_rss);\n		}\n		//public search ?\n		$public_34_5ff90d = isset($public_search) ? $public_search : false;\n		//get search params\n		$search_rss = new CMS_object_search($objectDefinitions[$objectDefinition_rss], $public_34_5ff90d);\n		$launchSearch_rss = true;\n		//add search conditions if any\n		$search_rss->addOrderCondition("publication date after", "desc");\n		//RESULT rss TAG START 35_948dbd\n		//launch search rss if not already done\n		if($launchSearch_rss && !isset($results_rss)) {\n			if (isset($search_rss)) {\n				$results_rss = $search_rss->search();\n			} else {\n				CMS_grandFather::raiseError("Malformed atm-result tag : can''t use this tag outside of atm-search \\"rss\\" tag ...");\n				$results_rss = array();\n			}\n		} elseif (!$launchSearch_rss) {\n			$results_rss = array();\n		}\n		if ($results_rss) {\n			$object_35_948dbd = (isset($object[$objectDefinition_rss])) ? $object[$objectDefinition_rss] : ""; //save previous object search if any\n			$replace_35_948dbd = $replace; //save previous replace vars if any\n			$count_35_948dbd = 0;\n			$content_35_948dbd = $content; //save previous content var if any\n			$maxPages_35_948dbd = $search_rss->getMaxPages();\n			$maxResults_35_948dbd = $search_rss->getNumRows();\n			foreach ($results_rss as $object[$objectDefinition_rss]) {\n				$content = "";\n				$replace["atm-search"] = array (\n					"{resultid}" 	=> (isset($resultID_rss)) ? $resultID_rss : $object[$objectDefinition_rss]->getID(),\n					"{firstresult}" => (!$count_35_948dbd) ? 1 : 0,\n					"{lastresult}" 	=> ($count_35_948dbd == sizeof($results_rss)-1) ? 1 : 0,\n					"{resultcount}" => ($count_35_948dbd+1),\n					"{maxpages}"    => $maxPages_35_948dbd,\n					"{currentpage}" => ($search_rss->getAttribute(''page'')+1),\n					"{maxresults}"  => $maxResults_35_948dbd,\n					"{altclass}"    => (($count_35_948dbd+1) % 2) ? "CMS_odd" : "CMS_even",\n				);\n				//RSS-ITEM TAG START 36_2ce0d7\n				$content .= ''<item>\n				<guid isPermaLink="false">object''.$parameters[''objectID''].''-''.$object[$parameters[''objectID'']]->getID().''</guid>'';\n				//RSS-ITEM-LINK TAG START 37_e2c765\n				$content .= ''<link>'';\n				//save content\n				$content_37_e2c765 = $content;\n				$content = '''';\n				$content .=CMS_tree::getPageValue("5","url")."?item=".$object[1]->getValue(''id'','''');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_37_e2c765.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_37_e2c765);\n				$content .= ''</link>'';\n				//RSS-ITEM-LINK TAG END 37_e2c765\n				//RSS-ITEM-TITLE TAG START 38_e18554\n				$content .= ''<title>'';\n				//save content\n				$content_38_e18554 = $content;\n				$content = '''';\n				$content .=$object[1]->objectValues(1)->getValue(''value'','''');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_38_e18554.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_38_e18554);\n				$content .= ''</title>'';\n				//RSS-ITEM-TITLE TAG END 38_e18554\n				//RSS-ITEM-DESCRIPTION TAG START 39_e1c3d4\n				$content .= ''<description>'';\n				$content .= ''<![CDATA['';\n				$content .=$object[1]->objectValues(2)->getValue(''htmlvalue'','''');\n				$content .= '']]>'';\n				$content .= ''</description>'';\n				//RSS-ITEM-DESCRIPTION TAG END 39_e1c3d4\n				//RSS-ITEM-PUBDATE TAG START 40_575167\n				$content .= ''<pubDate>'';\n				//save content\n				$content_40_575167 = $content;\n				$content = '''';\n				$content .=$object[1]->getValue(''formatedDateStart'',''rss'');\n				//then remove tags from content and add it to old content\n				$entities = array(''&'' => ''&amp;'',''>'' => ''&gt;'',''<'' => ''&lt;'',);\n				$content = $content_40_575167.str_replace(array_keys($entities),$entities,strip_tags(io::decodeEntities($content)));\n				unset($content_40_575167);\n				$content .= ''</pubDate>'';\n				//RSS-ITEM-PUBDATE TAG END 40_575167\n				$content .= ''</item>'';\n				//RSS-ITEM TAG END 36_2ce0d7\n				$count_35_948dbd++;\n				//do all result vars replacement\n				$content_35_948dbd.= CMS_polymod_definition_parsing::replaceVars($content, $replace);\n			}\n			$content = $content_35_948dbd; //retrieve previous content var if any\n			unset($content_35_948dbd);\n			$replace = $replace_35_948dbd; //retrieve previous replace vars if any\n			unset($replace_35_948dbd);\n			$object[$objectDefinition_rss] = $object_35_948dbd; //retrieve previous object search if any\n			unset($object_35_948dbd);\n		}\n		//RESULT rss TAG END 35_948dbd\n		//destroy search and results rss objects\n		unset($search_rss);\n		unset($results_rss);\n		//SEARCH rss TAG END 34_5ff90d\n		$content .="\n		";\n	}\n	//RSS TAG END 32_fc7c81\n	$content = CMS_polymod_definition_parsing::replaceVars($content, $replace);\n	$content .= ''<!--{elements:''.base64_encode(serialize(array (\n		''module'' =>\n		array (\n			0 => ''standard'',\n			1 => ''pnews'',\n		),\n	))).''}-->'';\n	echo $content;\n	unset($content);}\n	?>', '2010-06-02 15:17:49');

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

INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '65990b9ff00394714dd60ffd708b2d77', 70, 6);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', '8910cceb3902f8e5b364ac872a452570', 70, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', '85e7287f61fa20d9cd0d0adabbef07d1', 54, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 55, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '67834d6b4d508349b9b2892e4932e718', 43, 5);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '508f7be6da1c7022ae3df00f30190e49', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 69, 4);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', 'ef68332801171f3678986a9192ea85db', 67, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', '947a9a22e4eefe4a486202ab6005f8b5', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(58, 'first', 'e41e88d5ba9dc4da5ec2772895543861', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '4564d92b193505d71f29b5ae69dddde0', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '56025a9b887be03112111d215ca6f31d', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '9ba530cba11a3763a081a2e34072711f', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', 'dda8207197eda19c8be4b1f63d76b382', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '198690666d878af31b7d27d2f4c1cfd3', 67, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '472f95744f761c8f816f68cd59cf28a8', 46, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', 'a23554f135ed742872910b38a70131cf3', 58, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', 'a1ba42094f9b45486a0338b5eea859dfb', 68, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '592c2e33c7971c02ec553000d0eaea43', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'second', 'a149c4ef608130b6963fff950126d8690', 66, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '53a2f135735e315515920da75a688354', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '06557a802a64033c07bee90915ce3a93', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'c44b397b36f4839fd7bba0c769b5e56e', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '6ff77816cb91134d254f1b0723fa0022', 44, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a0922acb28a233e527aa46607bfec987c', 44, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', '12ea6baf8092e5e6c7abb476cf71ce08', 44, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'adbbb020aeadb2df9957a83e19e55211', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '9f851c9d1868ad933f280c33e5a419f3', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '18f076b2de7e3b4310097f83ac547533', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', 'f87771b9821f911d00f29d8d494a055b', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '229fdaa261c7fed31f048dc9f7d1c95d', 43, 3);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '4f342492c25a2b686c2b531760008d98', 70, 2);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e76f4966a4808ea827d71853fd371ee3', 43, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 44, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 45, 7);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '409d0a2f5060ddb2747151da5e264f99', 44, 6);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '401937687b65ea5c249faa74f4e23c9a', 69, 5);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '39a32afb98d21c8252ea3714cff0f62e', 69, 4);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 69, 1);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '71b5c89dda723156165f086098957ded', 43, 0);
INSERT INTO `mod_standard_clientSpaces_edited` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 44, 2);

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

INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(61, 'first', 'a23554f135ed742872910b38a70131cf3', 58, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(64, 'first', '85e7287f61fa20d9cd0d0adabbef07d1', 54, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', 'aa09fe3cdbc32c9b9b7808a6ae073f604', 55, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '508f7be6da1c7022ae3df00f30190e49', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '3c1cf8ef8f25de1ae96706a2585bffb7', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '718dfb04e3bd006a81604b9ccdf448cf', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '4564d92b193505d71f29b5ae69dddde0', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(81, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(83, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(86, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', '56025a9b887be03112111d215ca6f31d', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', 'dda8207197eda19c8be4b1f63d76b382', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '472f95744f761c8f816f68cd59cf28a8', 46, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(62, 'first', 'a1ba42094f9b45486a0338b5eea859dfb', 68, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(91, 'first', '592c2e33c7971c02ec553000d0eaea43', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'second', 'a149c4ef608130b6963fff950126d8690', 66, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(88, 'first', '7448f10ee9579c5f0de5616d06e7b7f2', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '53a2f135735e315515920da75a688354', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(84, 'first', 'f863b4e5ea5a0c8019440ff99e59e29f', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(94, 'first', '06557a802a64033c07bee90915ce3a93', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(87, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a0922acb28a233e527aa46607bfec987c', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', '12ea6baf8092e5e6c7abb476cf71ce08', 44, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '71b5c89dda723156165f086098957ded', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'f2c8532eb6f56afe1d435350eebd9a52', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(90, 'first', 'adbbb020aeadb2df9957a83e19e55211', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', 'c44b397b36f4839fd7bba0c769b5e56e', 44, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(65, 'first', '17a6be4c940c12530cfaecfb2eb6b828', 44, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '6ff77816cb91134d254f1b0723fa0022', 44, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '9f851c9d1868ad933f280c33e5a419f3', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', '267e03d5f6a4d0392b79a2d31dcd40f2', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(82, 'first', 'f87771b9821f911d00f29d8d494a055b', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '67834d6b4d508349b9b2892e4932e718', 43, 5);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '48e8e4c2bea88305e6a9353511f51ea7', 69, 4);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '229fdaa261c7fed31f048dc9f7d1c95d', 43, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '4f342492c25a2b686c2b531760008d98', 70, 2);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', 'e76f4966a4808ea827d71853fd371ee3', 43, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '8d1b3ec256dada4f0c811896050fdc9f', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', '9ba530cba11a3763a081a2e34072711f', 69, 1);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(92, 'first', '18f076b2de7e3b4310097f83ac547533', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '39a32afb98d21c8252ea3714cff0f62e', 69, 4);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '401937687b65ea5c249faa74f4e23c9a', 69, 5);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(57, 'first', 'a5dc59c9028fd290e4f240131991fa8a2', 43, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '409d0a2f5060ddb2747151da5e264f99', 44, 6);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(59, 'first', '23ba8857d961fd78dc2ff56bb56e39e7', 45, 7);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(93, 'first', '198690666d878af31b7d27d2f4c1cfd3', 67, 3);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(85, 'first', 'ac2acfd1b03fd3839ffd4502484cbbfa6', 45, 0);
INSERT INTO `mod_standard_clientSpaces_public` (`template_cs`, `tagID_cs`, `rowsDefinition_cs`, `type_cs`, `order_cs`) VALUES(95, 'first', '65990b9ff00394714dd60ffd708b2d77', 70, 6);

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

INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(25, 'a61adb84-0baa-102e-80e2-001a6470da26', '000 Example', 'r25_Complet.xml', 'standard', '', 'interieur-vert.jpg', 'This row contains all kinds of different blocks that you can use in the standard module : string, text, image, file, flash object.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(46, 'a61ade22-0baa-102e-80e2-001a6470da26', '220 Text and left-aligned image', 'r46_220_Texte_et_Image_Gauche.xml', 'standard', '', 'text-img-left.gif', 'This row allows you to insert text, that can be formatted with the WYSIWYG editor and also an image from your computer that will be left-aligned. Better use the ''media and left-aligned'' row if you prefer to link to images or videos from the media library', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(45, 'a61ae1ba-0baa-102e-80e2-001a6470da26', '210 Text and right-aligned image', 'r45_210_Texte__image_droite.xml', 'standard', '', 'text-img-right.gif', 'This row allows you to insert text, that can be formatted with the WYSIWYG editor and also an image from your computer that will be right-aligned. Better use the ''media and right-aligned'' row if you prefer to link to images or videos from the media library', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(44, 'a61ae50c-0baa-102e-80e2-001a6470da26', '200 Text', 'r44_200_Texte.xml', 'standard', '', 'text.gif', 'This row can contain all kind of formatted text - including, links, lists, tables, etc. -  thanks to the WYSIWYG editor. You also have access to WYSIWYG plugins, that allow to link to your modules data.', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(43, 'a61ae7e6-0baa-102e-80e2-001a6470da26', '110 Level 2 heading', 'r43_100_Sous_Titre.xml', 'standard', '', 'title.gif', 'This row will insert a level 2 heading. It''s equivalent to insert a h2 HTML  element', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(42, 'a61ae9c6-0baa-102e-80e2-001a6470da26', '100 Level 1 heading', 'r42_000_Titre.xml', 'standard', '', 'title.gif', 'This row will insert a level 1 heading. It''s equivalent to insert a HTML h1  element', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(47, 'a61aeb88-0baa-102e-80e2-001a6470da26', '400 File download', 'r47_400_Telecharger_un_fichier.xml', 'standard', '', 'file.gif', 'This row allows you to insert a file to download.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(48, 'a61aed04-0baa-102e-80e2-001a6470da26', '300 Centered image ', 'r48_300_Image_Centree.xml', 'standard', '', 'img.gif', 'This row insert a centered image, which maximum width is set to 500px.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(49, 'a61aef84-0baa-102e-80e2-001a6470da26', '410  Flash animation', 'r49_500_Animation_Flash.xml', 'standard', '', 'flash.gif', 'This rows allows you to insert flash content (swf file)', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(54, 'a61af13c-0baa-102e-80e2-001a6470da26', '700 Sitemap', 'r54_700_Plan_du_site.xml', 'standard', 'admin', 'tree.gif', 'This row displays a three level deep sitemap from the root', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(55, 'a61af2e0-0baa-102e-80e2-001a6470da26', '800 [Form]', 'r55_800_Formulaire.xml', 'cms_forms', 'admin', 'form.gif', 'This row allows to insert a form created with the help of the form module.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(58, 'a61af484-0baa-102e-80e2-001a6470da26', '605 [News] Search', 'r58_610_Actualites__Recherche_FR.xml', 'pnews', 'admin', 'module.gif', 'This row displays the last ten news and allows you to search the news by keyword.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(61, 'a61af628-0baa-102e-80e2-001a6470da26', '900 Google Map', 'r61_900_Google_Maps.xml', 'standard', 'admin', 'googlemaps.gif', 'This row allows you to insert a Google Map from a postal address.\nYou have to get an API key to use this service. Check the source code of the row for more information.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(66, 'a61af862-0baa-102e-80e2-001a6470da26', '615 [News] Last article', 'r66_615_Derniere_actualite.xml', 'pnews', 'admin', 'module.gif', 'This row display the last published article of the module news.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(67, 'a61afa06-0baa-102e-80e2-001a6470da26', '120 Level 3 heading', 'r67_120_Sous_Sous_Titre.xml', 'standard', '', 'title.gif', 'This row will insert a level 3 heading. It''s equivalent to insert a h3 HTML  element', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(68, 'a61afbdc-0baa-102e-80e2-001a6470da26', '650 [Mediacenter] Search', 'r68_650_Mediatheque.xml', 'pmedia', 'admin', 'module.gif', 'This row displays the last ten published media and embed and allows to search by categories or keywords.', '', 0);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(69, 'a61afdc6-0baa-102e-80e2-001a6470da26', '230 Text and right-aligned media', 'r69_Texte_-_Media_a_droite.xml', 'pmedia;standard', '', 'text-mod-right.gif', 'This row allows you to insert text, that can be formatted with the WYSIWYG editor and also a right-aligned media (image, video or audio) from the media library.', '', 1);
INSERT INTO `mod_standard_rows` (`id_row`, `uuid_row`, `label_row`, `definitionFile_row`, `modulesStack_row`, `groupsStack_row`, `image_row`, `description_row`, `tplfilter_row`, `useable_row`) VALUES(70, 'a61b0078-0baa-102e-80e2-001a6470da26', '240 Text and left-aligned media', 'r70_240_Texte_et_Media_a_Gauche.xml', 'pmedia;standard', '', 'text-mod-left.gif', 'This row allows you to insert text, that can be formatted with the WYSIWYG editor and also a left-aligned media (image, video or audio) from the media library.', '', 1);

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

INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(11, 4, 5, 0, 17);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(9, 4, 0, 0, 49);
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
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 36, 0, 0, 109);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 36, 8, 0, 20);
INSERT INTO `mod_subobject_integer_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 36, 9, 3, 1);
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

INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(15, 4, 1, 0, 'Release of Automne 4  ');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(16, 4, 4, 0, 'r4_4_automne_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(17, 4, 4, 1, 'Automne');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(18, 4, 4, 2, 'r4_4_automne.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 17, 6, 0, 'Publication management');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 17, 9, 0, 'Publication management');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 17, 9, 1, 'r17_9_publication_date_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 17, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 17, 9, 4, 'r17_9_publication_date-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(137, 35, 9, 4, 'r35_9_automne4-interface-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(136, 35, 9, 2, '0.62');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(134, 35, 9, 0, 'Automne 4 interface');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(135, 35, 9, 1, 'r35_9_automne4-interface_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 24, 6, 0, 'Creating a template row');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 24, 9, 0, 'Creating a template row');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 24, 9, 1, 'r24_9_creating_row_template_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 24, 9, 2, '0.16');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 24, 9, 4, 'r24_9_creating_row_template-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 25, 6, 0, 'Page template creation');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 25, 9, 0, 'Page template creation');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 25, 9, 1, 'r25_9_creating-page-template_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 25, 9, 2, '0.12');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 25, 9, 4, 'r25_9_creating-page-template-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 26, 6, 0, 'Modules control panel');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 26, 9, 0, 'Modules control panel');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 26, 9, 1, 'r26_9_automne-sidebar-panel_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 26, 9, 2, '0.07');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 26, 9, 4, 'r26_9_automne-sidebar-panel-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 27, 6, 0, 'User creation');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 27, 9, 0, 'User creation');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 27, 9, 1, 'r27_9_user_creation_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 27, 9, 2, '0.08');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 27, 9, 4, 'r27_9_user_creation-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 28, 6, 0, 'Users rights management');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 28, 9, 0, 'Users rights management');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 28, 9, 1, 'r28_9_user_rights-2_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 28, 9, 2, '0.11');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 28, 9, 4, 'r28_9_user_rights-3.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 29, 6, 0, 'Page status after publication');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 29, 9, 0, 'Page status after publication');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 29, 9, 1, 'r29_9_page_status_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 29, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 29, 9, 4, 'r29_9_page_status-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(132, 34, 9, 4, 'r34_9_row-drag-and-drop-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(130, 34, 9, 1, 'r34_9_row-drag-and-drop_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(131, 34, 9, 2, '0.21');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(129, 34, 9, 0, 'Content row drag-and-drop');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(128, 34, 6, 0, 'Content row drag-and-drop');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(133, 35, 6, 0, 'Automne 4 interface');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(138, 36, 6, 0, 'Création d''une page');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(139, 36, 9, 0, 'Création d''une page');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(140, 36, 9, 1, 'r36_9_creationpage.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(141, 36, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(142, 36, 9, 4, 'r36_9_creationpage.jpg');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(143, 37, 6, 0, 'News module help');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(144, 37, 9, 0, 'News module help');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(145, 37, 9, 1, 'r37_9_polymod_help_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(146, 37, 9, 2, '0.18');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(147, 37, 9, 4, 'r37_9_polymod_help-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(148, 38, 6, 0, 'Contextual help');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(149, 38, 9, 0, 'Contextual help');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(150, 38, 9, 1, 'r38_9_contextual_help_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(151, 38, 9, 2, '0.06');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(152, 38, 9, 4, 'r38_9_contextual_help-2.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(153, 39, 6, 0, 'Search results');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(154, 39, 9, 0, 'Search results');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(155, 39, 9, 1, 'r39_9_search_results-2_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(156, 39, 9, 2, '0.13');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(157, 39, 9, 4, 'r39_9_search_results-3.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(158, 40, 6, 0, 'Disabled forms module admin');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(159, 40, 9, 0, 'Disabled forms module admin');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(160, 40, 9, 1, 'r40_9_forms-admin-disabled_thumbnail.png');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(161, 40, 9, 2, '0');
INSERT INTO `mod_subobject_string_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(162, 40, 9, 4, 'r40_9_forms-admin-disabled-2.png');

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

INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(17, 4, 4, 1, 'Automne');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(106, 29, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(101, 28, 9, 2, '0.11');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(100, 28, 9, 1, 'r28_9_user_rights-2_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(96, 27, 9, 2, '0.08');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(85, 25, 9, 1, 'r25_9_creating-page-template_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(90, 26, 9, 1, 'r26_9_automne-sidebar-panel_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(89, 26, 9, 0, 'Modules control panel');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(95, 27, 9, 1, 'r27_9_user_creation_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(94, 27, 9, 0, 'User creation');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(105, 29, 9, 1, 'r29_9_page_status_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(129, 34, 9, 0, 'Content row drag-and-drop');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(131, 34, 9, 2, '0.21');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(99, 28, 9, 0, 'Users rights management');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(88, 26, 6, 0, 'Modules control panel');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(104, 29, 9, 0, 'Page status after publication');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(98, 28, 6, 0, 'Users rights management');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(93, 27, 6, 0, 'User creation');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(80, 24, 9, 1, 'r24_9_creating_row_template_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(130, 34, 9, 1, 'r34_9_row-drag-and-drop_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(134, 35, 9, 0, 'Automne 4 interface');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(138, 36, 6, 0, 'Création d''une page');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(139, 36, 9, 0, 'Création d''une page');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(140, 36, 9, 1, 'r36_9_creationpage.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(141, 36, 9, 2, '0.04');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(142, 36, 9, 4, 'r36_9_creationpage.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(145, 37, 9, 1, 'r37_9_polymod_help_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(150, 38, 9, 1, 'r38_9_contextual_help_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(157, 39, 9, 4, 'r39_9_search_results-3.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(156, 39, 9, 2, '0.13');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(155, 39, 9, 1, 'r39_9_search_results-2_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(154, 39, 9, 0, 'Search results');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(162, 40, 9, 4, 'r40_9_forms-admin-disabled-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(160, 40, 9, 1, 'r40_9_forms-admin-disabled_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(45, 17, 9, 1, 'r17_9_publication_date_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(79, 24, 9, 0, 'Creating a template row');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(78, 24, 6, 0, 'Creating a template row');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(84, 25, 9, 0, 'Page template creation');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(83, 25, 6, 0, 'Page template creation');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(103, 29, 6, 0, 'Page status after publication');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(132, 34, 9, 4, 'r34_9_row-drag-and-drop-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(144, 37, 9, 0, 'News module help');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(143, 37, 6, 0, 'News module help');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(149, 38, 9, 0, 'Contextual help');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(148, 38, 6, 0, 'Contextual help');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(161, 40, 9, 2, '0');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(16, 4, 4, 0, 'r4_4_automne_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(15, 4, 1, 0, 'Release of Automne 4  ');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(136, 35, 9, 2, '0.62');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(44, 17, 9, 0, 'Publication management');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(43, 17, 6, 0, 'Publication management');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(18, 4, 4, 2, 'r4_4_automne.jpg');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(153, 39, 6, 0, 'Search results');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(158, 40, 6, 0, 'Disabled forms module admin');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(159, 40, 9, 0, 'Disabled forms module admin');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(151, 38, 9, 2, '0.06');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(152, 38, 9, 4, 'r38_9_contextual_help-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(146, 37, 9, 2, '0.18');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(147, 37, 9, 4, 'r37_9_polymod_help-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(137, 35, 9, 4, 'r35_9_automne4-interface-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(128, 34, 6, 0, 'Content row drag-and-drop');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(107, 29, 9, 4, 'r29_9_page_status-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(102, 28, 9, 4, 'r28_9_user_rights-3.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(97, 27, 9, 4, 'r27_9_user_creation-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(91, 26, 9, 2, '0.07');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(92, 26, 9, 4, 'r26_9_automne-sidebar-panel-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(86, 25, 9, 2, '0.12');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(87, 25, 9, 4, 'r25_9_creating-page-template-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(81, 24, 9, 2, '0.16');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(82, 24, 9, 4, 'r24_9_creating_row_template-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(46, 17, 9, 2, '0.03');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(47, 17, 9, 4, 'r17_9_publication_date-2.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(135, 35, 9, 1, 'r35_9_automne4-interface_thumbnail.png');
INSERT INTO `mod_subobject_string_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(133, 35, 6, 0, 'Automne 4 interface');

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

INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(4, 4, 2, 0, '<p>After months of developement, the brand new version of Automne is finally available.</p><p>This demo allows you to discover and test Automne features.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(5, 4, 3, 0, '<p>Automne 4 is open-source and it''s the result of many years of users feedback on the previous versions and took more than a year of developpment .&#160;The code was entirely rewritten to take advantage of PHP5&#160;possibilities and made use of the latest web technologies. The brand new administration interface is more intuitive, more ergonomic and more extensible. It was written with the help of the excellent <a target="_blank" href="http://extjs.com/"><strong>ExtJS</strong></a> library.</p> <h3>Automne 4 includes the following open-source softwares:</h3> <ul>     <li><a target="_blank" href="http://www.gscottolson.com/blackbirdjs/">Blackbird</a></li>     <li><a target="_blank" href="http://code.google.com/p/cssmin/">CSSMin</a> and <a target="_blank" href="http://www.crockford.com/javascript/jsmin.html">JSMin</a></li>     <li><a href="http://marijn.haverbeke.nl/codemirror/" target="_blank">Codemirror</a></li>     <li><a target="_blank" href="http://www.fckeditor.net/">FCKEditor</a><a target="_blank" href="http://www.crockford.com/javascript/jsmin.html"><br />     </a></li>     <li><a target="_blank" href="http://www.phpmyadmin.net/">phpMyAdmin</a></li>     <li><a href="http://github.com/jamespadolsey/prettyPrint.js" target="_blank">Pretty Print</a></li>     <li><a target="_blank" href="http://code.google.com/p/swfobject/">SWFObject</a><a target="_blank" href="http://swfupload.org/"><br />     </a></li>     <li><a target="_blank" href="http://framework.zend.com/">Zend Framework</a></li> </ul> <p>Thanks to this tools from the open-source community, we could easily add pratical functionnalities to Automne. We really want to thank all the authors for their work.</p><p>If you wish to start using Automne for your projects, you''ll find plenty of usefull information on the <a href="http://en.automne.ws">Automne website</a>.</p> <h3>About this demo</h3> <p>You can make your own idea on the features offered by Automne.&#160;You can edit pages and add content to the&#160; default modules. We also let you test the pulblication workflow.&#160;We haven''t provide complete admin access, so if you want to test a full-featured Automne, you better <a href="http://en.automne.ws/web/en/312-downloads.php">download and install it</a> on your server.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(12, 17, 7, 0, '<p>You can manage the resources publication process by giving a publication start date and a publication end date during the creation or the modification of a page or of a module element.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(19, 24, 7, 0, '<p>Creating a template row window in the templates admin section.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(20, 25, 7, 0, '<p>Creating page template window in the templates admin section.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(21, 26, 7, 0, '<p>The sidebar control panel give you acces to the modules management.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(22, 27, 7, 0, '<p>User creation window in the users administration.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(23, 28, 7, 0, '<p>Automne allows you to give very precise permissions on the sitemap and on the modules categories.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(24, 29, 7, 0, '<p>When you mouse over the page tab, all informations about the current status of the page are displayed.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(29, 34, 7, 0, '<p>You can drag and drop content rows to rearrange you content in the pages management module.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(30, 35, 7, 0, '<p>Interface of Automne 4 with the pages management module on the left and the sidebar control panel on the right</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(31, 36, 7, 0, '<p>Ecran de cr&eacute;ation d''une page.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(32, 37, 7, 0, '<p>Polymod rows syntax is available when you edit the XML&#160;code of a row.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(33, 38, 7, 0, '<p>Example of contextual help in the properties of a page on the robots field.</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(34, 39, 7, 0, '<p>Search results screen</p>');
INSERT INTO `mod_subobject_text_edited` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(35, 40, 7, 0, '<p>Forms module admin is disabled on the demo.</p>');

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

INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(12, 17, 7, 0, '<p>You can manage the resources publication process by giving a publication start date and a publication end date during the creation or the modification of a page or of a module element.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(30, 35, 7, 0, '<p>Interface of Automne 4 with the pages management module on the left and the sidebar control panel on the right</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(19, 24, 7, 0, '<p>Creating a template row window in the templates admin section.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(20, 25, 7, 0, '<p>Creating page template window in the templates admin section.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(21, 26, 7, 0, '<p>The sidebar control panel give you acces to the modules management.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(22, 27, 7, 0, '<p>User creation window in the users administration.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(24, 29, 7, 0, '<p>When you mouse over the page tab, all informations about the current status of the page are displayed.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(29, 34, 7, 0, '<p>You can drag and drop content rows to rearrange you content in the pages management module.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(23, 28, 7, 0, '<p>Automne allows you to give very precise permissions on the sitemap and on the modules categories.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(31, 36, 7, 0, '<p>Ecran de cr&eacute;ation d''une page.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(32, 37, 7, 0, '<p>Polymod rows syntax is available when you edit the XML&#160;code of a row.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(33, 38, 7, 0, '<p>Example of contextual help in the properties of a page on the robots field.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(34, 39, 7, 0, '<p>Search results screen</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(35, 40, 7, 0, '<p>Forms module admin is disabled on the demo.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(4, 4, 2, 0, '<p>After months of developement, the brand new version of Automne is finally available.</p><p>This demo allows you to discover and test Automne features.</p>');
INSERT INTO `mod_subobject_text_public` (`id`, `objectID`, `objectFieldID`, `objectSubFieldID`, `value`) VALUES(5, 4, 3, 0, '<p>Automne 4 is open-source and it''s the result of many years of users feedback on the previous versions and took more than a year of developpment .&#160;The code was entirely rewritten to take advantage of PHP5&#160;possibilities and made use of the latest web technologies. The brand new administration interface is more intuitive, more ergonomic and more extensible. It was written with the help of the excellent <a target="_blank" href="http://extjs.com/"><strong>ExtJS</strong></a> library.</p> <h3>Automne 4 includes the following open-source softwares:</h3> <ul>     <li><a target="_blank" href="http://www.gscottolson.com/blackbirdjs/">Blackbird</a></li>     <li><a target="_blank" href="http://code.google.com/p/cssmin/">CSSMin</a> and <a target="_blank" href="http://www.crockford.com/javascript/jsmin.html">JSMin</a></li>     <li><a href="http://marijn.haverbeke.nl/codemirror/" target="_blank">Codemirror</a></li>     <li><a target="_blank" href="http://www.fckeditor.net/">FCKEditor</a><a target="_blank" href="http://www.crockford.com/javascript/jsmin.html"><br />     </a></li>     <li><a target="_blank" href="http://www.phpmyadmin.net/">phpMyAdmin</a></li>     <li><a href="http://github.com/jamespadolsey/prettyPrint.js" target="_blank">Pretty Print</a></li>     <li><a target="_blank" href="http://code.google.com/p/swfobject/">SWFObject</a><a target="_blank" href="http://swfupload.org/"><br />     </a></li>     <li><a target="_blank" href="http://framework.zend.com/">Zend Framework</a></li> </ul> <p>Thanks to this tools from the open-source community, we could easily add pratical functionnalities to Automne. We really want to thank all the authors for their work.</p><p>If you wish to start using Automne for your projects, you''ll find plenty of usefull information on the <a href="http://en.automne.ws">Automne website</a>.</p> <h3>About this demo</h3> <p>You can make your own idea on the features offered by Automne.&#160;You can edit pages and add content to the&#160; default modules. We also let you test the pulblication workflow.&#160;We haven''t provide complete admin access, so if you want to test a full-featured Automne, you better <a href="http://en.automne.ws/web/en/312-downloads.php">download and install it</a> on your server.</p>');

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
  PRIMARY KEY  (`id_pag`),
  KEY `template_pag` (`template_pag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(1, 1, '', '2008-10-31', 1, '2010-06-02 16:25:48', '1-demo-automne.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(2, 40, '1', '2008-10-31', 57, '2010-06-02 16:25:46', '2-accueil.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(3, 41, '1', '2008-11-03', 59, '2010-06-02 16:25:45', '3-presentation.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(5, 43, '1', '2008-11-03', 61, '2010-06-02 16:25:43', '5-news.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(6, 44, '1', '2008-11-03', 62, '2010-06-02 16:25:42', '6-mediacenter.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(7, 45, '', '2008-11-03', 63, '0000-00-00 00:00:00', '7-bas-de-page.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(8, 46, '1;1', '2008-11-03', 64, '2010-06-02 16:25:40', '8-sitemap.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(9, 47, '1', '2008-11-03', 65, '2010-06-02 16:25:39', '9-contact.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(17, 58, '', '2008-11-14', 73, '0000-00-00 00:00:00', '');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(18, 59, '', '2008-11-14', 74, '2008-11-14 16:54:55', '18-test.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(38, 108, '1', '2009-03-04', 95, '2010-06-02 16:25:18', '38-help.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(24, 80, '1', '2009-02-03', 81, '2010-06-02 16:25:37', '24-features.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(25, 81, '1', '2009-02-03', 82, '2010-06-02 16:25:36', '25-page-templates.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(26, 82, '1', '2009-02-03', 83, '2010-06-02 16:25:34', '26-content-rows.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(27, 83, '1', '2009-02-03', 84, '2010-06-02 16:25:33', '27-modules.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(28, 84, '1', '2009-02-03', 85, '2010-06-02 16:25:31', '28-users-management.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(29, 85, '1', '2009-02-04', 86, '2010-06-02 16:25:30', '29-automne-v4.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(30, 86, '1', '2009-02-04', 87, '2010-06-02 16:25:28', '30-requirements.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(31, 87, '1', '2009-02-04', 88, '2010-06-02 16:25:27', '31-modules-examples.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(33, 89, '1', '2009-02-04', 90, '2010-06-02 16:25:25', '33-new-features.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(34, 90, '1', '2009-02-04', 91, '2010-06-02 16:25:23', '34-advanced-features.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(35, 91, '1', '2009-02-04', 92, '2010-06-02 16:25:21', '35-rights-management.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(36, 92, '1', '2009-03-02', 93, '2010-06-02 16:25:20', '36-forms.php');
INSERT INTO `pages` (`id_pag`, `resource_pag`, `remindedEditorsStack_pag`, `lastReminder_pag`, `template_pag`, `lastFileCreation_pag`, `url_pag`) VALUES(37, 93, '1', '2009-03-02', 94, '2010-06-02 16:25:18', '37-publication-workflow.php');

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
  `codename_pbd` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

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
  `codename_pbd` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

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
  `codename_pbd` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`),
  FULLTEXT KEY `title_pbd` (`title_pbd`,`linkTitle_pbd`,`keywords_pbd`,`description_pbd`,`codename_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_edited`
--

INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(1, 1, 'Automne Demo EN', 'Automne Demo EN', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '1|2|||_top|||', 0, '', '', 'root');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(20, 2, 'Automne version 4, a taste of simplicity', 'Home', 'automne, CMS, ECM, content management system, modules, PHP, Zend, ExtJS, ws-interactive', 'Automne is an open-source content management system that suits to your needs.', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '0||||_top|||', 0, '', '', 'home');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(21, 3, 'Presentation', 'Presentation', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(23, 5, 'News', 'News', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'news');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(24, 6, 'Mediacenter', 'Mediacenter', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'media');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(25, 7, 'Footer', 'Footer', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '0|||||||', 0, '', '', 'footer');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(26, 8, 'Sitemap', 'Sitemap', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(27, 9, 'Contact', 'Contact', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '0', '', '0|||||||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(54, 38, 'Help', 'Help', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(40, 24, 'Features', 'Features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(41, 25, 'Page Templates', 'Templates', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(42, 26, 'Content rows', 'Rows', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(43, 27, 'Modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(44, 28, 'Users management', 'Users management', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(45, 29, 'Automne', 'Automne', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(46, 30, 'Requirements', 'Requirements', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(47, 31, 'Modules examples', 'Modules examples', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(49, 33, 'New features', 'New features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(50, 34, 'Advanced features', 'Advanced features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(51, 35, 'Rights management', 'Rights management', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(52, 36, 'Forms', 'Forms', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|9|||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_edited` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(53, 37, 'Publication workflow', 'Publication workflow', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');

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
  `codename_pbd` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_pbd`),
  KEY `page_pbd` (`page_pbd`),
  FULLTEXT KEY `title_pbd` (`title_pbd`,`linkTitle_pbd`,`keywords_pbd`,`description_pbd`,`codename_pbd`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pagesBaseData_public`
--

INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(1, 1, 'Automne Demo EN', 'Automne Demo EN', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '1|2|||_top|||', 0, '', '', 'root');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(20, 2, 'Automne version 4, a taste of simplicity', 'Home', 'automne, CMS, ECM, content management system, modules, PHP, Zend, ExtJS, ws-interactive', 'Automne is an open-source content management system that suits to your needs.', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '0||||_top|||', 0, '', '', 'home');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(21, 3, 'Presentation', 'Presentation', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(23, 5, 'News', 'News', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'news');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(24, 6, 'Mediacenter', 'Mediacenter', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '', 'media');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`, `codename_pbd`) VALUES(25, 7, 'Footer', 'Footer', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '', '', '0|||||||', 0, '', '', 'footer');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(26, 8, 'Sitemap', 'Sitemap', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(27, 9, 'Contact', 'Contact', '', '', 0, '0000-00-00', '', '', '', '', '', 'en', '', '0', '', '0|||||||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(54, 38, 'Help', 'Help', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(42, 26, 'Content rows', 'Rows', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(40, 24, 'Features', 'Features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(43, 27, 'Modules', 'Modules', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(44, 28, 'Users management', 'Users management', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(45, 29, 'Automne', 'Automne', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0|||||||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(47, 31, 'Modules examples', 'Modules examples', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(49, 33, 'New features', 'New features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(41, 25, 'Page Templates', 'Templates', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(51, 35, 'Rights management', 'Rights management', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(52, 36, 'Forms', 'Forms', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '1|9|||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(53, 37, 'Publication workflow', 'Publication workflow', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(50, 34, 'Advanced features', 'Advanced features', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');
INSERT INTO `pagesBaseData_public` (`id_pbd`, `page_pbd`, `title_pbd`, `linkTitle_pbd`, `keywords_pbd`, `description_pbd`, `reminderPeriodicity_pbd`, `reminderOn_pbd`, `reminderOnMessage_pbd`, `category_pbd`, `author_pbd`, `replyto_pbd`, `copyright_pbd`, `language_pbd`, `robots_pbd`, `pragma_pbd`, `refresh_pbd`, `redirect_pbd`, `refreshUrl_pbd`, `url_pbd`, `metas_pbd`) VALUES(46, 30, 'Requirements', 'Requirements', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', '0||||_top|||', 0, '', '');

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

INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(1, 'Splash', 'en', '', 'splash.xml', 0, 0, 'nopicto.gif', 0, '', 'Empty template. Usually used for the redirection pages.', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(2, 'Exemple', 'en', 'standard', 'example.xml', 0, 0, 'nopicto.gif', 0, '', 'Modèle d''exemple. Comporte les différents tags Automne disponibles pour la création d''un modèle de page.', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(56, 'Demo home', 'en', 'standard', 'home.xml', 0, 0, 'accueil.jpg', 0, 'first;second', 'Template for the homepage of the Automne demo', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(57, 'Demo home', 'en', 'standard', 'home.xml', 0, 1, 'accueil.jpg', 0, 'first;second', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(58, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 0, 'interieur-vert.jpg', 1, 'first', 'Inner pages template for the demo', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(59, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(60, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(61, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(62, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(63, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(64, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(65, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(66, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', '', '');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(67, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(68, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(69, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(70, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(71, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(72, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(73, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(74, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(75, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(76, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(77, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(78, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(79, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(95, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(81, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(82, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(83, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(84, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(85, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(86, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(87, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(88, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(89, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(90, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(91, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(92, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(93, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');
INSERT INTO `pageTemplates` (`id_pt`, `label_pt`, `groupsStack_pt`, `modulesStack_pt`, `definitionFile_pt`, `creator_pt`, `private_pt`, `image_pt`, `inUse_pt`, `printingCSOrder_pt`, `description_pt`, `websitesdenied_pt`) VALUES(94, 'Inner Demo', 'en', 'standard', 'inner.xml', 0, 1, 'interieur-vert.jpg', 0, 'first', 'Modèles des pages intérieures du site français.', '1');

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
  `dn_pru` varchar(255) NOT NULL default '',
  `active_pru` tinyint(4) NOT NULL default '0',
  `deleted_pru` tinyint(4) unsigned NOT NULL default '0',
  `alerts_pru` text NOT NULL,
  `favorites_pru` text NOT NULL,
  PRIMARY KEY  (`id_pru`),
  KEY `ldapDN_pru` (`dn_pru`),
  FULLTEXT KEY `login_pru` (`login_pru`,`firstName_pru`,`lastName_pru`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `profilesUsers`
--

INSERT INTO `profilesUsers` (`id_pru`, `login_pru`, `password_pru`, `firstName_pru`, `lastName_pru`, `contactData_pru`, `profile_pru`, `language_pru`, `dn_pru`, `active_pru`, `deleted_pru`, `alerts_pru`, `favorites_pru`) VALUES(1, 'root', '{sha}38f5e2ad12977a6100562dd369aba61aee589454', '', 'Super Administrator', 1, 1, 'en', '', 1, 0, 'standard,7;pnews,1;pmedia,1', '');
INSERT INTO `profilesUsers` (`id_pru`, `login_pru`, `password_pru`, `firstName_pru`, `lastName_pru`, `contactData_pru`, `profile_pru`, `language_pru`, `dn_pru`, `active_pru`, `deleted_pru`, `alerts_pru`, `favorites_pru`) VALUES(3, 'anonymous', '{sha}0a92fab3230134cca6eadd9898325b9b2ae67998', '', 'Anonymous User', 3, 3, 'en', '', 1, 0, '', '');

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
  `dn_prg` varchar(255) NOT NULL default '',
  `invertdn_prg` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id_prg`),
  KEY `ldapDN_prg` (`dn_prg`),
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(1, 1, 0, 0, 0, 2, '2010-05-27', '0000-00-00', '2008-10-31', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(40, 1, 0, 0, 0, 2, '2008-10-31', '0000-00-00', '2008-10-31', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(41, 1, 0, 0, 0, 2, '2008-11-03', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(42, 3, 0, 0, 0, 1, '2008-11-03', '2009-03-01', '2008-11-03', '2009-03-01');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(43, 1, 0, 0, 0, 2, '2008-11-03', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(44, 1, 0, 0, 0, 2, '2008-11-03', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(45, 1, 0, 0, 0, 1, '2008-11-03', '2008-11-02', '2008-11-03', '2008-11-02');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(46, 1, 0, 0, 0, 2, '2008-11-03', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(47, 1, 0, 0, 0, 2, '2008-11-03', '0000-00-00', '2008-11-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(48, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(49, 1, 0, 0, 0, 2, '2008-11-05', '0000-00-00', '2008-11-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(50, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-07', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(51, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-07', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(52, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(53, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(54, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(55, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(56, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(57, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-12', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(58, 3, 0, 1, 0, 0, '2008-11-14', '0000-00-00', '2008-11-14', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(59, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2008-11-14', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(60, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(61, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(62, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(63, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(64, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-11-21', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(65, 3, 0, 3, 0, 0, '2008-11-29', '0000-00-00', '2008-11-29', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(66, 3, 0, 3, 0, 0, '2008-11-29', '2008-11-30', '2008-11-29', '2008-11-30');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(67, 3, 0, 1, 0, 0, '2008-11-29', '0000-00-00', '2008-11-29', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(68, 3, 0, 2, 0, 0, '2008-11-29', '2008-12-01', '2008-11-29', '2008-12-01');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(69, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2008-12-19', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(70, 3, 0, 1, 0, 0, '2008-12-23', '0000-00-00', '2008-12-23', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(71, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(72, 3, 0, 2, 0, 0, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(73, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(74, 3, 0, 3, 3, 0, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(75, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(76, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(77, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(78, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(79, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(80, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(81, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(82, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(83, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(84, 1, 0, 0, 0, 2, '2009-02-03', '0000-00-00', '2009-02-03', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(85, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(86, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(87, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(88, 3, 0, 0, 0, 1, '2010-05-27', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(89, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(90, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(91, 1, 0, 0, 0, 2, '2009-02-04', '0000-00-00', '2009-02-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(92, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(93, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(94, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(95, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(96, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(97, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(98, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(99, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(100, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(101, 1, 0, 0, 0, 2, '2009-03-02', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(102, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-02', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(103, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(104, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(105, 3, 0, 2, 0, 1, '2010-05-27', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(106, 1, 0, 0, 0, 2, '2009-03-04', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(107, 1, 0, 0, 0, 2, '2009-03-04', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(108, 1, 0, 0, 0, 2, '2009-03-04', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(109, 1, 0, 0, 0, 2, '2010-05-27', '0000-00-00', '2009-03-04', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(110, 1, 0, 0, 0, 2, '2009-03-05', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(111, 1, 0, 0, 0, 2, '2009-03-05', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(112, 1, 0, 0, 0, 2, '2009-03-05', '0000-00-00', '2009-03-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(113, 1, 0, 0, 0, 2, '2010-05-28', '0000-00-00', '2010-05-28', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(114, 3, 0, 2, 0, 0, '2008-11-05', '0000-00-00', '2008-11-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(115, 3, 0, 2, 0, 0, '2008-11-05', '0000-00-00', '2008-11-05', '0000-00-00');
INSERT INTO `resourceStatuses` (`id_rs`, `location_rs`, `proposedFor_rs`, `editions_rs`, `validationsRefused_rs`, `publication_rs`, `publicationDateStart_rs`, `publicationDateEnd_rs`, `publicationDateStartEdited_rs`, `publicationDateEndEdited_rs`) VALUES(116, 3, 0, 2, 0, 0, '2009-06-23', '0000-00-00', '2009-06-23', '0000-00-00');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `403_web` INT( 11 ) UNSIGNED NOT NULL,
  `404_web` INT( 11 ) UNSIGNED NOT NULL,
  PRIMARY KEY  (`id_web`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `websites`
--

INSERT INTO `websites` (`id_web`, `codename_web`, `label_web`, `url_web`, `altdomains_web`, `root_web`, `keywords_web`, `description_web`, `category_web`, `author_web`, `replyto_web`, `copyright_web`, `language_web`, `robots_web`, `favicon_web`, `metas_web`, `order_web`) VALUES(1, 'root', 'Main website', '127.0.0.1', '', 1, '', '', '', '', '', '', 'en', '', '/favicon.ico', '', 1);
INSERT INTO `websites` (`id_web`, `codename_web`, `label_web`, `url_web`, `altdomains_web`, `root_web`, `keywords_web`, `description_web`, `category_web`, `author_web`, `replyto_web`, `copyright_web`, `language_web`, `robots_web`, `favicon_web`, `metas_web`, `order_web`) VALUES(2, 'demo', 'Demonstration website', '127.0.0.1', '', 2, '', '', '', '', '', '', 'en', '', '', '', 2);
