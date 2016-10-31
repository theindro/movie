-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 31, 2016 kell 11:16 AM
-- Serveri versioon: 5.6.26
-- PHP versioon: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `movies`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `releaseDate` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `releaseDate`, `genre`, `cast`) VALUES
(8, 'Hello', 'world', '1337', 'asd', 'asd'),
(9, 'Titanic', 'Laev', '1990', 'Drama', 'Leonardo DiCaprio'),
(13, 'Titanic 2', 'Laev 2', '2020', 'Drama', 'Leonardo DiCaprio'),
(14, 'Titanic 2', 'Laev 2', '2020', 'Drama', 'Leonardo DiCaprio'),
(19, 'Titanic 2', 'Laev 2', '2020', 'Drama', 'Leonardo DiCaprio'),
(20, 'asd', 'asd', '2016-10-11', 'asd', 'asd');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
