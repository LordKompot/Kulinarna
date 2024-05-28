-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 28, 2024 at 05:26 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scamleggro`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `name`, `price`, `image`, `description`) VALUES
(41, 'Pączki', 0.00, 'paczki_36.jpg', 'Składniki na ok. 20 sztuk:\r\nCiasto drożdżowe:\r\n\r\n500 g mąki pszennej\r\n50 g świeżych drożdży lub 14 g drożdży instant\r\n100 g masła (lub margaryny)\r\n100 g cukru\r\n4 żółtka\r\n1 jajko\r\n250 ml mleka\r\n1 łyżka spirytusu (wódki lub rumu)\r\nDodatkowo:\r\n\r\ndżem lub powidła (u mnie powidła śliwkowe)\r\nolej do smażenia (1- 1,5 litra)\r\nSposób przygotowania:\r\nPrzygotować zaczyn. Lekko ciepłe mleko wymieszać z 1 łyżeczką cukru, pokruszonymi drożdżami i ok. 5 łyżkami mąki. Przykryć ściereczką i odstawić w ciepłe miejsce do wyrośnięcia na ok. 10- 15 minut.\r\nRoztopić masło (lub margarynę).\r\nŻółtka, jajko i resztę cukru ubić na parze w kąpieli wodnej. (Ubijać ok. 10 minut. O ubijaniu na parze czytaj w uwagach).\r\nResztę mąki wsypać do dużej miski. Dodać wyrośnięty zaczyn i masę jajeczną. Zacząć wyrabiać ciasto. Podczas wyrabiania, dodawać roztopione masło. Wyrobić ciasto na gładką, elastyczną masę. Pod koniec dodać spirytus i ponownie wyrobić. (Ciasto jest bardzo klejące. Najlepiej nie dodawać więcej mąki).\r\nMiskę z ciastem przykryć ściereczką i pozostawić w ciepłym miejscu na ok. 40- 60 minut, aż podwoi swoją objętość.\r\nWyrośnięte ciasto przełożyć na posypany grubo mąką blat i rozwałkować na grubość ok. 1 cm. Wykrawać z niego krążki o średnicy 7 cm. (Użyłam szklanki).\r\nNa połowę krążków nałożyć nadzienie i przykryć pozostałymi krążkami. Brzegi dobrze zlepić.\r\nPączki układać na posypanym mąką blacie, przykryć ściereczką i pozostawić do wyrośnięcia na ok. 30 minut. Pączki powinny być leciutkie i puszyste.'),
(42, 'Sałatka Caprese', 0.00, '19566300-v-1500x1500.jpg', '2 duże pomidory\r\n1 kulka mozzarelli\r\nKilka listków świeżej bazylii\r\nSól i pieprz do smaku\r\nOliwa z oliwek\r\nOpcjonalnie: balsamiczna glazura\r\nPrzygotowanie:\r\n\r\nPomidory i mozzarellę pokrój w plasterki.\r\nNa talerzu ułóż na przemian plasterki pomidora i mozzarelli.\r\nDodaj listki bazylii między plasterkami.\r\nPosól, popieprz i skrop oliwą z oliwek.\r\nOpcjonalnie: skrop balsamiczną glazurą.'),
(44, 'Makaron aglio e olio', 0.00, '5e565cfe41babba49d34deb4cf64f130fd7d7db3.jpeg', '200g spaghetti\r\n4 ząbki czosnku\r\n1/4 szklanki oliwy z oliwek\r\n1 łyżeczka płatków chili\r\nSól do smaku\r\nPosiekana świeża pietruszka do dekoracji\r\nParmezan do posypania (opcjonalnie)\r\nPrzygotowanie:\r\n\r\nUgotuj spaghetti al dente zgodnie z instrukcjami na opakowaniu.\r\nW międzyczasie, pokrój czosnek w cienkie plasterki.\r\nNa dużej patelni rozgrzej oliwę z oliwek na średnim ogniu, dodaj czosnek i płatki chili. Smaż, aż czosnek się zarumieni.\r\nOdcedź makaron, zachowując trochę wody z gotowania.\r\nDodaj makaron do patelni, dobrze wymieszaj z oliwą i czosnkiem. W razie potrzeby dodaj trochę wody z gotowania');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
