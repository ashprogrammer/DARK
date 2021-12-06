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

CREATE TABLE `connect_table` (
  `id_connect` int(11) NOT NULL,
  `id_person` int(11) DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL,
  `id_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `event_age` (
  `id_event` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `photo_alt` varchar(30),
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `person` (
  `id_person` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `photo_alt` varchar(30),
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `season` (
  `id_season` int(11) NOT NULL,
  `season` varchar(5) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `year_season` (
  `id_year` int(11) NOT NULL,
  `year_s` varchar(5) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `person`(`name`, `lastname`, `photo`, `photo_alt`, `id_admin`) VALUES ('Martha', 'Nielsen', '../img/Persons/martha2003.jpg', 'Martha Nielsen', '1');