-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2026. Már 31. 10:05
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `HyperRun`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `Felhasznalo`
--

CREATE TABLE `Felhasznalo` (
  `id` int(11) NOT NULL,
  `felhasznalo` text NOT NULL,
  `email` text NOT NULL,
  `jelszo` text NOT NULL,
  `teljes nev` text DEFAULT NULL,
  `születesi ev` date DEFAULT NULL,
  `orszag` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `Felhasznalo`
--

INSERT INTO `Felhasznalo` (`id`, `felhasznalo`, `email`, `jelszo`, `teljes nev`, `születesi ev`, `orszag`) VALUES
(1, 'admin', 'admin@admin.hu', 'admin1234', 'Példa Admin', '2000-12-01', 'Magyarország');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `Felhasznalo`
--
ALTER TABLE `Felhasznalo`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `Felhasznalo`
--
ALTER TABLE `Felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
