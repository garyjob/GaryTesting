# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             justin_loh
# Server version:       5.0.67-community-nt
# Server OS:            Win32
# Target-Compatibility: Same as source server (MySQL 5.0.67-community-nt)
# max_allowed_packet:   1048576
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/;


DROP TABLE IF EXISTS `jos_banner`;

#
# Table structure for table 'jos_banner'
#

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_banner'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bannerclient`;

#
# Table structure for table 'jos_bannerclient'
#

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bannerclient'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bannertrack`;

#
# Table structure for table 'jos_bannertrack'
#

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bannertrack'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_auct_payments`;

#
# Table structure for table 'jos_bid_auct_payments'
#

CREATE TABLE `jos_bid_auct_payments` (
  `id` int(11) NOT NULL auto_increment,
  `auct` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_auct_payments'
#

LOCK TABLES `jos_bid_auct_payments` WRITE;
/*!40000 ALTER TABLE `jos_bid_auct_payments` DISABLE KEYS*/;
INSERT INTO `jos_bid_auct_payments` (`id`, `auct`, `payment`) VALUES
	(3,1,2),
	(4,1,4),
	(6,2,2),
	(8,3,4),
	(9,4,2),
	(10,5,1),
	(11,5,2),
	(12,5,3),
	(13,5,4),
	(14,6,4);
/*!40000 ALTER TABLE `jos_bid_auct_payments` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_auctions`;

#
# Table structure for table 'jos_bid_auctions'
#

CREATE TABLE `jos_bid_auctions` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `shortdescription` text,
  `description` text NOT NULL,
  `picture` varchar(50) NOT NULL default '',
  `link_extern` text NOT NULL,
  `initial_price` varchar(200) NOT NULL default '0',
  `currency` int(1) NOT NULL default '0',
  `BIN_price` varchar(200) NOT NULL default '0',
  `auction_type` int(11) NOT NULL default '0',
  `automatic` int(1) default '1',
  `payment` int(11) NOT NULL default '0',
  `shipment_info` text,
  `shipment_price` varchar(100) default '0',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `closed_date` date NOT NULL default '0000-00-00',
  `params` text NOT NULL,
  `published` tinyint(4) NOT NULL default '0',
  `close_offer` int(11) NOT NULL default '0',
  `close_by_admin` int(11) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `newmessages` int(1) default '1',
  `winner_id` int(11) NOT NULL default '0',
  `cat` int(11) NOT NULL default '0',
  `auction_nr` varchar(12) default NULL,
  `nr_items` int(11) default NULL,
  `nr_items_left` int(11) default NULL,
  `featured` enum('gold','silver','bronze','none') default 'none',
  `reserve_price` varchar(200) default NULL,
  `min_increase` varchar(100) default '0',
  `extended_counter` int(11) NOT NULL default '0',
  `payment_info` text NOT NULL,
  `quantity` int(11) default '1',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`),
  KEY `iAuctionNr` (`auction_nr`),
  KEY `ititle` (`title`),
  KEY `ifeatured` (`featured`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_auctions'
#

LOCK TABLES `jos_bid_auctions` WRITE;
/*!40000 ALTER TABLE `jos_bid_auctions` DISABLE KEYS*/;
INSERT INTO `jos_bid_auctions` (`id`, `userid`, `title`, `shortdescription`, `description`, `picture`, `link_extern`, `initial_price`, `currency`, `BIN_price`, `auction_type`, `automatic`, `payment`, `shipment_info`, `shipment_price`, `start_date`, `end_date`, `closed_date`, `params`, `published`, `close_offer`, `close_by_admin`, `hits`, `modified`, `newmessages`, `winner_id`, `cat`, `auction_nr`, `nr_items`, `nr_items_left`, `featured`, `reserve_price`, `min_increase`, `extended_counter`, `payment_info`, `quantity`) VALUES
	(1,62,'This is an item for auction','This is a short description','<p>This is a long description</p>','1_01.jpg.jpg','','1000',1,'100',1,0,0,'Only in Singapore','100','2011-04-13 00:00:00','2011-04-14 00:00:00','2011-04-13','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,11,'2011-04-13 14:33:18',0,63,0,'130267623594',NULL,NULL,'none','0','10',0,'<p>This is the additional payment info</p>',-1),
	(2,62,'any price buy','This is a short one','<p>This is my tag</p>','','','100',1,'',1,0,0,'','','2011-04-13 00:00:00','0000-00-00 00:00:00','2011-04-13','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,10,'2011-04-13 15:32:02',0,63,0,'130267950086',NULL,NULL,'none','','10',0,'<p>additional payment info</p>',1),
	(3,62,'Main Menu','This is a short one','<p>123456</p>','','','1000',1,'',1,0,0,'','','2011-04-13 00:00:00','0000-00-00 00:00:00','2011-04-13','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,5,'2011-04-13 15:52:00',0,63,2,'130268075323',NULL,NULL,'none','','10',0,'',1),
	(4,62,'any price buy','This is a short one','<p>This is my tag</p>','','','100',1,'0',1,0,0,'','0','2011-04-13 00:00:00','2011-04-22 00:00:00','2011-04-14','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,4,'2011-04-14 14:06:24',0,63,1,'130268177179',NULL,NULL,'none','0','10',0,'<p>additional payment info</p>',0),
	(5,62,'ipad 4 for sale','ipad for sale','<p>This is the latest iPad available for sales. Buy it while stocks last. I only have 4 pieces of this</p>','','','150',1,'',1,0,0,'','','2011-04-16 00:00:00','2011-04-29 00:00:00','2011-04-17','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,16,'2011-04-16 16:16:21',0,63,2,'130294178162',NULL,NULL,'none','','10',0,'',1),
	(6,62,'Title ','short description','<p>Full description</p>','6_01.jpg.jpg','','100',1,'0',1,0,0,'','0','2011-04-26 00:00:00','2011-05-02 00:00:00','2011-04-29','picture=1\nadd_picture=1\nauto_accept_bin=1\nbid_counts=1\nmax_price=1\nshow_reserve=0\nprice_suggest=0\nprice_suggest_min=\n',1,1,0,8,'2011-04-29 18:32:04',0,63,2,'130379435951',NULL,NULL,'none','0','10',0,'<p>Pay when you buy</p>',0);
/*!40000 ALTER TABLE `jos_bid_auctions` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_balance`;

#
# Table structure for table 'jos_bid_balance'
#

CREATE TABLE `jos_bid_balance` (
  `id` int(11) NOT NULL auto_increment,
  `auctioneer` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `last_pay` datetime NOT NULL,
  `currency` int(1) default NULL,
  `sent_message` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_balance'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_categories`;

#
# Table structure for table 'jos_bid_categories'
#

CREATE TABLE `jos_bid_categories` (
  `id` int(11) NOT NULL auto_increment,
  `catname` varchar(100) NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `hash` varchar(32) NOT NULL default '',
  `ordering` int(11) default NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `ihash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_categories'
#

LOCK TABLES `jos_bid_categories` WRITE;
/*!40000 ALTER TABLE `jos_bid_categories` DISABLE KEYS*/;
INSERT INTO `jos_bid_categories` (`id`, `catname`, `parent`, `hash`, `ordering`, `description`, `status`) VALUES
	(1,'Category 1',0,'379c0f897db0fa7e004f65f52cce2e75',NULL,'This is a description for category 1',1),
	(2,'Category 2',0,'569debe8b660e3a92017e93574cf456f',NULL,'This is a description for category 2',1),
	(3,'sub cat 1',1,'52128b1d073b71f2faf76d595ecaebf8',NULL,'',1),
	(4,'sub cat 2',1,'400ef5461eb63d3ab51cd7100b4b657d',NULL,'',1),
	(5,'sub sub cat',4,'1cb7227c8b87073745f181964ad35f41',NULL,'',1),
	(6,'sub sub cat 2',4,'749c4b635a9f836ba6d6c6fdc66b4c1a',NULL,'',1);
/*!40000 ALTER TABLE `jos_bid_categories` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_categories_sef`;

#
# Table structure for table 'jos_bid_categories_sef'
#

CREATE TABLE `jos_bid_categories_sef` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL,
  `categories` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_categories_sef'
#

LOCK TABLES `jos_bid_categories_sef` WRITE;
/*!40000 ALTER TABLE `jos_bid_categories_sef` DISABLE KEYS*/;
INSERT INTO `jos_bid_categories_sef` (`id`, `catid`, `categories`) VALUES
	(1,1,'category-1'),
	(2,2,'category-2'),
	(3,3,'category-1\r\nsub-cat-1'),
	(4,4,'category-1\r\nsub-cat-2'),
	(5,5,'category-1\r\nsub-cat-2\r\nsub-sub-cat'),
	(6,6,'category-1\r\nsub-cat-2\r\nsub-sub-cat-2');
/*!40000 ALTER TABLE `jos_bid_categories_sef` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_cbfields`;

#
# Table structure for table 'jos_bid_cbfields'
#

CREATE TABLE `jos_bid_cbfields` (
  `id` int(11) NOT NULL auto_increment,
  `field` varchar(50) default NULL,
  `cb_field` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_cbfields'
#

LOCK TABLES `jos_bid_cbfields` WRITE;
/*!40000 ALTER TABLE `jos_bid_cbfields` DISABLE KEYS*/;
INSERT INTO `jos_bid_cbfields` (`id`, `field`, `cb_field`) VALUES
	(1,'country',''),
	(2,'city',''),
	(3,'isBidder',''),
	(4,'isSeller',''),
	(5,'verified',''),
	(6,'powerseller',''),
	(7,'paymentparam','');
/*!40000 ALTER TABLE `jos_bid_cbfields` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_comissions`;

#
# Table structure for table 'jos_bid_comissions'
#

CREATE TABLE `jos_bid_comissions` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `auction_id` int(11) default NULL,
  `bid_id` int(11) NOT NULL,
  `comission_date` datetime default NULL,
  `amount` varchar(200) default NULL,
  `currency` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ixuserid` (`userid`),
  KEY `ixauctionid` (`auction_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_comissions'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_country`;

#
# Table structure for table 'jos_bid_country'
#

CREATE TABLE `jos_bid_country` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '',
  `simbol` char(3) NOT NULL default '',
  `active` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_country'
#

LOCK TABLES `jos_bid_country` WRITE;
/*!40000 ALTER TABLE `jos_bid_country` DISABLE KEYS*/;
INSERT INTO `jos_bid_country` (`id`, `name`, `simbol`, `active`) VALUES
	(4,'AFGHANISTAN','AF',1),
	(5,'ALAND ISLANDS','AX',0),
	(6,'ALBANIA','AL',1),
	(7,'ALGERIA','DZ',0),
	(8,'AMERICAN SAMOA','AS',0),
	(9,'ANDORRA','AD',0),
	(10,'ANGOLA','AO',0),
	(11,'ANGUILLA','AI',0),
	(12,'ANTARCTICA','AQ',0),
	(13,'ANTIGUA AND BARBUDA','AG',0),
	(14,'ARGENTINA','AR',0),
	(15,'ARMENIA','AM',0),
	(16,'ARUBA','AW',0),
	(17,'AUSTRALIA','AU',1),
	(18,'AUSTRIA','AT',1),
	(19,'AZERBAIJAN','AZ',0),
	(20,'BAHAMAS','BS',0),
	(21,'BAHRAIN','BH',0),
	(22,'BANGLADESH','BD',0),
	(23,'BARBADOS','BB',0),
	(24,'BELARUS','BY',0),
	(25,'BELGIUM','BE',0),
	(26,'BELIZE','BZ',0),
	(27,'BENIN','BJ',0),
	(28,'BERMUDA','BM',0),
	(29,'BHUTAN','BT',0),
	(30,'BOLIVIA','BO',0),
	(31,'BOSNIA AND HERZEGOVINA','BA',0),
	(32,'BOTSWANA','BW',0),
	(33,'BOUVET ISLAND','BV',0),
	(34,'BRAZIL','BR',0),
	(35,'BRITISH INDIAN OCEAN TERRITORY','IO',0),
	(36,'BRUNEI DARUSSALAM','BN',0),
	(37,'BULGARIA','BG',0),
	(38,'BURKINA FASO','BF',0),
	(39,'BURUNDI','BI',0),
	(40,'CAMBODIA','KH',0),
	(41,'CAMEROON','CM',0),
	(42,'CANADA','CA',0),
	(43,'CAPE VERDE','CV',0),
	(44,'CAYMAN ISLANDS','KY',0),
	(45,'CENTRAL AFRICAN REPUBLIC','CF',0),
	(46,'CHAD','TD',0),
	(47,'CHILE','CL',0),
	(48,'CHINA','CN',0),
	(49,'CHRISTMAS ISLAND','CX',0),
	(50,'COCOS (KEELING) ISLANDS','CC',0),
	(51,'COLOMBIA','CO',0),
	(52,'COMOROS','KM',0),
	(53,'CONGO','CG',0),
	(54,'CONGO,THE DEMOCRATIC REPUBLIC OF THE','CD',0),
	(55,'COOK ISLANDS','CK',0),
	(56,'COSTA RICA','CR',0),
	(57,'CROATIA','HR',0),
	(58,'CUBA','CU',0),
	(59,'CYPRUS','CY',0),
	(60,'CZECH REPUBLIC','CZ',0),
	(61,'DENMARK','DK',0),
	(62,'DJIBOUTI','DJ',0),
	(63,'DOMINICA','DM',0),
	(64,'DOMINICAN REPUBLIC','DO',0),
	(65,'ECUADOR','EC',0),
	(66,'EGYPT','EG',0),
	(67,'EL SALVADOR','SV',0),
	(68,'EQUATORIAL GUINEA','GQ',0),
	(69,'ERITREA','ER',0),
	(70,'ESTONIA','EE',0),
	(71,'ETHIOPIA','ET',0),
	(72,'FALKLAND ISLANDS (MALVINAS)','FK',0),
	(73,'FAROE ISLANDS','FO',0),
	(74,'FIJI','FJ',0),
	(75,'FINLAND','FI',0),
	(76,'FRANCE','FR',1),
	(77,'FRENCH GUIANA','GF',1),
	(78,'FRENCH POLYNESIA','PF',0),
	(79,'FRENCH SOUTHERN TERRITORIES','TF',0),
	(80,'GABON','GA',0),
	(81,'GAMBIA','GM',0),
	(82,'GEORGIA','GE',0),
	(83,'GERMANY','DE',1),
	(84,'GHANA','GH',0),
	(85,'GIBRALTAR','GI',0),
	(86,'GREECE','GR',0),
	(87,'GREENLAND','GL',0),
	(88,'GRENADA','GD',0),
	(89,'GUADELOUPE','GP',0),
	(90,'GUAM','GU',0),
	(91,'GUATEMALA','GT',0),
	(92,'GUERNSEY','GG',0),
	(93,'GUINEA','GN',0),
	(94,'GUINEA-BISSAU','GW',0),
	(95,'GUYANA','GY',0),
	(96,'HAITI','HT',0),
	(97,'HEARD ISLAND AND MCDONALD ISLANDS','HM',0),
	(98,'HONDURAS','HN',0),
	(99,'HONG KONG','HK',0),
	(100,'HUNGARY','HU',0),
	(101,'ICELAND','IS',0),
	(102,'INDIA','IN',0),
	(103,'INDONESIA','ID',0),
	(104,'IRAN, ISLAMIC REPUBLIC OF','IR',0),
	(105,'IRAQ','IQ',0),
	(106,'IRELAND','IE',0),
	(107,'ISLE OF MAN','IM',0),
	(108,'ISRAEL','IL',0),
	(109,'ITALY','IT',0),
	(110,'JAMAICA','JM',0),
	(111,'JAPAN','JP',0),
	(112,'JERSEY','JE',0),
	(113,'JORDAN','JO',0),
	(114,'KAZAKHSTAN','KZ',0),
	(115,'KENYA','KE',0),
	(116,'KIRIBATI','KI',0),
	(117,'KOREA, REPUBLIC OF','KR',0),
	(118,'KUWAIT','KW',0),
	(119,'KYRGYZSTAN','KG',0),
	(120,'LATVIA','LV',0),
	(121,'LEBANON','LB',0),
	(122,'LESOTHO','LS',0),
	(123,'LIBERIA','LR',0),
	(124,'LIBYAN ARAB JAMAHIRIYA','LY',0),
	(125,'LIECHTENSTEIN','LI',0),
	(126,'LITHUANIA','LT',0),
	(127,'LUXEMBOURG','LU',0),
	(128,'MACAO','MO',0),
	(129,'MACEDONI, THE FORMER YUGOSLAV REPUBLIC OF','MK',0),
	(130,'MADAGASCAR','MG',0),
	(131,'MALAWI','MW',0),
	(132,'MALAYSIA','MY',0),
	(133,'MALDIVES','MV',0),
	(134,'MALI','ML',0),
	(135,'MALTA','MT',0),
	(136,'MARSHALL ISLANDS','MH',0),
	(137,'MARTINIQUE','MQ',0),
	(138,'MAURITANIA','MR',0),
	(139,'MAURITIUS','MU',0),
	(140,'MAYOTTE','YT',0),
	(141,'MEXICO','MX',0),
	(142,'MICRONESIA, FEDERATED STATES OF','FM',0),
	(143,'MOLDOVA, REPUBLIC OF','MD',0),
	(144,'MONACO','MC',0),
	(145,'MONGOLIA','MN',0),
	(146,'MONTENEGRO','ME',0),
	(147,'MONTSERRAT','MS',0),
	(148,'MOROCCO','MA',0),
	(149,'MOZAMBIQUE','MZ',0),
	(150,'MYANMAR','MM',0),
	(151,'NAMIBIA','NA',0),
	(152,'NAURU','NR',0),
	(153,'NEPAL','NP',0),
	(154,'NETHERLANDS','NL',0),
	(155,'NETHERLANDS ANTILLES','AN',0),
	(156,'NEW CALEDONIA','NC',0),
	(157,'NEW ZEALAND','NZ',0),
	(158,'NICARAGUA','NI',0),
	(159,'NIGER','NE',0),
	(160,'NIGERIA','NG',0),
	(161,'NIUE','NU',0),
	(162,'NORFOLK ISLAND','NF',0),
	(163,'NORTHERN MARIANA ISLANDS','MP',0),
	(164,'NORWAY','NO',0),
	(165,'OMAN','OM',0),
	(166,'PAKISTAN','PK',0),
	(167,'PALAU','PW',0),
	(168,'PALESTINIAN TERRITORY, OCCUPIED','PS',0),
	(169,'PANAMA','PA',0),
	(170,'PAPUA NEW GUINEA','PG',0),
	(171,'PARAGUAY','PY',0),
	(172,'PERU','PE',0),
	(173,'PHILIPPINES','PH',0),
	(174,'PITCAIRN','PN',0),
	(175,'POLAND','PL',0),
	(176,'PORTUGAL','PT',0),
	(177,'PUERTO RICO','PR',0),
	(178,'QATAR','QA',0),
	(179,'REUNION','RE',0),
	(180,'ROMANIA','RO',1),
	(181,'RUSSIAN FEDERATION','RU',0),
	(182,'RWANDA','RW',0),
	(183,'SAINT HELENA','SH',0),
	(184,'SAINT KITTS AND NEVIS','KN',0),
	(185,'SAINT LUCIA','LC',0),
	(186,'SAINT PIERRE AND MIQUELON','PM',0),
	(187,'SAINT VINCENT AND THE GRENADINES','VC',0),
	(188,'SAMOA','WS',0),
	(189,'SAN MARINO','SM',0),
	(190,'SAO TOME AND PRINCIPE','ST',0),
	(191,'SAUDI ARABIA','SA',0),
	(192,'SENEGAL','SN',0),
	(193,'SERBIA','RS',0),
	(194,'SEYCHELLES','SC',0),
	(195,'SIERRA LEONE','SL',0),
	(196,'SINGAPORE','SG',0),
	(197,'SLOVAKIA','SK',0),
	(198,'SLOVENIA','SI',0),
	(199,'SOLOMON ISLANDS','SB',0),
	(200,'SOMALIA','SO',0),
	(201,'SOUTH AFRICA','ZA',0),
	(202,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS',0),
	(203,'SPAIN','ES',0),
	(204,'SRI LANKA','LK',0),
	(205,'SUDAN','SD',0),
	(206,'SURINAME','SR',0),
	(207,'SVALBARD AND JAN MAYEN','SJ',0),
	(208,'SWAZILAND','SZ',0),
	(209,'SWEDEN','SE',0),
	(210,'SWITZERLAND','CH',1),
	(211,'SYRIAN ARAB REPUBLIC','SY',0),
	(212,'TAIWAN, PROVINCE OF CHINA','TW',0),
	(213,'TAJIKISTAN','TJ',0),
	(214,'TANZANIA, UNITED REPUBLIC OF','TZ',0),
	(215,'THAILAND','TH',0),
	(216,'TIMOR-LESTE','TL',0),
	(217,'TOGO','TG',0),
	(218,'TOKELAU','TK',0),
	(219,'TONGA','TO',0),
	(220,'TRINIDAD AND TOBAGO','TT',0),
	(221,'TUNISIA','TN',0),
	(222,'TURKEY','TR',0),
	(223,'TURKMENISTAN','TM',0),
	(224,'TURKS AND CAICOS ISLANDS','TC',0),
	(225,'TUVALU','TV',0),
	(226,'UGANDA','UG',0),
	(227,'UKRAINE','UA',0),
	(228,'UNITED ARAB EMIRATES','AE',0),
	(229,'UNITED KINGDOM','GB',1),
	(230,'UNITED STATES','US',1),
	(231,'UNITED STATES MINOR OUTLYING ISLANDS','UM',0),
	(232,'URUGUAY','UY',0),
	(233,'UZBEKISTAN','UZ',0),
	(234,'VANUATU','VU',0),
	(235,'VATICAN CITY STATE (HOLY SEE)','VA',0),
	(236,'VENEZUELA','VE',0),
	(237,'VIET NAM','VN',0),
	(238,'VIRGIN ISLANDS, BRITISH','VG',0),
	(239,'VIRGIN ISLANDS, U.S.','VI',0),
	(240,'WALLIS AND FUTUNA','WF',0),
	(241,'WESTERN SAHARA','EH',0),
	(242,'YEMEN','YE',0),
	(243,'ZAMBIA','ZM',0),
	(244,'ZIMBABWE','ZW',0);
/*!40000 ALTER TABLE `jos_bid_country` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_credits`;

#
# Table structure for table 'jos_bid_credits'
#

CREATE TABLE `jos_bid_credits` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `credittype` varchar(50) default NULL,
  `amount` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ixuserid` (`userid`),
  KEY `ixcreit` (`credittype`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_credits'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_currency`;

#
# Table structure for table 'jos_bid_currency'
#

CREATE TABLE `jos_bid_currency` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_currency'
#

LOCK TABLES `jos_bid_currency` WRITE;
/*!40000 ALTER TABLE `jos_bid_currency` DISABLE KEYS*/;
INSERT INTO `jos_bid_currency` (`id`, `name`) VALUES
	(1,'USD'),
	(2,'AUD'),
	(3,'EUR'),
	(4,'RON');
/*!40000 ALTER TABLE `jos_bid_currency` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_custom_prices`;

#
# Table structure for table 'jos_bid_custom_prices'
#

CREATE TABLE `jos_bid_custom_prices` (
  `id` int(11) NOT NULL auto_increment,
  `category` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_type` enum('listing','commission') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_custom_prices'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_fields`;

#
# Table structure for table 'jos_bid_fields'
#

CREATE TABLE `jos_bid_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `db_name` varchar(100) NOT NULL,
  `field_id` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `ftype` varchar(150) NOT NULL,
  `compulsory` tinyint(1) NOT NULL,
  `validate_type` varchar(100) NOT NULL,
  `own_table` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `css_class` varchar(100) NOT NULL,
  `style_attr` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `has_options` int(11) NOT NULL default '0',
  `attributes` text NOT NULL,
  `params` text NOT NULL,
  `help` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_fields'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_fields_categories`;

#
# Table structure for table 'jos_bid_fields_categories'
#

CREATE TABLE `jos_bid_fields_categories` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_fields_categories'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_fields_options`;

#
# Table structure for table 'jos_bid_fields_options'
#

CREATE TABLE `jos_bid_fields_options` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_fields_options'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_fields_positions`;

#
# Table structure for table 'jos_bid_fields_positions'
#

CREATE TABLE `jos_bid_fields_positions` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_fields_positions'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_increment`;

#
# Table structure for table 'jos_bid_increment'
#

CREATE TABLE `jos_bid_increment` (
  `id` int(11) NOT NULL auto_increment,
  `min_bid` float(10,2) NOT NULL,
  `max_bid` float(10,2) NOT NULL,
  `value` float(10,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_increment'
#

LOCK TABLES `jos_bid_increment` WRITE;
/*!40000 ALTER TABLE `jos_bid_increment` DISABLE KEYS*/;
INSERT INTO `jos_bid_increment` (`id`, `min_bid`, `max_bid`, `value`) VALUES
	(1,'0.01','10','0.1'),
	(2,'10.01','25','0.5'),
	(3,'25.01','100','1'),
	(4,'100.01','150','2'),
	(5,'150.01','500','5'),
	(6,'500.01','1500','10'),
	(7,'1500.01','2500','20');
/*!40000 ALTER TABLE `jos_bid_increment` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_log`;

#
# Table structure for table 'jos_bid_log'
#

CREATE TABLE `jos_bid_log` (
  `id` int(11) NOT NULL auto_increment,
  `id_offer` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `id_proxy` int(11) NOT NULL default '0',
  `initial_bid` varchar(200) default NULL,
  `bid_price` varchar(200) NOT NULL default '0',
  `payment` int(11) NOT NULL default '0',
  `cancel` int(11) default NULL,
  `accept` tinyint(4) NOT NULL default '0',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `quantity` int(11) default '1',
  PRIMARY KEY  (`id`),
  KEY `id_offer` (`id_offer`),
  KEY `userid` (`userid`),
  KEY `ixbid_price` (`bid_price`)
) ENGINE=InnoDB AUTO_INCREMENT=10 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_log'
#

LOCK TABLES `jos_bid_log` WRITE;
/*!40000 ALTER TABLE `jos_bid_log` DISABLE KEYS*/;
INSERT INTO `jos_bid_log` (`id`, `id_offer`, `userid`, `id_proxy`, `initial_bid`, `bid_price`, `payment`, `cancel`, `accept`, `modified`, `quantity`) VALUES
	(1,1,63,0,'100','100',0,0,0,'2011-04-13 14:34:29',1),
	(2,2,63,1,'100','100',0,0,0,'2011-04-13 15:25:38',1),
	(3,2,63,0,'100','120',0,0,0,'2011-04-13 15:26:07',1),
	(4,2,64,0,'130','130',0,0,0,'2011-04-13 15:30:35',1),
	(5,3,63,0,'1100','1100',0,0,0,'2011-04-13 15:46:45',1),
	(6,3,63,0,'1100','1300',0,0,0,'2011-04-13 15:49:46',1),
	(7,4,63,0,'110','110',0,0,0,'2011-04-14 14:06:35',1),
	(8,5,63,0,'10000','10000',0,0,0,'2011-04-17 13:34:04',1),
	(9,6,63,0,'100','100',0,0,0,'2011-04-29 18:32:28',1);
/*!40000 ALTER TABLE `jos_bid_log` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_mails`;

#
# Table structure for table 'jos_bid_mails'
#

CREATE TABLE `jos_bid_mails` (
  `id` int(11) NOT NULL auto_increment,
  `mail_type` varchar(250) default NULL,
  `content` text,
  `subject` varchar(250) default NULL,
  `enabled` int(11) default '1',
  PRIMARY KEY  (`id`),
  KEY `mailtypes` (`mail_type`)
) ENGINE=InnoDB AUTO_INCREMENT=38 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_mails'
#

LOCK TABLES `jos_bid_mails` WRITE;
/*!40000 ALTER TABLE `jos_bid_mails` DISABLE KEYS*/;
INSERT INTO `jos_bid_mails` (`id`, `mail_type`, `content`, `subject`, `enabled`) VALUES
	(1,'terms_and_conditions','<p><strong>TERMS AND CONDITIONS</strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Thanks  <span style=\"text-decoration: underline;\">Bye</span></p>',NULL,1),
	(2,'new_message','<p>Dear %NAME%  %SURNAME%,  </p><p>&nbsp;You received a new reply to your bid regarding the Auction: &quot;%AUCTIONTITLE% &quot;</p><p> You can see the message here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','New message regarding Auction %AUCTIONTITLE%',1),
	(3,'new_bid','<p>Dear %NAME%  %SURNAME%,  </p><p>&nbsp;You received a new bid to your bid regarding the Auction: &quot;%AUCTIONTITLE% &quot;</p><p> You can see the bid here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster </p>','New bid on your Auction %AUCTIONTITLE%',1),
	(4,'bid_accepted','<p>Dear %NAME% %SURNAME%,  </p><p>&nbsp;Your Bid for the auction %AUCTIONTITLE% won!&nbsp;</p><p>Congratulations!!</p><p>&nbsp;</p><p>  You can get more details on the webpage  %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p>','Your Bid was accepted on the Auction %AUCTIONTITLE%',1),
	(5,'bid_lost','<p>Dear %NAME% %SURNAME%,</p><p>  Unfortunately, your Bid for the auction %AUCTIONTITLE% has lost </p><p>  You can get more details on the webpage  %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p><p>&nbsp;</p>','Informations about your bid on %AUCTIONTITLE%',1),
	(8,'new_bid_auto_bin','<p>Dear %NAME% %SURNAME%,</p><p>  You recieved a BIN Bid for your auction %AUCTIONTITLE% and it was automatically accepted!  </p><p>You can get more details on the webpage  %AUCTIONLINK%</p><p>Best Regards,</p> <p>The Webmaster </p> <p>&nbsp;</p>','A BIN bid on %AUCTIONTITLE% was automatically accepted',1),
	(9,'bin_accepted','Dear %NAME% %SURNAME%,  Your BIN Bid for the auction %AUCTIONTITLE% was accepted!  You can get more details on the webpage  %AUCTIONLINK%','Informations about your bid on %AUCTIONTITLE%',1),
	(10,'bin_wait_approval','<p>Dear %NAME% %SURNAME%,  </p> <p>&nbsp;Your BIN Bid for the auction %AUCTIONTITLE% is waiting approval. You will be notify as soon as the Auctioneer takes a decision regarding your bid.</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your BIN bid on Auction %AUCTIONTITLE%',1),
	(11,'alert_bin_accepted','<p>Dear %NAME% %SURNAME%,  </p> <p>On the Auction &quot;%AUCTIONTITLE%&quot; a BIN bid was accepted!&nbsp;</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your Watch on  %AUCTIONTITLE%',1),
	(12,'bid_watchlist_canceled','<p>Dear %NAME% %SURNAME%,  </p> <p>The Auction %AUCTIONTITLE% was canceled!&nbsp;</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your Watched Auction  %AUCTIONTITLE%',1),
	(13,'bid_canceled','<p>Dear %NAME% %SURNAME%,  </p> <p>The auction %AUCTIONTITLE% was canceled!</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your bid on  %AUCTIONTITLE%',1),
	(14,'bid_watchlist_closed','<p>Dear %NAME% %SURNAME%,  </p> <p>The auction %AUCTIONTITLE% you were watching was closed!&nbsp;</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your Watched Auction %AUCTIONTITLE%',1),
	(15,'bid_closed','<p>Dear %NAME% %SURNAME%,  </p><p>The auction %AUCTIONTITLE% was closed !</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your bid on %AUCTIONTITLE%',1),
	(16,'bid_rate','<p>Dear %NAME% %SURNAME%,</p><p>  You recieved a rating for the auction %AUCTIONTITLE%  !</p> <p>  You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p> <p>&nbsp;</p>','New Rating recieved',1),
	(17,'bid_admin_message','<p>Dear %NAME% %SURNAME%,  </p><p>You recieved a message from one of the Administrators regarding your auction %AUCTIONTITLE%  !</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','New Message from Webmaster regarding %AUCTIONTITLE%',1),
	(18,'bid_your_will_expire','<p>Dear %NAME% %SURNAME%,  </p><p>Your auction %AUCTIONTITLE% will soon expire !  </p><p>You can get more details on the webpage  %AUCTIONLINK%</p><p>Best Regards,</p> <p>The Webmaster </p> <p>&nbsp;</p>','Your Auction %AUCTIONTITLE% will soon expire',1),
	(19,'bid_watchlist_will_expire','<p>Dear %NAME% %SURNAME%,  </p><p>The Action you watched: %AUCTIONTITLE% will soon expire !  </p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your watched Auction  %AUCTIONTITLE%',1),
	(20,'bid_new_mybid','<p>Dear %NAME% %SURNAME%,  </p><p>you placed a new bid on : %AUCTIONTITLE%  !</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Bid placed on Auction %AUCTIONTITLE%',1),
	(21,'proxy_ended','<p>Dear %NAME% %SURNAME%,  </p> <p>&nbsp;Your Proxy Bid for the auction %AUCTIONTITLE% has reached its limit.</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your proxybid on %AUCTIONTITLE%',1),
	(22,'new_bid_watchlist','<p>Dear %NAME%  %SURNAME%,  </p><p>A new bid was placed on the Auction: &quot;%AUCTIONTITLE% &quot; that you were watching</p><p> You can see the bid here  %AUCTIONLINK%  </p><p> You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster </p>','Informations about your Watched Auction %AUCTIONTITLE%',1),
	(23,'new_bid_bin','<p>Dear %NAME% %SURNAME%,  </p><p>A new BIN bid was placed on your Auction %AUCTIONTITLE%  !&nbsp; </p><p>It is waiting for your approval!&nbsp;</p><p>You can get more details on the webpage  %AUCTIONLINK%</p> <p>Best Regards,</p> <p>The Webmaster </p>','New BIN bid on your Auction %AUCTIONTITLE%',1),
	(24,'alert_new_bid_bin','<p>Dear %NAME%  %SURNAME%,  </p> <p>A new BIN bid was placed on the Auction: &quot;%AUCTIONTITLE% &quot; that you were watching<br /> </p> <p> You can see the bid here  %AUCTIONLINK%  </p> <p> You must login to read the message.</p> <p>Best Regards,</p> <p>The Webmaster </p>','Informations about your Watched Auction %AUCTIONTITLE%',1),
	(25,'bid_choose_winner','<p>Dear %NAME% %SURNAME%,  </p><p>&nbsp;Your auction %AUCTIONTITLE% awaits that you choose a winner.&nbsp;</p><p>You can do this by visiting %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p>','A bid won for your auction %AUCTIONTITLE%',1),
	(26,'bid_offer_winner_to_owner','<p>Dear %NAME% %SURNAME%,  </p><p>&nbsp;Your auction %AUCTIONTITLE% has a winning bid.&nbsp;</p><p>You can see it by visiting %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p>','Please choose a winner for your auction %AUCTIONTITLE%',1),
	(27,'bid_offer_no_winner_to_owner','<p>Dear %NAME% %SURNAME%,  </p><p>&nbsp;Your auction %AUCTIONTITLE% did not had a winning bid. It was closed without one&nbsp;</p><p>You can visit %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p>','No winner for your auction %AUCTIONTITLE%',1),
	(28,'bid_outbid','<p>Dear %NAME% %SURNAME%,  </p><p>&nbsp;Your bid on %AUCTIONTITLE% was outbid.&nbsp;</p><p>You can rebid here %AUCTIONLINK%</p><p>Best Regards,</p><p>The Webmaster </p>','Your bid on %AUCTIONTITLE% was outbidded',1),
	(29,'bid_reserve_not_met','<p>Dear %NAME%  %SURNAME%,  </p> <p>Your  Auction: &quot;%AUCTIONTITLE% &quot; expired and the reserve price was not met<br /> </p> <p> You can see the bid here  %AUCTIONLINK%  </p> <p> You must login to choose winner.</p> <p>Best Regards,</p> <p>The Webmaster </p>','Your Auction %AUCTIONTITLE% did not met reserve price',1),
	(30,'bid_payment_received','<p>Dear %NAME%  %SURNAME%,  </p> <p>Your  Payment was received<br /> </p>   <p>Best Regards,</p> <p>The Webmaster </p>','Your Payment is received',1),
	(31,'report_notify','<p>Dear %NAME%  %SURNAME%,  </p><p>&nbsp;The Auction: &quot;%AUCTIONTITLE% &quot;</p><p> was reported as abusive. You can see the message here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','The Auction: %AUCTIONTITLE%  was reported as abusive',1),
	(32,'suggest_accepted','<p>Dear %NAME%  %SURNAME%,  </p><p>Your price suggestion on &quot;%AUCTIONTITLE% &quot;</p><p> was accepted. You can see the suggestion here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','Your price suggestion on Auction: %AUCTIONTITLE%  was accepted',1),
	(33,'suggest_rejected','<p>Dear %NAME%  %SURNAME%,  </p><p>Your price suggestion on &quot;%AUCTIONTITLE% &quot;</p><p> was rejected. You can see the suggestion here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','Your price suggestion on Auction: %AUCTIONTITLE%  was rejected',1),
	(34,'suggest_success','<p>Dear %NAME%  %SURNAME%,  </p><p>A new price suggestion was received on &quot;%AUCTIONTITLE% &quot;</p><p> You can see the suggestions here  %AUCTIONLINK%  </p><p>&nbsp;You must login to see the suggestions.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','A new price suggestion on Auction: %AUCTIONTITLE%  was received',1),
	(35,'suggest_reminder','<p>Dear %NAME%  %SURNAME%,  </p><p>Some price suggestions on &quot;%AUCTIONTITLE% &quot; are waitting to be accepted / reject </p><p> You can see the suggestions here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','Some price suggestions on Auction: %AUCTIONTITLE%  are waitting for moderation',1),
	(36,'replysuggest_success','<p>Dear %NAME%  %SURNAME%,  </p><p>You have received a suggestion reply on &quot;%AUCTIONTITLE% &quot;</p><p> You can see the suggestions here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','You have received reply to suggestion: %AUCTIONTITLE%',1),
	(37,'new_auction','<p>Dear %NAME%  %SURNAME%,  </p><p>Your auction &quot;%AUCTIONTITLE% &quot; was published </p><p> You can see the auction here  %AUCTIONLINK%  </p><p>&nbsp;You must login to read the message.</p><p>Best Regards,</p><p>The Webmaster&nbsp;</p>','Your auction %AUCTIONTITLE% was published',1);
/*!40000 ALTER TABLE `jos_bid_mails` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_messages`;

#
# Table structure for table 'jos_bid_messages'
#

CREATE TABLE `jos_bid_messages` (
  `id` int(11) NOT NULL auto_increment,
  `id_offer` int(11) NOT NULL default '0',
  `userid1` int(11) NOT NULL default '0',
  `userid2` int(11) NOT NULL default '0',
  `parent_message` int(11) NOT NULL default '0',
  `message` text NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `wasread` int(1) default '0',
  `published` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `id_offer` (`id_offer`),
  KEY `ixuserid` (`userid1`),
  KEY `ixuserid2` (`userid2`)
) ENGINE=InnoDB AUTO_INCREMENT=7 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_messages'
#

LOCK TABLES `jos_bid_messages` WRITE;
/*!40000 ALTER TABLE `jos_bid_messages` DISABLE KEYS*/;
INSERT INTO `jos_bid_messages` (`id`, `id_offer`, `userid1`, `userid2`, `parent_message`, `message`, `modified`, `wasread`, `published`) VALUES
	(1,2,62,62,0,'Accepted','2011-04-13 15:34:55',1,1),
	(2,3,62,62,0,'Accepted','2011-04-13 15:52:07',1,1),
	(3,4,62,62,0,'Accepted','2011-04-14 14:06:52',1,1),
	(4,5,62,62,0,'Accepted','2011-04-17 13:48:30',1,1),
	(5,5,63,62,0,'rbfsgth','2011-04-17 13:59:02',0,1),
	(6,6,62,62,0,'Accepted','2011-04-29 18:51:29',1,1);
/*!40000 ALTER TABLE `jos_bid_messages` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_packages`;

#
# Table structure for table 'jos_bid_packages'
#

CREATE TABLE `jos_bid_packages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_packages'
#

LOCK TABLES `jos_bid_packages` WRITE;
/*!40000 ALTER TABLE `jos_bid_packages` DISABLE KEYS*/;
INSERT INTO `jos_bid_packages` (`id`, `name`, `price`, `currency`, `status`) VALUES
	(1,'Premium','50','EUR',0),
	(2,'Full','100','USD',0),
	(3,'Regular','30','EUR',0);
/*!40000 ALTER TABLE `jos_bid_packages` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_packages_credits`;

#
# Table structure for table 'jos_bid_packages_credits'
#

CREATE TABLE `jos_bid_packages_credits` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `pricing` varchar(50) NOT NULL,
  `credits` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_packages_credits'
#

LOCK TABLES `jos_bid_packages_credits` WRITE;
/*!40000 ALTER TABLE `jos_bid_packages_credits` DISABLE KEYS*/;
INSERT INTO `jos_bid_packages_credits` (`id`, `pid`, `pricing`, `credits`) VALUES
	(1,1,'listing','30'),
	(2,1,'featured_gold','5'),
	(3,2,'listing','50'),
	(4,2,'featured_gold','10'),
	(5,1,'featured_silver','1'),
	(6,2,'featured_silver','5'),
	(7,3,'listing','5'),
	(8,3,'featured_gold','1');
/*!40000 ALTER TABLE `jos_bid_packages_credits` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_paylog`;

#
# Table structure for table 'jos_bid_paylog'
#

CREATE TABLE `jos_bid_paylog` (
  `id` int(11) NOT NULL auto_increment,
  `date` datetime default NULL,
  `amount` varchar(200) default NULL,
  `currency` varchar(11) default NULL,
  `refnumber` varchar(100) default NULL,
  `invoice` varchar(50) default NULL,
  `ipn_response` text,
  `ipn_ip` varchar(100) default NULL,
  `comission_id` int(11) default NULL,
  `status` enum('ok','error','manual_check','cancelled','refunded') default NULL,
  `userid` int(11) default NULL,
  `itemname` varchar(50) default NULL,
  `payment_method` varchar(100) default NULL,
  `object_id` int(11) NOT NULL,
  `var_name1` varchar(255) NOT NULL,
  `var_name2` varchar(255) NOT NULL,
  `var_name3` varchar(255) NOT NULL,
  `var_name4` varchar(255) NOT NULL,
  `var_value1` varchar(255) NOT NULL,
  `var_value2` varchar(255) NOT NULL,
  `var_value3` varchar(255) NOT NULL,
  `var_value4` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ixdate` (`date`),
  KEY `ixuserid` (`userid`),
  KEY `ixstatus` (`status`),
  KEY `ixref` (`refnumber`),
  KEY `ixinvoice` (`invoice`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_paylog'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_payment`;

#
# Table structure for table 'jos_bid_payment'
#

CREATE TABLE `jos_bid_payment` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_payment'
#

LOCK TABLES `jos_bid_payment` WRITE;
/*!40000 ALTER TABLE `jos_bid_payment` DISABLE KEYS*/;
INSERT INTO `jos_bid_payment` (`id`, `name`) VALUES
	(1,'Any type of payment'),
	(2,'Cash'),
	(3,'Bankwire'),
	(4,'VISA / MASTER CARD');
/*!40000 ALTER TABLE `jos_bid_payment` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_payments`;

#
# Table structure for table 'jos_bid_payments'
#

CREATE TABLE `jos_bid_payments` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `paydate` datetime NOT NULL,
  `automatic` int(11) NOT NULL default '0',
  `currency` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_payments'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_paysystems`;

#
# Table structure for table 'jos_bid_paysystems'
#

CREATE TABLE `jos_bid_paysystems` (
  `id` int(11) NOT NULL auto_increment,
  `paysystem` varchar(50) default NULL,
  `classname` varchar(50) default NULL,
  `enabled` int(1) default '1',
  `params` text,
  `ordering` int(11) default NULL,
  `isdefault` int(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_paysystems'
#

LOCK TABLES `jos_bid_paysystems` WRITE;
/*!40000 ALTER TABLE `jos_bid_paysystems` DISABLE KEYS*/;
INSERT INTO `jos_bid_paysystems` (`id`, `paysystem`, `classname`, `enabled`, `params`, `ordering`, `isdefault`) VALUES
	(1,'Paypal','pay_paypal',1,'paypal_email=change@me.now\r\nuse_sandbox=0',NULL,0),
	(2,'Moneybookers','pay_moneybookers',1,'email=change@me.now\n',NULL,0),
	(3,'2Checkout','pay_2checkout',1,'',NULL,0);
/*!40000 ALTER TABLE `jos_bid_paysystems` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_pictures`;

#
# Table structure for table 'jos_bid_pictures'
#

CREATE TABLE `jos_bid_pictures` (
  `id` int(11) NOT NULL auto_increment,
  `id_offer` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `picture` varchar(100) NOT NULL default '',
  `modified` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`),
  KEY `idoffer` (`id_offer`),
  KEY `ixuserid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_pictures'
#

LOCK TABLES `jos_bid_pictures` WRITE;
/*!40000 ALTER TABLE `jos_bid_pictures` DISABLE KEYS*/;
INSERT INTO `jos_bid_pictures` (`id`, `id_offer`, `userid`, `picture`, `modified`) VALUES
	(1,1,62,'1_img_1.jpg','2011-04-13'),
	(2,6,62,'6_img_2.jpg','2011-04-26');
/*!40000 ALTER TABLE `jos_bid_pictures` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_positions`;

#
# Table structure for table 'jos_bid_positions'
#

CREATE TABLE `jos_bid_positions` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `html` text NOT NULL,
  `tpl` text NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_positions'
#

LOCK TABLES `jos_bid_positions` WRITE;
/*!40000 ALTER TABLE `jos_bid_positions` DISABLE KEYS*/;
INSERT INTO `jos_bid_positions` (`id`, `title`, `name`, `description`, `html`, `tpl`, `verified`) VALUES
	(1,'Default Listing position','deflisting','','<strong>%LABEL%:</strong> %VALUE% <br />','t_listauctions.tpl',0),
	(2,'Default Details page  position','defdetails','','<strong>%LABEL%:</strong>  %VALUE% <br />','t_auctiondetails.tpl',0),
	(3,'Default My User Details page position','defuserviewpage','','<tr><td width=\"85\"><strong>%LABEL%:</strong></td><td>%VALUE%</td></tr>','t_display_userprofile.tpl',0);
/*!40000 ALTER TABLE `jos_bid_positions` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_pricing`;

#
# Table structure for table 'jos_bid_pricing'
#

CREATE TABLE `jos_bid_pricing` (
  `id` int(11) NOT NULL auto_increment,
  `itemname` varchar(50) default NULL,
  `pricetype` enum('percent','fixed') default NULL,
  `price` varchar(200) default NULL,
  `currency` varchar(11) default NULL,
  `enabled` int(1) default NULL,
  `params` text,
  `ordering` int(11) default NULL,
  `task_pay` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ixitemname` (`itemname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_pricing'
#

LOCK TABLES `jos_bid_pricing` WRITE;
/*!40000 ALTER TABLE `jos_bid_pricing` DISABLE KEYS*/;
INSERT INTO `jos_bid_pricing` (`id`, `itemname`, `pricetype`, `price`, `currency`, `enabled`, `params`, `ordering`, `task_pay`) VALUES
	(1,'featured_gold','fixed','11','USD',1,NULL,3,'buy_featured&featured=gold'),
	(2,'listing','fixed','4','USD',0,NULL,1,'buy_listing'),
	(4,'featured_silver','fixed','5','USD',1,NULL,4,'buy_featured&featured=silver'),
	(5,'featured_bronze','fixed','2','USD',1,NULL,5,'buy_featured&featured=bronze'),
	(6,'comission','percent','10','',0,NULL,2,'pay_comission'),
	(7,'contact','fixed','1','USD',0,NULL,2,'buy_contact'),
	(8,'bid','fixed','1','USD',0,NULL,2,'buy_bidding'),
	(9,'packages','fixed',NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jos_bid_pricing` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_proxy`;

#
# Table structure for table 'jos_bid_proxy'
#

CREATE TABLE `jos_bid_proxy` (
  `id` int(11) NOT NULL auto_increment,
  `auction_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `max_proxy_price` varchar(200) default NULL,
  `active` tinyint(4) NOT NULL default '0',
  `latest_bid` varchar(200) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idauction` (`auction_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_proxy'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_rate`;

#
# Table structure for table 'jos_bid_rate'
#

CREATE TABLE `jos_bid_rate` (
  `id` int(11) NOT NULL auto_increment,
  `voter` int(11) NOT NULL default '0',
  `user_rated` int(11) NOT NULL default '0',
  `rating` int(11) default '0',
  `modified` date NOT NULL default '0000-00-00',
  `message` text,
  `auction_id` int(11) NOT NULL default '0',
  `rate_type` enum('auctioneer','bidder') default NULL,
  PRIMARY KEY  (`id`),
  KEY `userrated` (`user_rated`),
  KEY `auctionid` (`auction_id`),
  KEY `ratetype` (`rate_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_rate'
#

LOCK TABLES `jos_bid_rate` WRITE;
/*!40000 ALTER TABLE `jos_bid_rate` DISABLE KEYS*/;
INSERT INTO `jos_bid_rate` (`id`, `voter`, `user_rated`, `rating`, `modified`, `message`, `auction_id`, `rate_type`) VALUES
	(1,62,63,10,'2011-04-13','He is good',1,'bidder'),
	(2,63,62,10,'2011-04-13','he is great also!',1,'auctioneer'),
	(3,62,63,10,'2011-04-13','',3,'bidder'),
	(4,63,62,10,'2011-04-13','',3,'auctioneer'),
	(5,62,63,10,'2011-04-13','',2,'bidder');
/*!40000 ALTER TABLE `jos_bid_rate` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_report_auctions`;

#
# Table structure for table 'jos_bid_report_auctions'
#

CREATE TABLE `jos_bid_report_auctions` (
  `id` int(11) NOT NULL auto_increment,
  `id_offer` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `message` varchar(200) NOT NULL default '',
  `processing` int(11) NOT NULL default '0',
  `solved` int(11) NOT NULL default '0',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `id_offer` (`id_offer`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_report_auctions'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_shipment_prices`;

#
# Table structure for table 'jos_bid_shipment_prices'
#

CREATE TABLE `jos_bid_shipment_prices` (
  `id` int(11) NOT NULL auto_increment,
  `zone` int(11) NOT NULL,
  `price` varchar(100) NOT NULL,
  `auction` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_shipment_prices'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_shipment_zones`;

#
# Table structure for table 'jos_bid_shipment_zones'
#

CREATE TABLE `jos_bid_shipment_zones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_shipment_zones'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_suggest`;

#
# Table structure for table 'jos_bid_suggest'
#

CREATE TABLE `jos_bid_suggest` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `auctionid` int(11) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `status` tinyint(2) NOT NULL COMMENT '0 rejected, 1 accepted, 2 pending',
  `price` varchar(255) NOT NULL,
  `replyto` int(11) NOT NULL,
  `quantity` int(11) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_suggest'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_tags`;

#
# Table structure for table 'jos_bid_tags'
#

CREATE TABLE `jos_bid_tags` (
  `id` int(11) NOT NULL auto_increment,
  `auction_id` int(11) default NULL,
  `tagname` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `iauction` (`auction_id`),
  KEY `itagname` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_tags'
#

LOCK TABLES `jos_bid_tags` WRITE;
/*!40000 ALTER TABLE `jos_bid_tags` DISABLE KEYS*/;
INSERT INTO `jos_bid_tags` (`id`, `auction_id`, `tagname`) VALUES
	(2,1,'fun'),
	(4,2,'my tags'),
	(6,3,'my tags'),
	(7,4,'my tags'),
	(8,5,'ipad'),
	(9,6,'tags');
/*!40000 ALTER TABLE `jos_bid_tags` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_user_settings`;

#
# Table structure for table 'jos_bid_user_settings'
#

CREATE TABLE `jos_bid_user_settings` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_user_settings'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_users`;

#
# Table structure for table 'jos_bid_users'
#

CREATE TABLE `jos_bid_users` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `surname` varchar(50) NOT NULL default '',
  `address` varchar(150) NOT NULL default '',
  `city` varchar(50) NOT NULL default '',
  `country` varchar(150) NOT NULL default '',
  `phone` text NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `verified` int(1) default '0',
  `isBidder` int(1) default '0',
  `isSeller` int(1) default '0',
  `powerseller` int(1) default '0',
  `paypalemail` text,
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`),
  KEY `ixopts` (`verified`,`isBidder`,`isSeller`)
) ENGINE=InnoDB AUTO_INCREMENT=5 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_users'
#

LOCK TABLES `jos_bid_users` WRITE;
/*!40000 ALTER TABLE `jos_bid_users` DISABLE KEYS*/;
INSERT INTO `jos_bid_users` (`id`, `userid`, `name`, `surname`, `address`, `city`, `country`, `phone`, `modified`, `verified`, `isBidder`, `isSeller`, `powerseller`, `paypalemail`) VALUES
	(1,62,'Gary','Teh','blok 429 ','Singapore','230','+6598794616','2011-04-13 14:29:08',0,0,0,0,'garyjob@gmail.com'),
	(2,63,'test','test','test','test','18','999','2011-04-13 14:34:16',0,0,0,0,'garyjob@gmail.com'),
	(3,64,'test2','test2','test2','test2','4','test2','2011-04-13 15:30:17',0,0,0,0,'test2@name1price.com'),
	(4,66,'test4','test4','test4','Singappore','18','98794616','0000-00-00 00:00:00',0,0,0,0,NULL);
/*!40000 ALTER TABLE `jos_bid_users` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_bid_watchlist`;

#
# Table structure for table 'jos_bid_watchlist'
#

CREATE TABLE `jos_bid_watchlist` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `auctionid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `iuserid` (`userid`),
  KEY `iauctionid` (`auctionid`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_watchlist'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bid_watchlist_cats`;

#
# Table structure for table 'jos_bid_watchlist_cats'
#

CREATE TABLE `jos_bid_watchlist_cats` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bid_watchlist_cats'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_bids`;

#
# Table structure for table 'jos_bids'
#

CREATE TABLE `jos_bids` (
  `id` int(11) NOT NULL auto_increment,
  `id_offer` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `id_proxy` int(11) NOT NULL default '0',
  `initial_bid` varchar(200) default NULL,
  `bid_price` varchar(200) NOT NULL default '0',
  `payment` int(11) NOT NULL default '0',
  `cancel` int(11) default NULL,
  `accept` tinyint(4) NOT NULL default '0',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `quantity` int(11) default '1',
  PRIMARY KEY  (`id`),
  KEY `id_offer` (`id_offer`),
  KEY `userid` (`userid`),
  KEY `ixbid_price` (`bid_price`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_bids'
#

LOCK TABLES `jos_bids` WRITE;
/*!40000 ALTER TABLE `jos_bids` DISABLE KEYS*/;
INSERT INTO `jos_bids` (`id`, `id_offer`, `userid`, `id_proxy`, `initial_bid`, `bid_price`, `payment`, `cancel`, `accept`, `modified`, `quantity`) VALUES
	(1,1,63,0,'100','100',0,0,1,'2011-04-13 14:34:29',1),
	(2,2,63,0,'100','120',0,0,1,'2011-04-13 15:26:07',1),
	(3,2,64,0,'130','130',0,0,0,'2011-04-13 15:30:35',1),
	(4,3,63,0,'1100','1300',0,0,1,'2011-04-13 15:49:46',1),
	(5,4,63,0,'110','110',0,0,1,'2011-04-14 14:06:35',1),
	(6,5,63,0,'10000','10000',0,0,1,'2011-04-17 13:34:04',1),
	(7,6,63,0,'100','100',0,0,1,'2011-04-29 18:32:28',1);
/*!40000 ALTER TABLE `jos_bids` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_categories`;

#
# Table structure for table 'jos_categories'
#

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=3 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_categories'
#

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS*/;
INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
	(2,0,'test','','test','','com_contact_details','left','',1,'0','0000-00-00 00:00:00',NULL,1,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_components`;

#
# Table structure for table 'jos_components'
#

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=63 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_components'
#

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS*/;
INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
	(1,'Banners','','0','0','','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),
	(2,'Banners','','0','1','option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),
	(3,'Clients','','0','1','option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),
	(4,'Web Links','option=com_weblinks','0','0','','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),
	(5,'Links','','0','4','option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),
	(6,'Categories','','0','4','option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),
	(7,'Contacts','option=com_contact','0','0','','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),
	(8,'Contacts','','0','7','option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),
	(9,'Categories','','0','7','option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),
	(10,'Polls','option=com_poll','0','0','option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),
	(11,'News Feeds','option=com_newsfeeds','0','0','','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),
	(12,'Feeds','','0','11','option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),
	(13,'Categories','','0','11','option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),
	(14,'User','option=com_user','0','0','','','com_user',0,'',1,'',1),
	(15,'Search','option=com_search','0','0','option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),
	(16,'Categories','','0','1','option=com_categories&section=com_banner','Categories','',3,'',1,'',1),
	(17,'Wrapper','option=com_wrapper','0','0','','Wrapper','com_wrapper',0,'',1,'',1),
	(18,'Mail To','','0','0','','','com_mailto',0,'',1,'',1),
	(19,'Media Manager','','0','0','option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),
	(20,'Articles','option=com_content','0','0','','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),
	(21,'Configuration Manager','','0','0','','Configuration','com_config',0,'',1,'',1),
	(22,'Installation Manager','','0','0','','Installer','com_installer',0,'',1,'',1),
	(23,'Language Manager','','0','0','','Languages','com_languages',0,'',1,'administrator=en-GB\nsite=en-GB',1),
	(24,'Mass mail','','0','0','','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),
	(25,'Menu Editor','','0','0','','Menu Editor','com_menus',0,'',1,'',1),
	(27,'Messaging','','0','0','','Messages','com_messages',0,'',1,'',1),
	(28,'Modules Manager','','0','0','','Modules','com_modules',0,'',1,'',1),
	(29,'Plugin Manager','','0','0','','Plugins','com_plugins',0,'',1,'',1),
	(30,'Template Manager','','0','0','','Templates','com_templates',0,'',1,'',1),
	(31,'User Manager','','0','0','','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),
	(32,'Cache Manager','','0','0','','Cache','com_cache',0,'',1,'',1),
	(33,'Control Panel','','0','0','','Control Panel','com_cpanel',0,'',1,'',1),
	(54,'Auctions Factory','option=com_bids','0','0','option=com_bids','Auctions Factory','com_bids',0,'../components/com_bids/images/auctionicon16.gif',0,'',1),
	(55,'Auctions','','0','54','option=com_bids&task=offers','Auctions','com_bids',0,'js/ThemeOffice/component.png',0,'',1),
	(56,'Categories','','0','54','option=com_bids&task=categories','Categories','com_bids',1,'js/ThemeOffice/component.png',0,'',1),
	(37,'Community Builder','option=com_comprofiler','0','0','option=com_comprofiler','Community Builder','com_comprofiler',0,'js/ThemeOffice/component.png',0,'',1),
	(38,'User Management','','0','37','option=com_comprofiler&task=showusers','User Management','com_comprofiler',0,'js/ThemeOffice/user.png',0,'',1),
	(39,'Tab Management','','0','37','option=com_comprofiler&task=showTab','Tab Management','com_comprofiler',1,'js/ThemeOffice/article.png',0,'',1),
	(40,'Field Management','','0','37','option=com_comprofiler&task=showField','Field Management','com_comprofiler',2,'js/ThemeOffice/content.png',0,'',1),
	(41,'List Management','','0','37','option=com_comprofiler&task=showLists','List Management','com_comprofiler',3,'js/ThemeOffice/static.png',0,'',1),
	(42,'Plugin Management','','0','37','option=com_comprofiler&task=showPlugins','Plugin Management','com_comprofiler',4,'js/ThemeOffice/plugin.png',0,'',1),
	(43,'Tools','','0','37','option=com_comprofiler&task=tools','Tools','com_comprofiler',5,'js/ThemeOffice/component.png',0,'',1),
	(44,'Configuration','','0','37','option=com_comprofiler&task=showconfig','Configuration','com_comprofiler',6,'js/ThemeOffice/config.png',0,'',1),
	(57,'Payments','','0','54','option=com_bids&task=payments','Payments','com_bids',2,'js/ThemeOffice/component.png',0,'',1),
	(58,'Reported','','0','54','option=com_bids&task=reported_offers','Reported','com_bids',3,'js/ThemeOffice/component.png',0,'',1),
	(59,'Tools','','0','54','option=com_bids&task=auctionmanager','Tools','com_bids',4,'js/ThemeOffice/component.png',0,'',1),
	(60,'Settings','','0','54','option=com_bids&task=settingsmanager','Settings','com_bids',5,'js/ThemeOffice/component.png',0,'',1),
	(61,'Users','','0','54','option=com_bids&task=users','Users','com_bids',6,'js/ThemeOffice/component.png',0,'',1),
	(62,'About','','0','54','option=com_bids&task=aboutComponent','About','com_bids',7,'js/ThemeOffice/component.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_comprofiler`;

#
# Table structure for table 'jos_comprofiler'
#

CREATE TABLE `jos_comprofiler` (
  `id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `firstname` varchar(100) default NULL,
  `middlename` varchar(100) default NULL,
  `lastname` varchar(100) default NULL,
  `hits` int(11) NOT NULL default '0',
  `message_last_sent` datetime NOT NULL default '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL default '0',
  `avatar` varchar(255) default NULL,
  `avatarapproved` tinyint(4) NOT NULL default '1',
  `approved` tinyint(4) NOT NULL default '1',
  `confirmed` tinyint(4) NOT NULL default '1',
  `lastupdatedate` datetime NOT NULL default '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) NOT NULL default '',
  `cbactivation` varchar(50) NOT NULL default '',
  `banned` tinyint(4) NOT NULL default '0',
  `banneddate` datetime default NULL,
  `unbanneddate` datetime default NULL,
  `bannedby` int(11) default NULL,
  `unbannedby` int(11) default NULL,
  `bannedreason` mediumtext,
  `acceptedterms` tinyint(1) NOT NULL default '0',
  `cb_country` varchar(255) default NULL,
  `cb_address` varchar(255) default NULL,
  `cb_mobilenumber` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`),
  KEY `lastupdatedate` (`lastupdatedate`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler'
#

LOCK TABLES `jos_comprofiler` WRITE;
/*!40000 ALTER TABLE `jos_comprofiler` DISABLE KEYS*/;
INSERT INTO `jos_comprofiler` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `hits`, `message_last_sent`, `message_number_sent`, `avatar`, `avatarapproved`, `approved`, `confirmed`, `lastupdatedate`, `registeripaddr`, `cbactivation`, `banned`, `banneddate`, `unbanneddate`, `bannedby`, `unbannedby`, `bannedreason`, `acceptedterms`, `cb_country`, `cb_address`, `cb_mobilenumber`) VALUES
	(62,62,NULL,NULL,NULL,0,'0000-00-00 00:00:00',0,NULL,1,1,1,'0000-00-00 00:00:00','','',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),
	(63,63,'test','','test',0,'0000-00-00 00:00:00',0,NULL,1,1,1,'0000-00-00 00:00:00','','',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),
	(64,64,'test2','','test2',0,'0000-00-00 00:00:00',0,NULL,1,1,1,'0000-00-00 00:00:00','','',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),
	(65,65,'test','test','test3',0,'0000-00-00 00:00:00',0,NULL,1,1,0,'0000-00-00 00:00:00','127.0.0.1','reg33df7089263f4e651081482c380ac216038addab',0,NULL,NULL,NULL,NULL,NULL,0,'singapore','Clementi Ave 3','98794616'),
	(66,66,NULL,NULL,NULL,0,'0000-00-00 00:00:00',0,NULL,1,1,1,'0000-00-00 00:00:00','127.0.0.1','',0,NULL,NULL,NULL,NULL,NULL,0,'Singapore','Clementi Ave 3','98794616');
/*!40000 ALTER TABLE `jos_comprofiler` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_comprofiler_field_values`;

#
# Table structure for table 'jos_comprofiler_field_values'
#

CREATE TABLE `jos_comprofiler_field_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`),
  KEY `fieldid_ordering` (`fieldid`,`ordering`),
  KEY `fieldtitle_id` (`fieldtitle`,`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_field_values'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_comprofiler_fields`;

#
# Table structure for table 'jos_comprofiler_fields'
#

CREATE TABLE `jos_comprofiler_fields` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `tablecolumns` text NOT NULL,
  `table` varchar(50) NOT NULL default '#__comprofiler',
  `title` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL default '',
  `maxlength` int(11) default NULL,
  `size` int(11) default NULL,
  `required` tinyint(4) default '0',
  `tabid` int(11) default NULL,
  `ordering` int(11) default NULL,
  `cols` int(11) default NULL,
  `rows` int(11) default NULL,
  `value` varchar(50) default NULL,
  `default` mediumtext,
  `published` tinyint(1) NOT NULL default '1',
  `registration` tinyint(1) NOT NULL default '0',
  `profile` tinyint(1) NOT NULL default '1',
  `displaytitle` tinyint(1) NOT NULL default '1',
  `readonly` tinyint(1) NOT NULL default '0',
  `searchable` tinyint(1) NOT NULL default '0',
  `calculated` tinyint(1) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  `pluginid` int(11) NOT NULL default '0',
  `params` mediumtext,
  PRIMARY KEY  (`fieldid`),
  KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`),
  KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`),
  KEY `registration_published_order` (`registration`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=57 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_fields'
#

LOCK TABLES `jos_comprofiler_fields` WRITE;
/*!40000 ALTER TABLE `jos_comprofiler_fields` DISABLE KEYS*/;
INSERT INTO `jos_comprofiler_fields` (`fieldid`, `name`, `tablecolumns`, `table`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `tabid`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `profile`, `displaytitle`, `readonly`, `searchable`, `calculated`, `sys`, `pluginid`, `params`) VALUES
	(41,'name','name','#__users','_UE_NAME','_UE_REGWARN_NAME','predefined',NULL,NULL,1,11,-51,NULL,NULL,NULL,NULL,1,1,0,1,0,1,1,1,1,NULL),
	(26,'onlinestatus','','#__comprofiler','_UE_ONLINESTATUS','','status',NULL,NULL,0,21,-21,NULL,NULL,NULL,NULL,1,0,1,1,0,0,1,1,1,NULL),
	(27,'lastvisitDate','lastvisitDate','#__users','_UE_LASTONLINE','','datetime',NULL,NULL,0,21,-19,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,1,'field_display_by=2'),
	(28,'registerDate','registerDate','#__users','_UE_MEMBERSINCE','','datetime',NULL,NULL,0,21,-20,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,1,'field_display_by=2'),
	(29,'avatar','avatar,avatarapproved','#__comprofiler','_UE_IMAGE','','image',NULL,NULL,0,20,1,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,1,1,NULL),
	(42,'username','username','#__users','_UE_UNAME','_UE_VALID_UNAME','predefined',NULL,NULL,1,11,-46,NULL,NULL,NULL,NULL,1,1,0,1,0,1,1,1,1,NULL),
	(45,'formatname','','#__comprofiler','_UE_FORMATNAME','','formatname',NULL,NULL,0,11,-52,NULL,NULL,NULL,NULL,1,0,1,0,1,0,1,1,1,NULL),
	(46,'firstname','firstname','#__comprofiler','_UE_YOUR_FNAME','_UE_REGWARN_FNAME','predefined',NULL,NULL,1,11,-50,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,1,1,NULL),
	(47,'middlename','middlename','#__comprofiler','_UE_YOUR_MNAME','_UE_REGWARN_MNAME','predefined',NULL,NULL,0,11,-49,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,1,1,NULL),
	(48,'lastname','lastname','#__comprofiler','_UE_YOUR_LNAME','_UE_REGWARN_LNAME','predefined',NULL,NULL,1,11,-48,NULL,NULL,NULL,NULL,0,1,0,1,0,0,1,1,1,NULL),
	(49,'lastupdatedate','lastupdatedate','#__comprofiler','_UE_LASTUPDATEDON','','datetime',NULL,NULL,0,21,-18,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,1,'field_display_by=2'),
	(50,'email','email','#__users','_UE_EMAIL','_UE_REGWARN_MAIL','primaryemailaddress',NULL,NULL,1,11,-47,NULL,NULL,NULL,NULL,1,1,0,1,0,0,1,1,1,NULL),
	(25,'hits','hits','#__comprofiler','_UE_HITS','_UE_HITS_DESC','counter',NULL,NULL,0,21,-22,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,1,NULL),
	(51,'password','password','#__users','_UE_PASS','_UE_VALID_PASS','password',50,NULL,1,11,-45,NULL,NULL,NULL,NULL,1,1,0,1,0,0,1,1,1,NULL),
	(52,'params','params','#__users','_UE_USERPARAMS','','userparams',NULL,NULL,0,11,-30,NULL,NULL,NULL,NULL,1,0,0,1,0,0,1,1,1,NULL),
	(24,'connections','','#__comprofiler','_UE_CONNECTION','','connections',NULL,NULL,0,21,-17,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,1,NULL),
	(23,'forumrank','','#__comprofiler','_UE_FORUM_FORUMRANKING','','forumstats',NULL,NULL,0,21,-16,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,4,NULL),
	(22,'forumposts','','#__comprofiler','_UE_FORUM_TOTALPOSTS','','forumstats',NULL,NULL,0,21,-15,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,4,NULL),
	(21,'forumkarma','','#__comprofiler','_UE_FORUM_KARMA','','forumstats',NULL,NULL,0,21,-14,NULL,NULL,NULL,NULL,1,0,1,1,1,0,1,1,4,NULL),
	(20,'forumsignature','','#__comprofiler','_UE_FB_SIGNATURE','','forumsettings',NULL,NULL,0,13,2,60,5,NULL,NULL,1,0,0,1,0,0,0,1,4,NULL),
	(19,'forumview','','#__comprofiler','_UE_FB_VIEWTYPE_TITLE','','forumsettings',NULL,NULL,1,13,3,NULL,NULL,NULL,'flat',1,0,0,1,0,0,0,1,4,NULL),
	(18,'forumorder','','#__comprofiler','_UE_FB_ORDERING_TITLE','','forumsettings',NULL,NULL,1,13,1,NULL,NULL,NULL,'0',1,0,0,1,0,0,0,1,4,NULL),
	(54,'cb_country','cb_country','#__comprofiler','Country','','text',0,0,0,11,-29,0,0,NULL,'',1,1,1,1,0,0,0,0,1,'fieldMinLength=0\nfieldValidateExpression=\npregexp=/^.*$/\npregexperror=Not a valid input\nfieldValidateForbiddenList_register=http:,https:,mailto:,//.[url],<a,</a>,&#\nfieldValidateForbiddenList_edit='),
	(55,'cb_address','cb_address','#__comprofiler','Address','','text',0,0,0,11,-28,0,0,NULL,'',1,1,1,1,0,0,0,0,1,'fieldMinLength=0\nfieldValidateExpression=\npregexp=/^.*$/\npregexperror=Not a valid input\nfieldValidateForbiddenList_register=http:,https:,mailto:,//.[url],<a,</a>,&#\nfieldValidateForbiddenList_edit='),
	(56,'cb_mobilenumber','cb_mobilenumber','#__comprofiler','Mobile Number','','text',0,0,0,11,-27,0,0,NULL,'',1,1,1,1,0,0,0,0,1,'fieldMinLength=0\nfieldValidateExpression=\npregexp=/^.*$/\npregexperror=Not a valid input\nfieldValidateForbiddenList_register=http:,https:,mailto:,//.[url],<a,</a>,&#\nfieldValidateForbiddenList_edit=');
/*!40000 ALTER TABLE `jos_comprofiler_fields` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_comprofiler_lists`;

#
# Table structure for table 'jos_comprofiler_lists'
#

CREATE TABLE `jos_comprofiler_lists` (
  `listid` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL default '0',
  `default` tinyint(1) NOT NULL default '0',
  `usergroupids` varchar(255) default NULL,
  `useraccessgroupid` int(9) NOT NULL default '18',
  `sortfields` varchar(255) default NULL,
  `filterfields` mediumtext,
  `ordering` int(11) NOT NULL default '0',
  `col1title` varchar(255) default NULL,
  `col1enabled` tinyint(1) NOT NULL default '0',
  `col1fields` mediumtext,
  `col2title` varchar(255) default NULL,
  `col2enabled` tinyint(1) NOT NULL default '0',
  `col1captions` tinyint(1) NOT NULL default '0',
  `col2fields` mediumtext,
  `col2captions` tinyint(1) NOT NULL default '0',
  `col3title` varchar(255) default NULL,
  `col3enabled` tinyint(1) NOT NULL default '0',
  `col3fields` mediumtext,
  `col3captions` tinyint(1) NOT NULL default '0',
  `col4title` varchar(255) default NULL,
  `col4enabled` tinyint(1) NOT NULL default '0',
  `col4fields` mediumtext,
  `col4captions` tinyint(1) NOT NULL default '0',
  `params` mediumtext,
  PRIMARY KEY  (`listid`),
  KEY `pub_ordering` (`published`,`ordering`),
  KEY `default_published` (`default`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=4 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_lists'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_comprofiler_members`;

#
# Table structure for table 'jos_comprofiler_members'
#

CREATE TABLE `jos_comprofiler_members` (
  `referenceid` int(11) NOT NULL default '0',
  `memberid` int(11) NOT NULL default '0',
  `accepted` tinyint(1) NOT NULL default '1',
  `pending` tinyint(1) NOT NULL default '0',
  `membersince` date NOT NULL default '0000-00-00',
  `reason` mediumtext,
  `description` varchar(255) default NULL,
  `type` mediumtext,
  PRIMARY KEY  (`referenceid`,`memberid`),
  KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`),
  KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`),
  KEY `membrefid` (`memberid`,`referenceid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_members'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_comprofiler_plugin`;

#
# Table structure for table 'jos_comprofiler_plugin'
#

CREATE TABLE `jos_comprofiler_plugin` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `type` varchar(100) default '',
  `folder` varchar(100) default '',
  `backend_menu` varchar(255) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`),
  KEY `type_pub_order` (`type`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=528 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_plugin'
#

LOCK TABLES `jos_comprofiler_plugin` WRITE;
/*!40000 ALTER TABLE `jos_comprofiler_plugin` DISABLE KEYS*/;
INSERT INTO `jos_comprofiler_plugin` (`id`, `name`, `element`, `type`, `folder`, `backend_menu`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
	(1,'CB Core','cb.core','user','plug_cbcore','',0,1,1,1,0,'0','0000-00-00 00:00:00',''),
	(2,'CB Connections','cb.connections','user','plug_cbconnections','',0,3,1,1,0,'0','0000-00-00 00:00:00',''),
	(3,'Content Author','cb.authortab','user','plug_cbmamboauthortab','',0,4,1,1,0,'0','0000-00-00 00:00:00',''),
	(4,'Forum integration','cb.simpleboardtab','user','plug_cbsimpleboardtab','',0,5,0,1,0,'0','0000-00-00 00:00:00',''),
	(5,'Mamblog Blog','cb.mamblogtab','user','plug_cbmamblogtab','',0,6,0,1,0,'0','0000-00-00 00:00:00',''),
	(6,'YaNC Newsletters','yanc','user','plug_yancintegration','',0,7,0,1,0,'0','0000-00-00 00:00:00',''),
	(7,'Default','default','templates','default','',0,1,1,1,0,'0','0000-00-00 00:00:00',''),
	(8,'WinClassic','winclassic','templates','winclassic','',0,2,1,1,0,'0','0000-00-00 00:00:00',''),
	(9,'WebFX','webfx','templates','webfx','',0,3,1,1,0,'0','0000-00-00 00:00:00',''),
	(10,'OSX','osx','templates','osx','',0,4,1,1,0,'0','0000-00-00 00:00:00',''),
	(11,'Luna','luna','templates','luna','',0,5,1,1,0,'0','0000-00-00 00:00:00',''),
	(12,'Dark','dark','templates','dark','',0,6,1,1,0,'0','0000-00-00 00:00:00',''),
	(13,'Default language (English)','default_language','language','default_language','',0,-1,1,1,0,'0','0000-00-00 00:00:00',''),
	(14,'CB Menu','cb.menu','user','plug_cbmenu','',0,2,1,1,0,'0','0000-00-00 00:00:00',''),
	(15,'Private Message System','pms.mypmspro','user','plug_pms_mypmspro','',0,8,0,1,0,'0','0000-00-00 00:00:00',''),
	(526,'Auction Factory - My Settings','auction_my_settings.plugin','user','plug_auction_my_settings','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(525,'Auction Factory - My TaskPad','auction_my_taskpad.plugin','user','plug_auction_my_taskpad','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(524,'Auction Factory - My TaskPad','auction_my_taskpad.plugin','user','plug_auction_my_taskpad','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(523,'Auction Factory - My Won Bids','auction_my_wonbids.plugin','user','plug_auction_my_wonbids','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(522,'Auction Factory - My Won Bids','auction_my_wonbids.plugin','user','plug_auction_my_wonbids','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(521,'Auction Factory - My Watchlist','auction_my_watchlist.plugin','user','plug_auction_my_watchlist','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(520,'Auction Factory - My Watchlist','auction_my_watchlist.plugin','user','plug_auction_my_watchlist','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(519,'Auction Factory - My Ratings','auction_my_ratings.plugin','user','plug_auction_my_ratings','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(518,'Auction Factory - My Ratings','auction_my_ratings.plugin','user','plug_auction_my_ratings','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(517,'Auction Factory - My Bids','auction_my_bids.plugin','user','plug_auction_my_bids','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(516,'Auction Factory - My Bids','auction_my_bids.plugin','user','plug_auction_my_bids','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(515,'Auction Factory - My Auctions','auction_my_auctions.plugin','user','plug_auction_my_auctions','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(514,'Auction Factory - My Auctions','auction_my_auctions.plugin','user','plug_auction_my_auctions','',0,99,1,0,0,'0','0000-00-00 00:00:00',''),
	(527,'Auction Factory - My Settings','auction_my_settings.plugin','user','plug_auction_my_settings','',0,99,1,0,0,'0','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_comprofiler_plugin` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_comprofiler_sessions`;

#
# Table structure for table 'jos_comprofiler_sessions'
#

CREATE TABLE `jos_comprofiler_sessions` (
  `username` varchar(50) NOT NULL default '',
  `userid` int(11) unsigned NOT NULL default '0',
  `ui` tinyint(4) NOT NULL default '0',
  `incoming_ip` varchar(39) NOT NULL default '',
  `client_ip` varchar(39) NOT NULL default '',
  `session_id` varchar(33) NOT NULL default '',
  `session_data` mediumtext NOT NULL,
  `expiry_time` int(14) unsigned NOT NULL default '0',
  PRIMARY KEY  (`session_id`),
  KEY `expiry_time` (`expiry_time`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_sessions'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_comprofiler_tabs`;

#
# Table structure for table 'jos_comprofiler_tabs'
#

CREATE TABLE `jos_comprofiler_tabs` (
  `tabid` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `description` text,
  `ordering` int(11) NOT NULL default '0',
  `ordering_register` int(11) NOT NULL default '10',
  `width` varchar(10) NOT NULL default '.5',
  `enabled` tinyint(1) NOT NULL default '1',
  `pluginclass` varchar(255) default NULL,
  `pluginid` int(11) default NULL,
  `fields` tinyint(1) NOT NULL default '1',
  `params` mediumtext,
  `sys` tinyint(4) NOT NULL default '0',
  `displaytype` varchar(255) NOT NULL default '',
  `position` varchar(255) NOT NULL default '',
  `useraccessgroupid` int(9) NOT NULL default '-2',
  PRIMARY KEY  (`tabid`),
  KEY `enabled_position_ordering` (`enabled`,`position`,`ordering`),
  KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=37 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_tabs'
#

LOCK TABLES `jos_comprofiler_tabs` WRITE;
/*!40000 ALTER TABLE `jos_comprofiler_tabs` DISABLE KEYS*/;
INSERT INTO `jos_comprofiler_tabs` (`tabid`, `title`, `description`, `ordering`, `ordering_register`, `width`, `enabled`, `pluginclass`, `pluginid`, `fields`, `params`, `sys`, `displaytype`, `position`, `useraccessgroupid`) VALUES
	(11,'_UE_CONTACT_INFO_HEADER','',-4,10,'1',1,'getContactTab',1,1,NULL,2,'tab','cb_tabmain',-2),
	(12,'_UE_AUTHORTAB','',-3,10,'1',0,'getAuthorTab',3,0,NULL,1,'tab','cb_tabmain',-2),
	(13,'_UE_FORUMTAB','',-2,10,'1',0,'getForumTab',4,1,NULL,1,'tab','cb_tabmain',-2),
	(14,'_UE_BLOGTAB','',-1,10,'1',0,'getBlogTab',5,0,NULL,1,'tab','cb_tabmain',-2),
	(15,'_UE_CONNECTION','',99,10,'1',0,'getConnectionTab',2,0,NULL,1,'tab','cb_tabmain',-2),
	(16,'_UE_NEWSLETTER_HEADER','_UE_NEWSLETTER_INTRODCUTION',99,10,'1',0,'getNewslettersTab',6,0,NULL,1,'tab','cb_tabmain',-2),
	(17,'_UE_MENU','',-10,10,'1',1,'getMenuTab',14,0,NULL,1,'html','cb_head',-2),
	(18,'_UE_CONNECTIONPATHS','',-9,10,'1',1,'getConnectionPathsTab',2,0,NULL,1,'html','cb_head',-2),
	(19,'_UE_PROFILE_PAGE_TITLE','',-8,10,'1',1,'getPageTitleTab',1,0,NULL,1,'html','cb_head',-2),
	(20,'_UE_PORTRAIT','',-7,10,'1',1,'getPortraitTab',1,1,NULL,1,'html','cb_middle',-2),
	(21,'_UE_USER_STATUS','',-6,10,'.5',1,'getStatusTab',14,1,NULL,1,'html','cb_right',-2),
	(22,'_UE_PMSTAB','',-5,10,'.5',0,'getmypmsproTab',15,0,NULL,1,'html','cb_right',-2),
	(35,'Auction Taskpad',NULL,999,10,'.5',1,'myTaskPad',525,0,NULL,0,'tab','cb_tabmain',-2),
	(34,'My Won Bids',NULL,999,10,'.5',1,'getmywonbidsTab',523,0,NULL,0,'tab','cb_tabmain',-2),
	(33,'My Watchlist',NULL,999,10,'.5',1,'getmywatchlistTab',521,0,NULL,0,'tab','cb_tabmain',-2),
	(32,'My Ratings',NULL,999,10,'.5',1,'getmyratingsTab',519,0,NULL,0,'tab','cb_tabmain',-2),
	(31,'My Bids',NULL,999,10,'.5',1,'getmybidsTab',517,0,NULL,0,'tab','cb_tabmain',-2),
	(30,'My Auctions',NULL,999,10,'.5',1,'getmyauctionsTab',515,0,NULL,0,'tab','cb_tabmain',-2),
	(36,'My Settings',NULL,999,10,'.5',1,'getmysettingsTab',527,0,NULL,0,'tab','cb_tabmain',-2);
/*!40000 ALTER TABLE `jos_comprofiler_tabs` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_comprofiler_userreports`;

#
# Table structure for table 'jos_comprofiler_userreports'
#

CREATE TABLE `jos_comprofiler_userreports` (
  `reportid` int(11) NOT NULL auto_increment,
  `reporteduser` int(11) NOT NULL default '0',
  `reportedbyuser` int(11) NOT NULL default '0',
  `reportedondate` date NOT NULL default '0000-00-00',
  `reportexplaination` text NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`reportid`),
  KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`),
  KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`)
) ENGINE=MyISAM AUTO_INCREMENT=11 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_userreports'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_comprofiler_views`;

#
# Table structure for table 'jos_comprofiler_views'
#

CREATE TABLE `jos_comprofiler_views` (
  `viewer_id` int(11) NOT NULL default '0',
  `profile_id` int(11) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  `lastview` datetime NOT NULL default '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL default '0',
  `vote` tinyint(3) default NULL,
  `lastvote` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`viewer_id`,`profile_id`,`lastip`),
  KEY `lastview` (`lastview`),
  KEY `profile_id_lastview` (`profile_id`,`lastview`,`viewer_id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_comprofiler_views'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_contact_details`;

#
# Table structure for table 'jos_contact_details'
#

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_contact_details'
#

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS*/;
INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
	(1,'administrator','administrator','','','','','','','','','','',NULL,'',0,1,'0','0000-00-00 00:00:00',1,'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',62,2,0,'','');
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_contacts_buy`;

#
# Table structure for table 'jos_contacts_buy'
#

CREATE TABLE `jos_contacts_buy` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_contacts_buy'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_content`;

#
# Table structure for table 'jos_content'
#

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_content'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_content_frontpage`;

#
# Table structure for table 'jos_content_frontpage'
#

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_content_frontpage'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_content_rating`;

#
# Table structure for table 'jos_content_rating'
#

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_content_rating'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_core_acl_aro`;

#
# Table structure for table 'jos_core_acl_aro'
#

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=15 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_acl_aro'
#

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS*/;
INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
	(10,'users','62',0,'Administrator',0),
	(11,'users','63',0,'test',0),
	(12,'users','64',0,'test2',0),
	(13,'users','65',0,'test3',0),
	(14,'users','66',0,'test4',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;

#
# Table structure for table 'jos_core_acl_aro_groups'
#

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_acl_aro_groups'
#

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS*/;
INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
	(17,0,'ROOT',1,22,'ROOT'),
	(28,17,'USERS',2,21,'USERS'),
	(29,28,'Public Frontend',3,12,'Public Frontend'),
	(18,29,'Registered',4,11,'Registered'),
	(19,18,'Author',5,10,'Author'),
	(20,19,'Editor',6,9,'Editor'),
	(21,20,'Publisher',7,8,'Publisher'),
	(30,28,'Public Backend',13,20,'Public Backend'),
	(23,30,'Manager',14,19,'Manager'),
	(24,23,'Administrator',15,18,'Administrator'),
	(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_core_acl_aro_map`;

#
# Table structure for table 'jos_core_acl_aro_map'
#

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_acl_aro_map'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;

#
# Table structure for table 'jos_core_acl_aro_sections'
#

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_acl_aro_sections'
#

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS*/;
INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
	(10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;

#
# Table structure for table 'jos_core_acl_groups_aro_map'
#

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_acl_groups_aro_map'
#

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS*/;
INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
	(18,'',11),
	(18,'',12),
	(18,'',13),
	(18,'',14),
	(25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_core_log_items`;

#
# Table structure for table 'jos_core_log_items'
#

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_log_items'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_core_log_searches`;

#
# Table structure for table 'jos_core_log_searches'
#

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_core_log_searches'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_groups`;

#
# Table structure for table 'jos_groups'
#

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_groups'
#

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS*/;
INSERT INTO `jos_groups` (`id`, `name`) VALUES
	(0,'Public'),
	(1,'Registered'),
	(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_menu`;

#
# Table structure for table 'jos_menu'
#

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=12 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_menu'
#

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS*/;
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
	(1,'mainmenu','Home','home','index.php?option=com_bids&view=auctions','component',1,'0','54',0,2,'0','0000-00-00 00:00:00',0,0,0,3,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','1'),
	(11,'mainmenu','test','test','index.php?option=com_content&view=archive','component',-2,'0','20',2,1,'0','0000-00-00 00:00:00',0,0,0,0,'orderby=\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(2,'mainmenu','Categories Grid View','categories','index.php?option=com_bids&view=category','component',1,'0','54',0,3,'0','0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(3,'mainmenu','Categories List View','tree-categories','index.php?option=com_bids&view=category&layout=tree','component',1,'2','54',1,1,'0','0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(4,'mainmenu','Show Auctions','show-auctions','index.php?option=com_bids&view=auctions','component',0,'0','54',0,4,'0','0000-00-00 00:00:00',0,0,0,0,'','0','0','0'),
	(5,'mainmenu','Search Auctions','search-auctions','index.php?option=com_bids&view=bids&layout=search','component',1,'0','54',0,5,'0','0000-00-00 00:00:00',0,0,0,0,'','0','0','0'),
	(6,'mainmenu','Search Auctioneers','search-auctioneers','index.php?option=com_bids&view=user&layout=searchusers','component',1,'0','54',0,6,'0','0000-00-00 00:00:00',0,0,0,0,'','0','0','0'),
	(7,'mainmenu','My Control Panel','auctioneer-profile','index.php?option=com_bids&view=user','component',1,'0','54',0,7,'0','0000-00-00 00:00:00',0,0,1,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(8,'mainmenu','Post Offer','post-offer','index.php?option=com_bids&view=auction&layout=form','component',1,'7','54',1,2,'0','0000-00-00 00:00:00',0,0,1,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(9,'mainmenu','My Auctions','my-auctions','index.php?option=com_bids&view=auctions&layout=myauctions','component',1,'7','54',1,3,'0','0000-00-00 00:00:00',0,0,1,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0'),
	(10,'mainmenu','My Profile','my-profile','index.php?option=com_comprofiler','component',1,'7','37',1,1,'0','0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n','0','0','0');
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_menu_types`;

#
# Table structure for table 'jos_menu_types'
#

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_menu_types'
#

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS*/;
INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
	('1','mainmenu','Main Menu','The main menu for the site'),
	('2','Auctions-Menu','Auctions Menu',''),
	('3','Auctions-User-Menu','Auctions User Menu',''),
	('4','Hidden-Menu','Hidden Menu','');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_messages`;

#
# Table structure for table 'jos_messages'
#

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_messages'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_messages_cfg`;

#
# Table structure for table 'jos_messages_cfg'
#

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_messages_cfg'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_migration_backlinks`;

#
# Table structure for table 'jos_migration_backlinks'
#

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_migration_backlinks'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_modules`;

#
# Table structure for table 'jos_modules'
#

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=33 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_modules'
#

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS*/;
INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
	(1,'Main Menu','',0,'hidden','0','0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=10\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),
	(2,'Login','',1,'login','0','0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),
	(3,'Popular','',3,'cpanel','0','0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),
	(4,'Recent added Articles','',4,'cpanel','0','0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),
	(5,'Menu Stats','',5,'cpanel','0','0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),
	(6,'Unread Messages','',1,'header','0','0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),
	(7,'Online Users','',2,'header','0','0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),
	(8,'Toolbar','',1,'toolbar','0','0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),
	(9,'Quick Icons','',1,'icon','0','0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),
	(10,'Logged in Users','',2,'cpanel','0','0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),
	(11,'Footer','',0,'footer','0','0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),
	(12,'Admin Menu','',1,'menu','0','0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),
	(13,'Admin SubMenu','',1,'submenu','0','0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),
	(14,'User Status','',1,'status','0','0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),
	(15,'Title','',1,'title','0','0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),
	(16,'Welcome','',0,'user1','0','0000-00-00 00:00:00',1,'mod_cblogin',0,0,1,'moduleclass_sfx=\nhorizontal=0\ncompact=1\npretext=\nposttext=\nlogoutpretext=\nlogoutposttext=\nlogin=\nlogout=index.php\nshow_lostpass=1\nshow_newaccount=1\nshow_username_pass_icons=0\nname_lenght=14\npass_lenght=14\nshow_buttons_icons=0\nshow_remind_register_icons=0\nlogin_message=0\nlogout_message=0\nremember_enabled=1\ngreeting=1\nname=0\nshow_avatar=0\navatar_position=default\ntext_show_profile=\ntext_edit_profile=\npms_type=0\nshow_pms=0\nshow_connection_notifications=0\nhttps_post=0\ncb_plugins=0\n\n',0,0,''),
	(17,'Auctions Menu','',0,'user2','0','0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=Auctions-Menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=side-menu\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),
	(18,'Auctions User Menu','',0,'user3','0','0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=Auctions-User-Menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=side-menu\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),
	(19,'AF Latest Auctions','',0,'user1','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=0\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,''),
	(20,'AF Popular Auctions','',8,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'type_display=1',0,0,''),
	(21,'AF Most Valueable Auctions','',7,'left','0','0000-00-00 00:00:00',0,'mod_bids',0,0,1,'type_display=2',0,0,''),
	(22,'AF Random Auctions','',6,'left','0','0000-00-00 00:00:00',0,'mod_bids',0,0,1,'type_display=3',0,0,''),
	(23,'AF Featured Auctions','',5,'left','0','0000-00-00 00:00:00',0,'mod_bids',0,0,1,'type_display=4',0,0,''),
	(24,'AF Category Tree','',0,'user1','0','0000-00-00 00:00:00',1,'mod_auctioncattree',0,0,1,'moduleclass_sfx=\ncategory_counter=0\n\n',0,0,''),
	(25,'AF Full Category Tree','',0,'user1','0','0000-00-00 00:00:00',0,'mod_auctionfulltree',0,0,1,'moduleclass_sfx=\nfold_speed=250\ncategory_counter=0\ndisplay_subcategories_nr=0\ntheming=default\n\n',0,0,''),
	(26,'AF Tag Cloud Module','',2,'left','0','0000-00-00 00:00:00',0,'mod_bidscloud',0,0,1,'',0,0,''),
	(27,'Logo','<div style=\"float:left; margin-right:10px;\"><img src=\"images/stories/logo.png\" border=\"0\" width=\"65\" height=\"65\" /></div>\r\n<div style=\"float:left; margin-right:10px; font-size:30px;color:#ffffff; margin-top:20px;\">Company Name</div>',0,'logo','0','0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),
	(28,'Lastest Auction','',9,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=0\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,''),
	(29,'Popular Auctions','',10,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=1\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,''),
	(30,'Most Valuable Auction','',11,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=2\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,''),
	(31,'Random Auction','',12,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=3\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,''),
	(32,'Featured Auction','',13,'left','0','0000-00-00 00:00:00',1,'mod_bids',0,0,1,'moduleclass_sfx=\ntype_display=4\ndisplay_image=0\ndisplay_counter=0\nimage_width=30\nimage_height=30\nnr_auctions_displayed=5\nsort_by=start_date\nfeatured=\n\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_modules_menu`;

#
# Table structure for table 'jos_modules_menu'
#

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_modules_menu'
#

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS*/;
INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
	(1,0),
	(16,0),
	(17,0),
	(18,0),
	(19,0),
	(20,0),
	(21,0),
	(22,0),
	(23,0),
	(24,0),
	(25,0),
	(26,0),
	(27,0),
	(28,0),
	(29,0),
	(30,0),
	(31,0),
	(32,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_newsfeeds`;

#
# Table structure for table 'jos_newsfeeds'
#

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_newsfeeds'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_plugins`;

#
# Table structure for table 'jos_plugins'
#

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=38 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_plugins'
#

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS*/;
INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
	(1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,'0','0000-00-00 00:00:00',''),
	(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,'0','0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
	(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,'0','0000-00-00 00:00:00',''),
	(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,'0','0000-00-00 00:00:00',''),
	(5,'User - Joomla!','joomla','user',0,0,1,0,0,'0','0000-00-00 00:00:00','autoregister=1\n\n'),
	(6,'Search - Content','content','search',0,1,1,1,0,'0','0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
	(7,'Search - Contacts','contacts','search',0,3,1,1,0,'0','0000-00-00 00:00:00','search_limit=50\n\n'),
	(8,'Search - Categories','categories','search',0,4,1,0,0,'0','0000-00-00 00:00:00','search_limit=50\n\n'),
	(9,'Search - Sections','sections','search',0,5,1,0,0,'0','0000-00-00 00:00:00','search_limit=50\n\n'),
	(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,'0','0000-00-00 00:00:00','search_limit=50\n\n'),
	(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,'0','0000-00-00 00:00:00','search_limit=50\n\n'),
	(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,'0','0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
	(13,'Content - Rating','vote','content',0,4,1,1,0,'0','0000-00-00 00:00:00',''),
	(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,'0','0000-00-00 00:00:00','mode=1\n\n'),
	(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,'0','0000-00-00 00:00:00',''),
	(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,'0','0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),
	(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,'0','0000-00-00 00:00:00','position=1\n\n'),
	(18,'Editor - No Editor','none','editors',0,0,1,1,0,'0','0000-00-00 00:00:00',''),
	(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,'0','0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
	(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,'0','0000-00-00 00:00:00',''),
	(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,'0','0000-00-00 00:00:00',''),
	(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,'0','0000-00-00 00:00:00',''),
	(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,'0','0000-00-00 00:00:00',''),
	(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,'0','0000-00-00 00:00:00',''),
	(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,'0','0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),
	(27,'System - SEF','sef','system',0,1,1,0,0,'0','0000-00-00 00:00:00',''),
	(28,'System - Debug','debug','system',0,2,1,0,0,'0','0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),
	(29,'System - Legacy','legacy','system',0,3,0,1,0,'0','0000-00-00 00:00:00','route=0\n\n'),
	(30,'System - Cache','cache','system',0,4,0,1,0,'0','0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),
	(31,'System - Log','log','system',0,5,0,1,0,'0','0000-00-00 00:00:00',''),
	(32,'System - Remember Me','remember','system',0,6,1,1,0,'0','0000-00-00 00:00:00',''),
	(33,'System - Backlink','backlink','system',0,7,0,1,0,'0','0000-00-00 00:00:00',''),
	(34,'System - Mootools Upgrade','mtupgrade','system',0,8,0,1,0,'0','0000-00-00 00:00:00',''),
	(35,'Search - Bids','bids','search',0,0,1,0,0,'0','0000-00-00 00:00:00','search_limit=50'),
	(36,'System - UDDE - Auctions','system.udde','system',0,0,1,0,0,'0','0000-00-00 00:00:00',''),
	(37,'System - Mobile Templates Plugin','mobilebot','system',0,0,1,0,0,'62','2011-04-26 05:12:31','mobile=1\nmobile_list=acer, alcatel, android, audiovox, avantgo, blackberry, blazer, cdm, digital paths, elaine, epoc, ericsson, handspring, iemobile, kyocera, lg, midp, mmp, mobile, motorola, nec, nokia, o2, openwave, opera mini, operamini, opwv, palm, panasonic, pda, phone, playstation portable, pocket, psp, qci, sagem, sanyo, samsung, sec, sendo, sharp, smartphone, sonyericsson, symbian, telit, tsm, up-browser, up.browser, up.link, vodafone, wap, windows ce, xiino\nmobile_subdomain=0\nmobile_subdomainname=m\nmobile_template=beez\nmobile_redirect=0\nmobile_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\niphone=0\niphone_list=ipod, iphone\niphone_subdomain=0\niphone_subdomainname=i\niphone_template=iphone\niphone_redirect=0\niphone_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\nblackberry=0\nblackberry_list=blackberry\nblackberry_subdomain=0\nblackberry_subdomainname=b\nblackberry_template=blackberry\nblackberry_redirect=0\nblackberry_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\noperamini=0\noperamini_list=opera mini\noperamini_subdomain=0\noperamini_subdomainname=o\noperamini_template=operamini\noperamini_redirect=0\noperamini_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\nandroid=0\nandroid_list=android\nandroid_subdomain=0\nandroid_subdomainname=a\nandroid_template=android\nandroid_redirect=0\nandroid_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\ncustom1=0\ncustom1_list=\ncustom1_subdomain=0\ncustom1_subdomainname=\ncustom1_template=\ncustom1_redirect=0\ncustom1_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\ncustom2=0\ncustom2_list=\ncustom2_subdomain=0\ncustom2_subdomainname=\ncustom2_template=\ncustom2_redirect=0\ncustom2_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\nremoveimg=0\nremoveiframe=0\nremoveobject=0\nremoveapplet=0\nremoveembed=0\nremovescript=0\ngeneral_php=<?php \\n/* PHP Code\\n * The whole page is contained in the $html var,\\n * you can modify it\'s value however you want,\\n * just be careful! :) \\n * i.e. $html = str_replace(\'remove-this\', \'\', $html);\\n */\\n?>\n\n');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_poll_data`;

#
# Table structure for table 'jos_poll_data'
#

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_poll_data'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_poll_date`;

#
# Table structure for table 'jos_poll_date'
#

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_poll_date'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_poll_menu`;

#
# Table structure for table 'jos_poll_menu'
#

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_poll_menu'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_polls`;

#
# Table structure for table 'jos_polls'
#

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_polls'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_sections`;

#
# Table structure for table 'jos_sections'
#

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_sections'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_session`;

#
# Table structure for table 'jos_session'
#

CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_session'
#

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS*/;
INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
	('admin','1304393871','e45ka4t6iqn6juu8afij06e1s4',0,62,'Super Administrator',25,1,'__default|a:8:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1304393860;s:18:\"session.timer.last\";i:1304393865;s:17:\"session.timer.now\";i:1304393871;s:22:\"session.client.browser\";s:113:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.16) Gecko/20110319 AlexaToolbar/alxf-2.01 Firefox/3.6.16\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:3:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:10:\"com_cpanel\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:9:\"mtupgrade\";O:8:\"stdClass\":1:{s:7:\"checked\";b:1;}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"admin@gmail.com\";s:8:\"password\";s:65:\"ca017eb3a9e52e4504f04f117fb749b4:yUPLCNrwy05ZquRPpKgY7OWAAeEOILPS\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2011-04-12 11:02:32\";s:13:\"lastvisitDate\";s:19:\"2011-04-29 10:51:59\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:56:\"admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:73:\"C:\\applications\\justin_loh\\htdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":5:{s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:1:\"0\";}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"6aff085c782ff08d611cce4610dfc70a\";}'),
	('','1304393853','lbs6er10kmscq0dedulgq2bri4',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1304393853;s:18:\"session.timer.last\";i:1304393853;s:17:\"session.timer.now\";i:1304393853;s:22:\"session.client.browser\";s:113:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.16) Gecko/20110319 AlexaToolbar/alxf-2.01 Firefox/3.6.16\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:8:\"com_bids\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"auctions\";O:8:\"stdClass\":1:{s:8:\"auctions\";O:8:\"stdClass\":1:{s:11:\"filter_type\";s:0:\"\";}}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:73:\"C:\\applications\\justin_loh\\htdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}t_display_style|s:4:\"list\";'),
	('','1304393864','061ckotsmigm53urnhtqgtduh6',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1304393860;s:18:\"session.timer.last\";i:1304393860;s:17:\"session.timer.now\";i:1304393861;s:22:\"session.client.browser\";s:113:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.16) Gecko/20110319 AlexaToolbar/alxf-2.01 Firefox/3.6.16\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:73:\"C:\\applications\\justin_loh\\htdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"6aff085c782ff08d611cce4610dfc70a\";}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_stats_agents`;

#
# Table structure for table 'jos_stats_agents'
#

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_stats_agents'
#

# (No data found.)



DROP TABLE IF EXISTS `jos_templates_menu`;

#
# Table structure for table 'jos_templates_menu'
#

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_templates_menu'
#

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS*/;
INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
	('beez',0,0),
	('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_users`;

#
# Table structure for table 'jos_users'
#

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=67 /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_users'
#

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS*/;
INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
	(62,'Administrator','admin','admin@gmail.com','ca017eb3a9e52e4504f04f117fb749b4:yUPLCNrwy05ZquRPpKgY7OWAAeEOILPS','Super Administrator',0,1,25,'2011-04-12 11:02:32','2011-05-03 03:37:45','','admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n'),
	(63,'test','test','test@name1price.com','6f852ecb3ccf238711e80043527931b0:tlOFemAKd5Poxp1LwdbqtYMTsrMDt68q','Registered',0,0,18,'2011-04-13 05:36:42','2011-04-29 10:52:03','','language=\ntimezone=0\n\n'),
	(64,'test2','test2','test2@name1price.com','cec4f59ef89ccabc975d0c64091f9429:zAruEwrVRiM8Ymji16Erelh7M8nyrmMY','Registered',0,0,18,'2011-04-13 07:26:57','2011-04-13 07:29:58','','language=\ntimezone=0\n\n'),
	(65,'test3','test3','test3@test.com','aa96305adf5ca9a5545506259cbe19da:vr8IkQMnpKsxiMRS289Tbj16KeRKfyIX','Registered',1,0,18,'2011-04-17 17:28:44','0000-00-00 00:00:00','','\n'),
	(66,'test4','test4','test4@test.com','ac08d935a109c6683dc363c5076eb6f8:DRDSReb5yC4GWvnzb48nJpF96DEITa3I','Registered',0,0,18,'2011-04-17 17:29:55','2011-04-17 17:30:00','','\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS*/;
UNLOCK TABLES;


DROP TABLE IF EXISTS `jos_weblinks`;

#
# Table structure for table 'jos_weblinks'
#

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM /*!40100 DEFAULT CHARSET=utf8*/;



#
# Dumping data for table 'jos_weblinks'
#

# (No data found.)

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS*/;
