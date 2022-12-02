-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Dez 2022 um 00:23
-- Server-Version: 10.4.25-MariaDB
-- PHP-Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be17_cr6_bigeventsjimmy`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221202110819', '2022-12-02 12:08:30', 107);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('christmas','sport','theater','other','music') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `start_time`, `description`, `image`, `capacity`, `contact_email`, `contact_phone`, `address`, `url`, `type`) VALUES
(1, 'Gorillaz Concert', '13th May 2023', '21:00:00', 'Concert of the famous band : GORILLAZ', 'https://cdn.pixabay.com/photo/2016/12/08/19/57/gorilla-1893013__480.png', 15000, 'gorconcert@gmail.com', '010101010101013', 'Wien Stadion 1110', 'gorillaz.concert.com', 'music'),
(2, 'Football Turnament', '15th April 2023', '09:00:00', 'A football tournament for everyone , come play with us!', 'https://cdn.pixabay.com/photo/2016/03/23/12/26/football-1274661__480.jpg', 250, 'footballtournament@email.com', '020202020202', 'stadium hetzendorf 1120', 'foottournament.com', 'sport'),
(3, 'Christkindl Market', '1st December - 24th December', '10:00:00', 'Christmas market, find in those market a lot of chritmas\'s food, presents, ....', 'https://cdn.pixabay.com/photo/2016/11/14/16/20/snowflake-1823942__480.jpg', 1500, 'christkindlmarkt@gmail.com', '030303030303', 'In different places in Wien', 'Chritmasinwien.com', 'christmas'),
(4, 'Snowball battle', '11th December 2022', '10:30:00', 'The snow is back ! Let\'s have some fun!', 'https://cdn.pixabay.com/photo/2015/09/05/21/52/snowball-925600__480.jpg', 50, 'snowball.gmail.com', '12121212121212', 'Schonbrünn 25', 'snowball.com', 'christmas'),
(5, 'Puppet Theater', '1st January - 25th January', '15:00:00', 'Fun for kids and adults', 'https://cdn.pixabay.com/photo/2015/10/24/12/26/dolls-1004403__480.jpg', 50, 'puppet@gmail.com', '989898989898', 'volkstheater wien', 'puppet.com', 'theater'),
(7, 'Ice skating', '1st December - 28th February', '09:00:00', 'Winter time , ice skating time!', 'https://cdn.pixabay.com/photo/2016/11/28/05/37/ice-skates-1864348__480.jpg', 50, 'iceskating@gmail.com', '3535353535353', 'Rathaus Wien', 'iceskating.at', 'christmas'),
(8, 'Nikolaus songs for kids', '6th December', '12:00:00', 'Come to sing with us to celebrate Nikolaus, and eat some candies!', 'https://cdn.pixabay.com/photo/2018/11/13/19/01/mikulas-3813703__480.jpg', 150, 'nikolaus@msn.fr', '965965965965', 'Stephansplatz Wien', 'nikolaus.at', 'music'),
(9, 'Winter football', '22th December', '15:00:00', 'Football game in the snow, just for fun!', 'https://media.istockphoto.com/id/1180386012/photo/football-or-soccer-ball-in-the-deep-white-snow-close-season-and-winter-break-copyspace.jpg?b=1&s=170667a&w=0&k=20&c=orCAejO0ig8KfUndVOQC-tnBKVaDEIE0eHqcyvkvoHc=', 30, 'snowfoot@gmail.com', '454545787878', 'sportzentrum Wien 1020', 'snowfoot.com', 'sport'),
(10, 'Charlie Chaplin Tribute', '21st January - 28th January', '21:00:00', 'Tribute to C.Chaplin in theater.', 'https://cdn.pixabay.com/photo/2018/07/06/19/48/charles-chaplin-3521070__480.jpg', 350, 'tributecc@gmail.com', '6954127854', 'theater 22 Wien', 'tribchaplin.eu', 'theater');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
