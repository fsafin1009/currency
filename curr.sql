-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 10:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `curr`
--

CREATE TABLE `curr` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curr`
--

INSERT INTO `curr` (`id`, `code`, `name`, `rate`) VALUES
(1, 'AUD', 'Австралийский доллар', '61,5176'),
(2, 'AZN', 'Азербайджанский манат', '56,5154'),
(3, 'GBP', 'Фунт стерлингов Соединенного королевства', '119,1153'),
(4, 'AMD', 'Армянских драмов', '24,8677'),
(5, 'BYN', 'Белорусский рубль', '29,4803'),
(6, 'BGN', 'Болгарский лев', '52,5725'),
(7, 'BRL', 'Бразильский реал', '19,8161'),
(8, 'HUF', 'Венгерских форинтов', '26,5499'),
(9, 'VND', 'Вьетнамских донгов', '39,9269'),
(10, 'HKD', 'Гонконгский доллар', '12,3048'),
(11, 'GEL', 'Грузинский лари', '35,9163'),
(12, 'DKK', 'Датская крона', '13,7963'),
(13, 'AED', 'Дирхам ОАЭ', '26,1581'),
(14, 'USD', 'Доллар США', '96,0762'),
(15, 'EUR', 'Евро', '102,3606'),
(16, 'EGP', 'Египетских фунтов', '31,0991'),
(17, 'INR', 'Индийских рупий', '11,5788'),
(18, 'IDR', 'Индонезийских рупий', '62,4034'),
(19, 'KZT', 'Казахстанских тенге', '20,3026'),
(20, 'CAD', 'Канадский доллар', '71,5758'),
(21, 'QAR', 'Катарский риал', '26,3946'),
(22, 'KGS', 'Киргизских сомов', '10,8304'),
(23, 'CNY', 'Китайский юань', '13,1335'),
(24, 'MDL', 'Молдавских леев', '53,2432'),
(25, 'NZD', 'Новозеландский доллар', '56,8483'),
(26, 'NOK', 'Норвежских крон', '88,6418'),
(27, 'PLN', 'Польский злотый', '22,0824'),
(28, 'RON', 'Румынский лей', '20,6004'),
(29, 'XDR', 'СДР (специальные права заимствования)', '126,7870'),
(30, 'SGD', 'Сингапурский доллар', '70,2620'),
(31, 'TJS', 'Таджикских сомони', '87,6520'),
(32, 'THB', 'Таиландских батов', '26,5553'),
(33, 'TRY', 'Турецких лир', '35,5636'),
(34, 'TMT', 'Новый туркменский манат', '27,4503'),
(35, 'UZS', 'Узбекских сумов', '78,8926'),
(36, 'UAH', 'Украинских гривен', '26,0138'),
(37, 'CZK', 'Чешских крон', '42,1331'),
(38, 'SEK', 'Шведских крон', '86,0744'),
(39, 'CHF', 'Швейцарский франк', '105,9041'),
(40, 'RSD', 'Сербских динаров', '87,2092'),
(41, 'ZAR', 'Южноафриканских рэндов', '51,0433'),
(42, 'KRW', 'Вон Республики Корея', '71,7147'),
(43, 'JPY', 'Японских иен', '64,7676');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curr`
--
ALTER TABLE `curr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curr`
--
ALTER TABLE `curr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
