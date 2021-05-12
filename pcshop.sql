-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 06:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'vish', '827ccb0eea8a706c4c34a16891f84e7b', '2020-11-14 12:02:37', '05-01-2021 12:55:56 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`) VALUES
(1, 'Electronics', NULL, '2020-11-17 13:58:31'),
(2, 'Laptops', 'The Portable computer ', '2020-11-17 13:58:31'),
(3, 'Custom Built', 'Build PC of your own Desire', '2020-11-17 13:58:31'),
(4, 'Editors Choice', 'Pre-defined PC for all kind of purpose', '2020-11-17 13:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`) VALUES
(11, 1, '42', 10, '2020-11-23 18:39:29', 'COD'),
(12, 1, '78', 1, '2020-11-23 18:39:29', 'COD'),
(13, 5, '49', 1, '2020-11-23 18:56:46', 'COD'),
(14, 5, '48', 1, '2020-12-10 13:55:30', 'COD'),
(16, 1, '42', 1, '2020-12-11 10:12:26', 'COD'),
(17, 1, '55', 1, '2020-12-11 10:12:26', 'COD'),
(20, 7, '42', 10, '2020-12-29 10:51:52', 'COD'),
(21, 7, '42', 1, '2020-12-29 13:45:36', 'Credit Card / UPI'),
(22, 7, '48', 1, '2020-12-29 13:47:35', 'Credit Card / UPI'),
(23, 5, '42', 1, '2021-01-11 05:47:24', 'Credit Card / UPI'),
(24, 5, '41', 5, '2021-01-14 08:26:24', 'Credit Card / UPI'),
(25, 5, '48', 1, '2021-01-14 08:26:24', 'Credit Card / UPI'),
(26, 8, '41', 1, '2021-01-25 17:10:29', 'Credit Card / UPI'),
(27, 5, '47', 1, '2021-01-26 14:44:01', 'Credit Card / UPI'),
(28, 5, '41', 1, '2021-01-26 14:54:21', 'Phone Pe / Google pay'),
(29, 5, '41', 1, '2021-01-26 14:54:35', 'Phone Pe / Google pay'),
(30, 5, '50', 1, '2021-01-26 14:54:35', 'Phone Pe / Google pay'),
(31, 5, '55', 8, '2021-01-26 14:55:56', 'Phone Pe / Google pay'),
(32, 5, '59', 1, '2021-01-26 14:55:56', 'Phone Pe / Google pay');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`) VALUES
(41, 3, 1, 'AMD Ryzen™ Threadripper™ 2950X  Processor', 'AMD', 165990, 220000, '16 Cores and 32 Processing Threads, Updated with 2nd Gen Ryzen Technology Advancements Incredible 4.4 GHz Max Boost Frequency, with a huge 40MB Cache', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2020-11-23 12:39:12'),
(42, 3, 1, 'AMD Ryzen™ Threadripper™ 1900X  Processor', 'AMD', 66000, 79500, 'The Threadripper 1900X provides 8 cores / 16 threads of serious multi-processing power, while 20MB of combined cache and vast I/O from the enthusiast-grade AMD X399 platform stand ready to feed the beast.', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2020-11-23 12:41:05'),
(43, 3, 1, 'AMD Ryzen 7 5800X', 'AMD', 41499, 50000, 'AMD Ryzen 7 5800X Desktop Processor 8 Cores up to 4.7GHz 36MB Cache AM4 Socket', '1.jpg', '2.jpg', '', 0, 'In Stock', '2020-11-23 12:43:05'),
(44, 3, 1, 'AMD Ryzen Threadripper 3990X', 'AMD', 389000, 500000, 'AMD Ryzen Threadripper 3990X Desktop Processor 64 Cores up to 4.3GHz 288MB Cache sTRX4 Socket', '3990.jpg', '3990.jpg', '', 0, 'In Stock', '2020-11-23 12:55:19'),
(45, 3, 1, 'AMD Ryzen 5 3500X', 'AMD', 14700, 20000, 'AMD Ryzen 5 3500X Desktop Processor 6 cores up to 4.1GHz 35MB Cache AM4 Socket ', '3500x1.jpg', '3500x2.jpg', '3500x3.jpg', 0, 'In Stock', '2020-11-23 12:58:41'),
(46, 3, 1, 'AMD Ryzen 3 3200G', 'AMD', 8750, 12000, 'AMD Ryzen 3 3200G with RadeonVega 8 Graphics Desktop Processor 4 Cores up to 4GHz 6MB Cache AM4 Socket', '3200g1.jpg', '3200g2.jpg', '', 0, 'In Stock', '2020-11-23 13:00:56'),
(47, 3, 1, 'Intel® Core™ i9 10850K Processor', 'Intel', 46500, 69990, ' Roll over image to zoom in Intel® Core™ i9 10850K Processor 20M Cache, up to 5.20 GHz 10 Cores, 20 Threads', 'i91.jpg', 'i92.jpg', '', 0, 'In Stock', '2020-11-23 13:06:08'),
(48, 3, 1, 'Intel 10th Gen Core I9 10900K', 'Intel', 49890, 72000, 'Intel 10th Gen Core I9 10900K 3.7GHZ Upto Max Turbo Frequency 5.3ghz Processor Special Edition ', 'i9s.jpg', 'i92.jpg', '', 0, 'In Stock', '2020-11-23 13:07:37'),
(49, 3, 1, 'Intel® Core™ i9-10900X X-Series Processor ', 'Intel', 56229, 84000, 'Intel Core i9-10900X X-series Processor (19.25M Cache, 3.70 GHz) Intel Core X-series Processors Products formerly Cascade LakeDesktop Lithography 14nm Processor Base Frequency 3.70GHz Bus Speed 8GT/s DMI3TDP 165W Sockets Supported FCLGA2066', 'i9x1.jpg', 'i9x2.jpg', '', 0, 'In Stock', '2020-11-23 13:13:30'),
(50, 3, 1, 'Intel Core i7-10700K Desktop Processor', 'Intel', 34400, 56000, 'Intel Core i7-10700K Desktop Processor 8 Cores up to 5.1 GHz Unlocked  LGA1200 (Intel 400 Series chipset) 125W', 'i71.jpg', 'i72.jpg', '', 0, 'In Stock', '2020-11-23 13:15:53'),
(51, 3, 1, 'Intel® Core™ i5-10400 Processor ', 'Intel', 15733, 19500, 'Intel Core i5-10400 Processor (12M Cache, up to 4.30 GHz)10th Generation Intel Core i5 ProcessorsProducts formerly Comet LakeProcessor Base Frequency2.90 GHzTDP65 WIntel UHD Graphics 630350 MHz', 'i51.jpg', 'i92.jpg', '', 0, 'In Stock', '2020-11-23 13:18:35'),
(52, 3, 1, 'Intel® Core™ i3-10100 Processor', 'Intel', 10049, 19000, 'Intel Core i3-10100 Processor (6M Cache, up to 4.30 GHz)Processor Graphics Intel UHD Graphics 630Graphics Base Frequency350 MHzGraphics Video Max Memory64 GB4K Support, at 60Hz', 'i3.jpg', 'i72.jpg', '', 0, 'In Stock', '2020-11-23 13:19:56'),
(54, 3, 2, 'ASUS ROG Zenith II Extreme TRX40 Gaming', 'ASUS', 84999, 94500, 'ASUS ROG Zenith II Extreme TRX40 Gaming AMD 3rd Gen Ryzen Threadripper sTRX4 EATX Motherboard with 16 Power Stages, PCIe 4.0, WiFi 6 (802.11ax), USB 3.2 Gen2 and Aura Sync RGB', 'zenth1.jpg', 'zenth2.jpg', 'zenth3.jpg', 0, 'In Stock', '2020-11-23 15:13:42'),
(55, 3, 2, 'ASUS ROG STRIX X399-E GAMING', 'ASUS', 39499, 39500, 'ASUS ROG STRIX X399-E GAMING AMD Ryzen Threadripper TR4 DDR4 M.2 U.2 X399 EATX HEDT Motherboard with onboard 802.11AC WiFi, USB 3.1 Gen2, and AURA Sync RGB Lighting', 'rs1.jpg', 'rs2.jpg', 'rs3.jpg', 0, 'In Stock', '2020-11-23 15:16:18'),
(56, 3, 2, 'Gigabyte X399 Designare EX Motherboard', 'GIGABYTE', 48290, 57000, 'Gigabyte X399 Designare EX Motherboard (AMD Ryzen Thread Ripper TR4/ATX /3x M.2/WIFI/Front & Rear USB 3.1/Dual Intel LAN)', 'gig1.jpg', 'gig2.jpg', 'gig3.jpg', 0, 'In Stock', '2020-11-23 15:19:32'),
(57, 3, 2, 'Asus TUF Gaming X570-PLUS', 'ASUS', 19939, 21000, 'Asus TUF Gaming X570-PLUS AMD AM4 X570 ATX Gaming Motherboard with PCIe 4.0, Dual M.2, 14 Dr. MOS Power Stages, HDMI, DP, SATA 6Gb/s, USB 3.2 Gen 2 and Aura Sync RGB Lighting', 't1.jpg', 't2.jpg', 't3.jpg', 0, 'In Stock', '2020-11-23 15:30:22'),
(58, 3, 2, 'MSI Performance Gaming AMD X470', 'MSI', 21499, 24999, 'Supports amd ryzen series processors and 7th gen a-series/ athlon processors Supports ddr4-3200+(oc) memory', 'm1.jpg', 'm2.jpg', 'm3.jpg', 0, 'In Stock', '2020-11-23 15:38:03'),
(59, 3, 2, 'Gigabyte B450  AORUS PRO WIFI', 'GIGABYTE', 16999, 19999, 'Gigabyte B450 I AORUS PRO WIFI (AMD Ryzen AM4/M.2 Thermal Guard with Onboard Wifi/HDMI/DP/USB 3.1 Gen 2/Mini ITX/Motherboard)', 'ga1.jpg', 'ga2.jpg', 'ga3.jpg', 0, 'In Stock', '2020-11-23 15:40:39'),
(60, 3, 2, 'GIGABYTE B550I AORUS PRO AX Motherboard', 'GIGABYTE', 24650, 30000, ' GIGABYTE B550I AORUS PRO AX Motherboard with Direct 8 Phases Digital VRM, Dual PCIe 4.0/3.0 M.2 with Thermal Guard, Intel Wi-Fi 6 802.11ax, 2.5GbE LAN, RGB Fusion 2.0', 'giga1.jpg', 'giga2.jpg', 'giga3.jpg', 0, 'In Stock', '2020-11-23 15:42:50'),
(62, 3, 2, 'MSI MAG B550 Tomahawk ATX Gaming Motherboard', 'MSI', 17737, 23850, 'Support for 3rd Gen AMD Ryzen Processors and future AMD Ryzen processors with BIOS update Supports DDR4 Memory, up to 4866+(OC) MHz', 'ms1.jpg', 'ms2.jpg', 'ms3.jpg', 0, 'In Stock', '2020-11-23 15:48:23'),
(63, 3, 2, 'ASUS ROG Strix X299-E Gaming', 'ASUS', 45500, 51000, 'ASUS ROG Strix X299-E Gaming II - LGA2066 - DDR4 M.2 USB 3.1 802.11AX WiFi 6 X299 ATX Motherboard for Intel Core X-Series Processors', 'ax1.jpg', 'ax2.png', '', 0, 'In Stock', '2020-11-23 15:52:30'),
(64, 3, 2, 'Asus Prime X299-A II ', 'ASUS', 38990, 42700, 'Intel LGA 2066 socket: Ready for the latest Intel Core X-series processors AI Overclocking: Quickly optimizes your CPU performance based on the CPU and cooler, achieving results that are extremely close to manual tuning by experts', 'ap1.jpg', 'ap2.jfif', '', 0, 'In Stock', '2020-11-23 16:01:07'),
(65, 3, 2, 'MSI MAG B460 Tomahawk Gaming Motherboard', 'MSI', 18449, 18750, 'MSI MAG B460 Tomahawk Gaming Motherboard (ATX, 10th Gen Intel Core, LGA 1200 Socket, DDR4, CFX, Dual M.2 Slots, USB 3.2 Gen 2, 2.5G LAN, DP/HDMI, Mystic Light RGB)', 'mag1.jpg', 'mag2.jpg', 'mag3.jpg', 0, 'In Stock', '2020-11-23 16:05:33'),
(67, 3, 2, 'GIGABYTE B460M AORUS PRO', 'GIGABYTE', 11340, 15800, 'GIGABYTE B460M AORUS PRO with Direct 8+2 Phase Digital VRM Design, Intel 802.11ac Wave2 2T2R WiFi & BT 5, Intel 2.5 GbE LAN, USB 3.2 Gen2 Type-C, RGB Fusion 2.0', 'ag1.jpg', 'ag2.jpg', 'ag3.jpg', 0, 'In Stock', '2020-11-23 16:12:56'),
(68, 3, 2, 'ASUS ROG Strix Z490-E Gaming', 'ASUS', 36999, 39500, ' Roll over image to zoom in ASUS ROG Strix Z490-E Gaming LGA 1200 DDR4 (4600 O.C.) ATX Motherboard with 2X M.2 Slot WiFi 6 2.5Gb Ethernet and AI Overclocking Cooling', 'rogs1.jpg', 'rogs2.jpg', 'rogs3.jpg', 0, 'In Stock', '2020-11-23 16:14:54'),
(69, 3, 2, 'MSI MPG Z490 Gaming Plus Gaming Motherboard', 'MSI', 23100, 27999, 'MSI MPG Z490 Gaming Plus Gaming Motherboard (ATX, 10th Gen Intel Core, LGA 1200 Socket, DDR4, CF, Dual M.2 Slots, USB 3.2 Gen 2, 2.5G LAN, DP/HDMI, Mystic Light RGB)', 'mm1.jpg', 'mm2.jpg', 'mm3.jpg', 0, 'In Stock', '2020-11-23 16:16:34'),
(72, 3, 3, 'HyperX Fury 8GB 3200MHz DDR4', 'HyperX', 2999, 4999, 'HyperX Fury 8GB 3200MHz DDR4 CL16 DIMM 1Rx8  Black XMP Desktop Memory (HX432C16FB3/8)', 'h1.jpg', 'h2.jpg', 'h3.jpg', 0, 'In Stock', '2020-11-23 17:29:30'),
(73, 3, 3, 'Corsair Vengeance LPX 8GB  DDR4 RAM', 'Corsair', 3289, 6190, 'Corsair Vengeance LPX 8GB (1x8GB) DDR4 3200MHZ C16 Desktop RAM (Black)', 'cv1.jpg', 'cv2.jpg', 'cv3.jpg', 0, 'In Stock', '2020-11-23 17:33:14'),
(74, 3, 3, 'A-DATA XPG SPECTRIX D60G DDR4 RGB 8GB', 'A-DATA', 4770, 10000, 'A-DATA XPG SPECTRIX D60G DDR4 RGB 8GB (1x8GB) 3600MHz U-DIMM Desktop Memory ', 'xpg1.jpg', 'xpg2.jpg', 'xpg3.jpg', 0, 'In Stock', '2020-11-23 17:35:56'),
(75, 3, 3, 'Corsair Vengeance LPX 16GB DDR4 RAM', 'Corsair', 5278, 11250, ' Roll over image to zoom in Corsair Vengeance LPX 16GB (1x16GB) DDR4 3200MHZ UDIMM C16 Desktop RAM Memory Module', 'cv1.jpg', 'cv2.jpg', 'cv3.jpg', 0, 'In Stock', '2020-11-23 17:42:46'),
(76, 3, 3, 'HyperX Fury 16GB 3200MHz DDR4', 'HyperX', 6090, 9999, 'HyperX Fury 16GB 3200MHz DDR4 CL16 DIMM  Black XMP Desktop Memory (HX432C16FB3/16)', 'h1.jpg', 'h2.jpg', 'h3.jpg', 0, 'In Stock', '2020-11-23 17:52:20'),
(77, 3, 3, 'XPG ADATA GAMMIX D30 DDR4 16GB', 'ADATA', 4999, 8999, 'XPG ADATA GAMMIX D30 DDR4 16GB (1x16GB) 3000MHz U-DIMM Desktop Memory - AX4U3000316G16A-SR30', 'xpga1.jpg', 'xpga2.jpg', '', 0, 'In Stock', '2020-11-23 18:02:58'),
(78, 3, 3, 'HyperX Fury RGB 32GB 3200MHz DDR4', 'HyperX', 15999, 20000, 'HyperX Fury RGB 32GB 3200MHz DDR4 CL16 DIMM Single Stick HX432C16FB3A/32', 'hf1.jpg', 'hf2.jpg', '', 0, 'In Stock', '2020-11-23 18:09:05'),
(80, 3, 5, 'WD My Passport SSD ', 'WD', 6000, 10000, ' Roll over image to zoom in WD My Passport SSD 500GB, Gold, 1050MBs Read, 1000MBs Write, for PC & Mac, 5Y Warranty', '2.jpg', '1.jpg', '', 0, 'In Stock', '2021-01-03 07:54:23'),
(81, 3, 5, 'Solid State Drive', 'Western Digital WD', 2507, 4300, 'Western Digital WD Green 240 GB 2.5 inch SATA III Internal Solid State Drive (WDS240G2G0A)', '810YGinGP6L._SL1500_.jpg', '811Pa-Xrt2L._SL1500_.jpg', '', 0, 'In Stock', '2021-01-03 09:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`) VALUES
(1, 3, 'Processor', '2020-11-17 14:31:32'),
(2, 3, 'Motherboard', '2020-11-17 14:31:51'),
(3, 3, 'RAM', '2020-11-17 14:32:01'),
(4, 3, 'Graphic Card', '2020-11-17 14:32:19'),
(5, 3, 'SSD', '2020-11-17 14:34:45'),
(6, 3, 'HDD', '2020-11-17 14:34:52'),
(7, 3, 'SMPS', '2020-11-17 14:35:05'),
(8, 3, 'Coolant', '2020-11-17 14:35:25'),
(9, 3, 'Cabinet', '2020-11-17 14:35:56'),
(10, 1, 'Monitor', '2020-11-17 14:36:24'),
(11, 1, 'Keyboard and Mouse', '2020-11-17 14:36:43'),
(12, 1, 'Speakers', '2020-11-17 14:36:51'),
(13, 2, 'Gaming Laptops', '2020-11-17 14:37:05'),
(14, 2, 'Productivity Laptops', '2020-11-17 14:37:16'),
(15, 2, 'Entertainment Laptop', '2020-11-17 14:37:40'),
(16, 2, 'Film Makers Laptop', '2020-11-17 14:39:15'),
(17, 1, 'Printers', '2020-11-17 14:40:20'),
(18, 1, 'Gamepad', '2020-11-17 14:40:56'),
(21, 1, 'Web Cam', '2020-11-17 14:47:04'),
(22, 1, 'Headphones and Earphones', '2020-11-17 14:47:43'),
(25, 4, 'Gaming PC', '2020-11-17 14:48:10'),
(26, 4, 'Productivity PC', '2020-11-17 14:48:34'),
(27, 4, 'Entertainment PC', '2020-11-17 14:49:05'),
(53, 4, 'Film Makers PC', '2020-11-17 14:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `loginTime`, `logout`) VALUES
(7, 'vishwas.kv362@gmail.com', '2020-12-29 13:38:23', '29-12-2020 07:08:24 PM'),
(8, 'vishwas.kv362@gmail.com', '2020-12-29 13:38:49', '29-12-2020 07:22:46 PM'),
(9, 'vishwas.kv362@gmail.com', '2020-12-29 13:52:51', NULL),
(10, 'vish@gmail.com', '2020-12-30 05:22:25', NULL),
(11, 'vish@gmail.com', '2020-12-30 13:37:07', '30-12-2020 07:07:52 PM'),
(12, 'vish@gmail.com', '2020-12-30 15:11:09', NULL),
(13, 'vish@gmail.com', '2020-12-30 15:11:14', NULL),
(14, 'vish@gmail.com', '2020-12-30 19:31:40', NULL),
(15, 'vishwas.kv362@gmail.com', '2021-01-02 10:04:34', '02-01-2021 03:35:19 PM'),
(16, 'vishwas.kv362@gmail.com', '2021-01-03 07:54:49', NULL),
(17, 'vish@gmail.com', '2021-01-11 05:46:54', NULL),
(18, 'vish@gmail.com', '2021-01-12 05:45:18', NULL),
(19, 'vish@gmail.com', '2021-01-12 08:26:50', NULL),
(20, 'vish@gmail.com', '2021-01-12 11:34:49', NULL),
(21, 'vish@gmail.com', '2021-01-14 08:16:58', NULL),
(22, 'vish@gmail.com', '2021-01-19 15:15:17', NULL),
(23, 'vish@gmail.com', '2021-01-21 04:42:57', NULL),
(24, 'vish@gmail.com', '2021-01-21 12:47:21', NULL),
(25, 'vish@gmail.com', '2021-01-25 09:57:42', '25-01-2021 03:27:44 PM'),
(26, 'shivanee@gmail.com', '2021-01-25 09:58:37', '25-01-2021 09:24:39 PM'),
(27, 'vish@gmail.com', '2021-01-25 15:54:46', '25-01-2021 09:25:41 PM'),
(28, 'shivanee@gmail.com', '2021-01-25 15:55:52', '25-01-2021 09:26:14 PM'),
(29, 'rog@gmail.com', '2021-01-25 15:56:52', '25-01-2021 09:32:14 PM'),
(30, 'shivanee@gmail.com', '2021-01-25 17:10:00', NULL),
(31, 'vish@gmail.com', '2021-01-26 12:18:23', '26-01-2021 05:59:05 PM'),
(32, 'vish@gmail.com', '2021-01-26 14:43:04', '26-01-2021 08:21:24 PM'),
(33, 'vish@gmail.com', '2021-01-26 14:54:05', '26-01-2021 08:27:02 PM'),
(34, 'vish@gmail.com', '2021-01-27 04:38:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`) VALUES
(5, 'vish', 'vish@gmail.com', 123456578, '81dc9bdb52d04dc20036dbd8313ed055', 'No 155, Sri ranga nagara', 'Karnataka', 'Bangalore', 560085, 'No 155 , Sri Ranga nagar', 'Karnataka', 'Bangalore', 560085, '2020-11-15 13:45:51'),
(7, 'Vishwas K V', 'vishwas.kv362@gmail.com', 7349382170, '81dc9bdb52d04dc20036dbd8313ed055', 'Jalahalli', 'Karnataka', 'Bangalore', 560057, 'Jalahalli', 'Katrnataka', 'Bangalore', 560057, '2020-12-29 10:47:02'),
(8, 'Shivanee', 'shivanee@gmail.com', 7349382170, '81dc9bdb52d04dc20036dbd8313ed055', 'Nayanadhalli', 'Karnataka', 'Bangalore', 560005, 'Nayandhalli', 'Karnataka', 'Bangalore', 560005, '2021-01-05 08:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(17, 7, 49, '2020-12-29 10:47:26'),
(18, 7, 55, '2020-12-29 10:59:31'),
(20, 5, 55, '2021-01-12 05:46:27'),
(21, 5, 43, '2021-01-12 05:48:38'),
(27, 5, 42, '2021-01-26 14:43:28');

--
-- Triggers `wishlist`
--
DELIMITER $$
CREATE TRIGGER `wishlist` AFTER INSERT ON `wishlist` FOR EACH ROW INSERT INTO wish_log VALUES(null,NEW.id,'product inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `wish_log`
--

CREATE TABLE `wish_log` (
  `id` int(10) NOT NULL,
  `wish_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wish_log`
--

INSERT INTO `wish_log` (`id`, `wish_id`, `action`, `cdate`) VALUES
(1, 14, 'product inserted', '2020-12-29 15:36:26'),
(2, 15, 'product inserted', '2020-12-29 15:42:16'),
(3, 16, 'product inserted', '2020-12-29 15:42:24'),
(4, 17, 'product inserted', '2020-12-29 16:17:26'),
(5, 18, 'product inserted', '2020-12-29 16:29:31'),
(6, 19, 'product inserted', '2021-01-11 11:18:42'),
(7, 20, 'product inserted', '2021-01-12 11:16:27'),
(8, 21, 'product inserted', '2021-01-12 11:18:38'),
(9, 22, 'product inserted', '2021-01-12 14:00:30'),
(10, 23, 'product inserted', '2021-01-12 14:00:53'),
(11, 24, 'product inserted', '2021-01-12 19:21:01'),
(12, 25, 'product inserted', '2021-01-21 10:17:04'),
(13, 26, 'product inserted', '2021-01-25 15:28:43'),
(14, 27, 'product inserted', '2021-01-26 20:13:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_log`
--
ALTER TABLE `wish_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wish_log`
--
ALTER TABLE `wish_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
