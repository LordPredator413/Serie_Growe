-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Maj 2020, 16:24
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `3ti`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `firma` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `kraj` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `rok_zalozenia` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`firma`, `kraj`, `rok_zalozenia`) VALUES
('Bethesda Softworks', 'USA', 1986),
('FromSoftware', 'Japonia', 1969),
('Giants Software GmbH', 'Szwajcaria', 2004),
('Ubisoft Montréal', 'Kanada', 1997);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `serie`
--

CREATE TABLE `serie` (
  `Seria` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Początek` int(4) NOT NULL,
  `Typ` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `serie`
--

INSERT INTO `serie` (`Seria`, `Początek`, `Typ`) VALUES
('Assassin’s Creed', 2007, 'Ubisoft Montréal'),
('Fallout', 1997, 'Bethesda Softworks'),
('Farming Simulator', 2008, 'Giants Software GmbH'),
('Soulsy', 2009, 'FromSoftware');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`firma`);

--
-- Indeksy dla tabeli `serie`
--
ALTER TABLE `serie`
  ADD UNIQUE KEY `Seria` (`Seria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
