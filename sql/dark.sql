SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `pass` text DEFAULT NULL,
  `imie` varchar(30) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id_admin`, `login`, `pass`, `imie`, `nazwisko`) VALUES
(1, 'GHVST', 'admin1', 'Szymon', 'Bajor'),
(2, 'Liliana', 'Cichecka', 'Liliana', 'Cichecka'),
(3, 'Michal', 'Knop', 'Michal', 'Knop');

CREATE TABLE `connect_table` (
  `id_connect` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL,
  `id_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `connect_table` (`id_connect`, `id_person`, `id_event`, `id_season`, `id_year`) VALUES
(4, 3, 2, 2, 3),
(8, 4, 2, 2, 1),
(9, 6, 2, 3, 1),
(10, 12, 2, 3, 1),
(11, 13, 2, 2, 3),
(12, 14, 2, 4, 1),
(13, 15, 2, 2, 1),
(14, 15, 2, 3, 1),
(15, 15, 2, 4, 1),
(16, 16, 2, 2, 1),
(17, 16, 2, 3, 1),
(18, 17, 2, 2, 3),
(19, 18, 2, 2, 1);

CREATE TABLE `event_age` (
  `id_event` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `photo_alt` varchar(30) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `event_age` (`id_event`, `name`, `description`, `photo`, `photo_alt`, `id_admin`) VALUES
(2, 'Chernobyl eruption', 'Chernobyl eruption', '../img/Events/Chernobyl.jpg', 'Chernobyl eruption', 1);

CREATE TABLE `person` (
  `id_person` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `photo_alt` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `person` (`id_person`, `name`, `lastname`, `age`, `photo`, `photo_alt`, `description`, `id_admin`) VALUES
(3, 'Martha', 'Nielsen', '19', '../img/Persons/martha2003.jpg', 'Martha Nielsen', 'Martha Nielsen is the daughter of Ulrich and Katharina Nielsen and the sister of Magnus and Mikkel Nielsen. She attends Winden Comprehensive School.', 1),
(4, 'Claudia', 'Tiedemann', '50', '../img/Persons/claudia1942.jpg', 'Claudia Tiedemann', 'Claudia Tiedemann was a time traveler and the main opponent of the secret society Sic Mundus in the war for control of time travel..', 1),
(5, 'Charlote', 'Doppler', '40', '../img/Persons/charlotte1971.jpg', 'Charlote Dopler', 'Charlotte Doppler is chief of the Winden Police in 2019. She is married to Peter Doppler with whom she has two daughters, Franziska and Elisabeth.', 1),
(6, 'Hanno', 'Tauber', '30', '../img/Persons/noah1904.jpg', 'Noah', 'Noah, also known as Hanno Tauber, was a dedicated follower of Sic Mundus. He was the son of Bartosz and Silja Tiedemann and the brother of Agnes Nielsen.', 1),
(12, 'Egon', 'Tiedeman', '53', '../img/Persons/egon1922.jpg', 'Egon Tiedeman', 'Egon Tiedemann is the father of Claudia Tiedemann, the husband of Doris Tiedemann, and the Chief Inspector of Winden Police.', 1),
(13, 'Katharina', 'Nielsen', '40', '../img/Persons/katharina1970.jpg', 'Katharina Nielsen', 'Katharina Nielsen is the daughter of Helene and Hermann Albers. She is married to Ulrich Nielsen, with whom she has three children, Magnus, Martha, and Mikkel. In 2019, she is the principal of the Winden Comprehensive School.', 1),
(14, 'Bernd', 'Doppler', '67', '../img/Persons/bernd1913.jpg', 'Bernd Doppler', 'Bernd Doppler was the husband of Greta Doppler and the father of Helge Doppler. He was the director of the Winden Nuclear Power Plant from its founding until he was succeeded by Claudia Tiedemann in 1986.', 1),
(15, 'H.G.', 'Tannhaus', '38', '../img/Persons/hg.jpg', 'H.G. Tannhaus', 'Heinrich Gustav Tannhaus is a clockmaker who operates a shop in Winden, and the adoptive grandfather of Charlotte Doppler (real grandfather of Charlotte Tannhaus). He is the author of A Journey Through Time, a book which discusses black holes, spacetime, and similar subjects, and has appeared in educational videos teaching about the same.', 1),
(16, 'Ulrich', 'Nielsen', '42', '../img/Persons/ulrich1971.jpg', 'Ulrich Nielsen', 'Ulrich Nielsen is a headstrong police officer. He is married to Katharina Nielsen but has an affair with Hannah Kahnwald. Following the disappearance of one of his children, Mikkel, he fiercely attempts to find him, becoming entangled in Windens mysteries.', 1),
(17, 'Aleksander', 'Tiedemann', '35', '../img/Persons/aleksander1966.jpg', 'Aleksander Tiedemann', 'Aleksander Tiedemann (previously Aleksander Köhler, originally Boris Niewald) is the director of the Winden Nuclear Power Plant. He is married to Regina, with whom he has a son, Bartosz.', 1),
(18, 'Charlotte', 'Doppler', '39', '../img/Persons/charlotte1971.jpg', 'Charlotte Doppler', 'Charlotte Doppler is chief of the Winden Police in 2019. She is married to Peter Doppler with whom she has two daughters, Franziska and Elisabeth.', 1);

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

CREATE TABLE `season` (
  `id_season` int(11) NOT NULL,
  `season` varchar(5) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `season` (`id_season`, `season`, `description`, `id_admin`) VALUES
(2, 'Seaso', 'Season 1', 1),
(3, 'Seaso', 'Season 2', 1),
(4, 'Seaso', 'Season 3', 1);

CREATE TABLE `year_season` (
  `id_year` int(11) NOT NULL,
  `year_s` varchar(5) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `year_season` (`id_year`, `year_s`, `description`, `id_admin`) VALUES
(1, '1986', '1986', 1),
(3, '2019', '2019', 1),
(4, '2052', '2052', 1);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

ALTER TABLE `connect_table`
  ADD PRIMARY KEY (`id_connect`),
  ADD KEY `id_person` (`id_person`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_season` (`id_season`),
  ADD KEY `id_year` (`id_year`);

ALTER TABLE `event_age`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `id_admin` (`id_admin`);

ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`),
  ADD KEY `id_admin` (`id_admin`);

ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

ALTER TABLE `season`
  ADD PRIMARY KEY (`id_season`),
  ADD KEY `id_admin` (`id_admin`);

ALTER TABLE `year_season`
  ADD PRIMARY KEY (`id_year`),
  ADD KEY `id_admin` (`id_admin`);


ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `connect_table`
  MODIFY `id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `event_age`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `season`
  MODIFY `id_season` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `year_season`
  MODIFY `id_year` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `connect_table`
  ADD CONSTRAINT `connect_table_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `person` (`id_person`),
  ADD CONSTRAINT `connect_table_ibfk_2` FOREIGN KEY (`id_event`) REFERENCES `event_age` (`id_event`),
  ADD CONSTRAINT `connect_table_ibfk_3` FOREIGN KEY (`id_season`) REFERENCES `season` (`id_season`),
  ADD CONSTRAINT `connect_table_ibfk_4` FOREIGN KEY (`id_year`) REFERENCES `year_season` (`id_year`);

ALTER TABLE `event_age`
  ADD CONSTRAINT `event_age_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

ALTER TABLE `season`
  ADD CONSTRAINT `season_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

ALTER TABLE `year_season`
  ADD CONSTRAINT `year_season_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
