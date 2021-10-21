-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 09:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`username`, `password`, `address`, `zipcode`, `firstname`, `lastname`) VALUES
('shehban', 'pokemon', '217, Burnett Avenue', 'N1T1E3', 'Shehban', 'Patel');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productprice` decimal(7,2) NOT NULL,
  `image` varchar(20) NOT NULL,
  `productdesc` varchar(500) NOT NULL,
  `company` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `productprice`, `image`, `productdesc`, `company`, `quantity`) VALUES
(1, 'OnePlus 6T', '729.00', '6t.jpg', 'The OnePlus 6T is the most accomplished phone we’ve ever seen from the company, and a bunch of new features, including an in-screen fingerprint scanner and a larger battery, add up to make this one of the best phones you can buy right now.', 'OnePlus', 0),
(2, 'Google Pixel 3 XL', '1129.00', 'pixel3.jpg', 'The Google Pixel 3 XL is the best big-screened camera phone you can buy today, one that’s able to capture stunning photos that your friends won’t believe came from a smartphone. You’ll have to be okay with its prominent notch cut out at the top of the 6.3-inch display and the higher price, a familiar trade-offs for a little extra screen space in 2019. It’s battery life is bigger, too, and the main reason to choose this phone over the otherwise similar 5.5-inch Google Pixel 3.', 'Google', 0),
(3, 'Apple iPhone XS', '1329.00', 'xs.jpg', 'Yes, the iPhone XS is the best phone Apple\'s ever created, but that\'s not really a surprise - it\'s the new one. The bigger question is: what\'s actually changed, given the design is so similar to last year? Well, the speakers are more powerful and \'wider\' in sound, the camera has been enhanced with Smart HDR, the battery management is better and the chipset is far more powerful inside. These are all just tweaks though, and it\'s smart from Apple to remove the iPhone X from sale, as that would be a', 'Apple', 0),
(4, 'Apple Airpods', '219.00', 'airpods.jpg', 'Apple AirPods provide an almost perfect future for anyone who wants to don fully wireless earbuds. With superb sound quality and seamless device pairing, all you have to worry about is if they fit your ears and if you can deal with the lack of an in-line remote to control your music.', 'Apple', 0),
(5, 'Samsung Galaxy S10', '1259.00', 's10.jpg', 'The Galaxy S10 is a fitting 10th anniversary phone for Samsung and its storied S series. It delivers on change with a novel-looking Infinity-O screen so large it displaces the front camera, and a triple-lens rear camera that takes ultra-wide photos. Its in-screen fingerprint sensor tech should serve you well, while its Wireless PowerShare could serve your friends well. That’s a lot of change – just know that it comes at a high price.', 'Samsung', 0),
(6, 'Google Pixel Stand', '109.00', 'stand.jpg', 'Google\'s Pixel Stand lets you enjoy the perks of your smartphone while charging. Features include Nest integration that streams video to your phone when your Nest doorbell rings, turning your phone into a digital photo frame, or enabling Google Assistant when your device is docked. The stand also wirelessly charges other Qi-compatible devices.', 'Google', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
