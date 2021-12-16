SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `admin` (
  id_admin int(11) NOT NULL,
  login varchar(30) DEFAULT NULL,
  pass text DEFAULT NULL,
  imie varchar(30) DEFAULT NULL,
  nazwisko varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO admin (id_admin, login, pass, imie, nazwisko) VALUES
(1, 'GHVST', 'admin1', 'Szymon', 'Bajor'),
(2, 'Liliana', 'Cichecka', 'Liliana', 'Cichecka');

CREATE TABLE connect_table (
  id_connect int(11) NOT NULL,
  id_person int(11) DEFAULT NULL,
  id_event int(11) DEFAULT NULL,
  id_season int(11) DEFAULT NULL,
  id_year int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE event_age (
  id_event int(11) NOT NULL,
  name varchar(50) DEFAULT NULL,
  desc text DEFAULT NULL,
  photo varchar(150) DEFAULT NULL,
  photo_alt varchar(30) DEFAULT NULL,
  id_admin int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE person (
  id_person int(11) NOT NULL,
  name varchar(40) DEFAULT NULL,
  lastname varchar(40) DEFAULT NULL,
  age varchar(3) DEFAULT NULL,
  photo varchar(150) DEFAULT NULL,
  photo_alt varchar(30) DEFAULT NULL,
  desc text,
  id_admin int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE season (
  id_season int(11) NOT NULL,
  season varchar(5) DEFAULT NULL,
  desc text DEFAULT NULL,
  id_admin int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE year_season (
  id_year int(11) NOT NULL,
  year_s varchar(5) DEFAULT NULL,
  desc text DEFAULT NULL,
  id_admin int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE admin
  ADD PRIMARY KEY (id_admin);

ALTER TABLE connect_table
  ADD PRIMARY KEY (id_connect),
  ADD KEY id_person (id_person),
  ADD KEY id_event (id_event),
  ADD KEY id_season (id_season),
  ADD KEY id_year (id_year);

ALTER TABLE event_age
  ADD PRIMARY KEY (id_event),
  ADD KEY id_admin (id_admin);

ALTER TABLE person
  ADD PRIMARY KEY (id_person),
  ADD KEY id_admin (id_admin);

ALTER TABLE season
  ADD PRIMARY KEY (id_season),
  ADD KEY id_admin (id_admin);

ALTER TABLE year_season
  ADD PRIMARY KEY (id_year),
  ADD KEY id_admin (id_admin);


ALTER TABLE admin
  MODIFY id_admin int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE connect_table
  MODIFY id_connect int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE event_age
  MODIFY id_event int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE person
  MODIFY id_person int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE season
  MODIFY id_season int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE year_season
  MODIFY id_year int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE connect_table
  ADD CONSTRAINT connect_table_ibfk_1 FOREIGN KEY (id_person) REFERENCES person (id_person),
  ADD CONSTRAINT connect_table_ibfk_2 FOREIGN KEY (id_event) REFERENCES event_age (id_event),
  ADD CONSTRAINT connect_table_ibfk_3 FOREIGN KEY (id_season) REFERENCES season (id_season),
  ADD CONSTRAINT connect_table_ibfk_4 FOREIGN KEY (id_year) REFERENCES year_season (id_year);

ALTER TABLE event_age
  ADD CONSTRAINT event_age_ibfk_1 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);

ALTER TABLE person
  ADD CONSTRAINT person_ibfk_1 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);

ALTER TABLE season
  ADD CONSTRAINT season_ibfk_1 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);

ALTER TABLE year_season
  ADD CONSTRAINT year_season_ibfk_1 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);

-- -- -- QUERY
-- SELECT p.Name, p.lastname, p.photo, y.year_s FROM connect_table ct 
-- JOIN person p ON ct.id_person = p.id_person
-- JOIN year_season y ON ct.id_year = y.id_year
-- WHERE y.id_year = "1"