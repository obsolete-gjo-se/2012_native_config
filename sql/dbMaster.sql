DROP DATABASE IF EXISTS `big5_dev`;
CREATE DATABASE  `big5_dev` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `invoice` varchar(50) NOT NULL DEFAULT '' COMMENT 'Transaktionsnummer',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Zeitstempel',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT 'User Email',
  `item_id` int(11) NOT NULL COMMENT 'ID Artikel',
  `item_name` varchar(100) NOT NULL DEFAULT '' COMMENT 'Artikelname',
  `amount` float(5,2) NOT NULL COMMENT 'Preis',
  `currency_code` varchar(5) NOT NULL DEFAULT '' COMMENT 'Währung',
  PRIMARY KEY (`invoice`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Artikelnummer',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'Matchcode',
  `desc` varchar(255) DEFAULT '' COMMENT 'Produktbeschreibung',
  `amount` float(5,2) NOT NULL COMMENT 'Preis',
  `currency_code` varchar(5) NOT NULL DEFAULT '' COMMENT 'Währung',
  PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID (Autoincrement)',
  `invoice` varchar(50) NOT NULL DEFAULT '' COMMENT 'Transaktionsnummer',
  `method` varchar(20) NOT NULL DEFAULT '' COMMENT 'PayPal, SharIt, Überweisung',
  `status` tinyint(1) DEFAULT NULL COMMENT 'Zahlung ok',
  PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `pay_paypal`;
CREATE TABLE `pay_paypal` (
  `txn_id` varchar(30) NOT NULL DEFAULT '' COMMENT 'PayPal Transaktionsnummer',
  `invoice` varchar(50) NOT NULL DEFAULT '' COMMENT 'Transaktionsnummer',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Zeitstempel',
  `payment_date` varchar(50) NOT NULL DEFAULT '' COMMENT 'Datums- und Uhrzeitstempel, der von PayPal generiert wurde [Format: "18:30:30 Jan 1, 2000 PST"]',
  `payment_status` varchar(15) NOT NULL DEFAULT '' COMMENT 'Status der Zahlung:',
  `payment_type` varchar(10) NOT NULL DEFAULT '' COMMENT 'Überweisung / Guthaben, Kreditkarte, Lastschrift',
  `pending_reason` varchar(10) DEFAULT '' COMMENT 'Grund, warum Zahlung offen ist (Pending)',
  `reason_code` varchar(20) DEFAULT '' COMMENT 'Rückzahlungscode',
  `txn_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'PayPal Transaktion - Typ',
  PRIMARY KEY (`txn_id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `pay_voucher`;
CREATE TABLE `pay_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID/Autoincrement',
  `invoice` varchar(50) NOT NULL DEFAULT '' COMMENT 'Transaktionsnummer',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Zeitstempel',
  `voucher_id` int(11) NOT NULL COMMENT 'Voucher ID',
  PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `ptest`;
CREATE TABLE `ptest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Zeitstempel',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT 'User Email',
  `abenteuer_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `abenteuer_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `abenteuer_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aesthetik_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aesthetik_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aesthetik_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aktiv_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aktiv_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `aktiv_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `altruismus_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `altruismus_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `altruismus_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `angst_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `angst_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `angst_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `befang_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `befang_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `befang_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `bescheiden_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `bescheiden_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `bescheiden_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `disziplin_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `disziplin_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `disziplin_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `durchsetz_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `durchsetz_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `durchsetz_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `emotion_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `emotion_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `emotion_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `entgegen_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `entgegen_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `entgegen_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `fantasie_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `fantasie_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `fantasie_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `freimut_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `freimut_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `freimut_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `gesell_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `gesell_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `gesell_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `glueck_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `glueck_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `glueck_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `herzlich_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `herzlich_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `herzlich_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `impuls_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `impuls_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `impuls_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `intellekt_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `intellekt_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `intellekt_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `kompetenz_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `kompetenz_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `kompetenz_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `leistung_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `leistung_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `leistung_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `liberal_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `liberal_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `liberal_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `mitgefuehl_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `mitgefuehl_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `mitgefuehl_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `neugier_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `neugier_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `neugier_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `ordnung_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `ordnung_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `ordnung_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pessi_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pessi_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pessi_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pflicht_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pflicht_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `pflicht_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `reizbar_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `reizbar_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `reizbar_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `sorgfalt_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `sorgfalt_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `sorgfalt_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `verletz_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `verletz_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `verletz_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `vertrauen_01` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `vertrauen_02` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  `vertrauen_03` tinyint(1) NOT NULL COMMENT 'Anwort-Wert 1 bis 5',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
  `id` tinyint(4) NOT NULL COMMENT 'ID (Zufallszahl)',
  `short` varchar(20) DEFAULT '' COMMENT 'Kurzbeschreibung Frage (gesell_01)',
  `long` varchar(255) DEFAULT '' COMMENT 'Frage ausführlich',
  `head` varchar(255) DEFAULT NULL COMMENT 'Stichpunkt zur Frage / Aussage\r\n',
  `pos` tinyint(1) DEFAULT NULL COMMENT 'positive Formulierung',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE `sitemap` (
  `id` tinyint(4) NOT NULL COMMENT 'ID',
  `titel` varchar(255) DEFAULT NULL COMMENT 'Titel',
  `language` varchar(2) DEFAULT NULL COMMENT 'Sprache',
  `keyword` varchar(255) DEFAULT NULL COMMENT 'Keywords',
  `desc` varchar(255) DEFAULT NULL COMMENT 'Description',
  `robots` varchar(20) DEFAULT NULL COMMENT 'Robots',
  `directory` varchar(100) DEFAULT NULL COMMENT 'Verzeichnis',
  `name` varchar(50) DEFAULT NULL COMMENT 'Dateiname',
  `typ` varchar(4) DEFAULT NULL COMMENT 'Dateityp',
  `path` varchar(200) DEFAULT NULL COMMENT 'Dateipfad',
  `lp` tinyint(1) DEFAULT NULL COMMENT 'ist Landingpage',
  `om` tinyint(1) DEFAULT NULL COMMENT 'nur für Mitglieder',
  `payed` tinyint(1) DEFAULT NULL COMMENT 'nur für bezahlte Tests',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `titel` (`titel`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(100) NOT NULL COMMENT 'Email Adresse',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT 'Passwort',
  `firstname` varchar(100) NOT NULL DEFAULT '' COMMENT 'Vorname',
  `s_id` varchar(100) DEFAULT '' COMMENT 'Session ID',
  PRIMARY KEY (`email`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;

DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID/Autoincrement',
  `str` varchar(20) NOT NULL DEFAULT '' COMMENT 'Zufallscode',
  `reserv` tinyint(1) DEFAULT NULL COMMENT 'reserviert',
  `used` tinyint(1) DEFAULT NULL COMMENT 'benutzt',
  PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_general_ci;