-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2019 at 06:48 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projem`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_link` varchar(50) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'name.cfm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_link`) VALUES
(1, 'Ana Sayfa', 'index.cfm'),
(2, 'Bizim İşimiz Galvanız', 'galva.cfm'),
(3, 'Galva ile Çalışmak', 'referanse.cfm'),
(4, 'Ürünler', 'urun.cfm'),
(5, 'Kariyer', 'Kariyer.cfm'),
(6, 'Dergiler', 'Dergiler.cfm'),
(7, 'İletişim', 'İletişim.cfm'),
(8, 'Kalite', 'Kalite.cfm'),
(9, 'KVKK', 'KVKK.cfm');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(10) NOT NULL,
  `n_name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `n_content` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_name`, `n_content`) VALUES
(1, 'Metal Expo Furarindayiz', 'Bu yıl İstanbul Fuar merkezinde11-14 Eylül 2019 tarihleri\r\n                                                                arasındadüzenlenecek o...'),
(2, 'Türkiye’nin İlk 1000 İhracatçısı', 'Değerli iş ortaklarımız; Belirli dönemlerde firmamız\r\n                                                                hakkındaki güzel gelişmeler...'),
(3, 'Zink Magnezyum', 'Wuppermann Macaristan’daki tesisinde Zink-Magnezyum üretimine\r\n                                                                başladı. Alaşımınd...'),
(4, 'Baku Metal Expo Furarindayiz', 'Bu yıl BakuFuar merkezinde11-14 Eylül 2019 tarihleri\r\n                                                                arasındadüzenlenecek o...');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `s_id` int(5) NOT NULL,
  `s_email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `s_about` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `s_logo_url` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`s_id`, `s_email`, `s_about`, `s_logo_url`) VALUES
(1, 'Galva Technologies', '1Taleplerinizi elektronik ortamda gönderebilirsiniz. Siparişinizi hazırlayın en kısa zamanda sizinle iletişim kuralım.', 'images/logo.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
