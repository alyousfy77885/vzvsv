-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 16 مارس 2023 الساعة 11:51
-- إصدار الخادم: 10.4.6-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshope`
--

DELIMITER $$
--
-- الإجراءات
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- بنية الجدول `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '111');

-- --------------------------------------------------------

--
-- بنية الجدول `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, ' HPلابتوبات'),
(2, 'سامسونج'),
(3, 'Appleابل'),
(4, 'motorollaموتوريلا'),
(5, 'LGال جي'),
(6, 'Cloth Brand ملابس');

-- --------------------------------------------------------

--
-- بنية الجدول `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `user_id`, `qty`) VALUES
(6, 26, 4, 1),
(9, 10, 7, 1),
(10, 11, 7, 1),
(11, 45, 7, 1),
(44, 5, 3, 0),
(46, 2, 3, 0),
(48, 72, 3, 0),
(49, 60, 8, 1),
(50, 61, 8, 1),
(51, 1, 8, 1),
(52, 5, 9, 1),
(53, 2, 14, 1),
(54, 3, 14, 1),
(55, 5, 14, 1),
(56, 1, 9, 1),
(57, 2, 9, 1),
(71, 61, 0, 1),
(147, 2, 0, 1),
(148, 70, 0, 1),
(149, 1, 0, 2),
(151, 17, 0, 1),
(152, 9, 0, 1),
(153, 3, 0, 1),
(154, 2, 0, 1),
(155, 3, 0, 1),
(156, 4, 0, 1),
(157, 6, 0, 2),
(158, 12, 0, 1),
(159, 5, 0, 2),
(160, 13, 0, 1),
(161, 55, 0, 1),
(162, 6, 0, 2),
(163, 5, 0, 2),
(164, 5, 28, 2),
(165, 7, 31, 1),
(166, 5, 32, 2),
(170, 2, 26, 2),
(171, 5, 26, 2),
(172, 4, 32, 1),
(173, 6, 32, 1),
(174, 7, 32, 1),
(175, 7, 2, 1),
(176, 3, 30, 1),
(177, 2, 30, 1),
(178, 5, 34, 2),
(179, 4, 34, 1),
(181, 4, 30, 1),
(182, 60, 30, 1),
(183, 5, 30, 1),
(185, 2, 34, 1),
(190, 2, 35, 1),
(197, 11, 0, 1),
(198, 8, 0, 1),
(199, 4, 0, 1),
(200, 5, 0, 1),
(203, 9, 36, 1),
(205, 6, 0, 1),
(206, 75, 0, 1),
(207, 3, 0, 1),
(213, 6, 0, 1),
(214, 2, 0, 1),
(217, 4, 33, 1),
(218, 4, 0, 1),
(219, 6, 0, 1),
(220, 7, 0, 1),
(222, 4, 37, 1),
(223, 2, -1, 1),
(225, 77, 43, 1),
(226, 2, 46, 1),
(227, 2, -1, 1),
(228, 2, -1, 1),
(229, 3, -1, 1),
(230, 2, -1, 1),
(231, 2, 45, 1),
(232, 4, 46, 1),
(233, 3, 46, 1),
(234, 3, 33, 1),
(235, 2, -1, 1),
(236, 3, -1, 1),
(237, 4, -1, 1),
(238, 4, -1, 1),
(239, 3, 49, 1),
(240, 7, 49, 9),
(241, 2, 49, 1),
(242, 4, -1, 1),
(243, 54, -1, 1),
(244, 54, -1, 1),
(245, 54, -1, 1),
(246, 57, -1, 1),
(247, 54, -1, 1),
(248, 96, 50, 1),
(249, 95, -1, 1),
(250, 3, 26, 4),
(251, 7, -1, 1),
(252, 7, -1, 1),
(253, 7, -1, 1),
(254, 7, -1, 1),
(255, 10, -1, 1),
(256, 11, -1, 1),
(257, 3, -1, 1),
(258, 3, -1, 1),
(259, 3, -1, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'الكترونيات'),
(2, 'ملابس نسائيه'),
(3, 'ملابس رجاليه'),
(4, 'اكسسوارات'),
(5, 'ادوات تجميل'),
(6, 'احذيه');

-- --------------------------------------------------------

--
-- بنية الجدول `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com'),
(6, 'freeas306@gmail.com');

-- --------------------------------------------------------

--
-- بنية الجدول `location`
--

CREATE TABLE `location` (
  `locid` int(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `comp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `location`
--

INSERT INTO `location` (`locid`, `city`, `street`, `comp`) VALUES
(1, 'تعز', 'شارع جمال', 'المنير للملابس الجاهزه'),
(2, 'صنعاء', 'شارع هائل', 'اليوسفي '),
(3, 'إب', NULL, NULL),
(4, 'مارب', NULL, NULL),
(5, 'الحديده', NULL, NULL),
(6, 'عدن', NULL, NULL),
(7, 'ذمار', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(10) NOT NULL,
  `outgoing_msg_id` int(10) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `t` tinyint(1) NOT NULL DEFAULT 0,
  `dt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `t`, `dt`) VALUES
(1, 50, 26, 'Hi', 1, '2022-07-06 00:00:00'),
(2, 50, 26, 'Bsdb', 1, '2022-07-06 00:00:00'),
(3, 50, 26, 'Fd', 1, '2022-07-06 00:00:00'),
(6, 50, 26, 'هلا', 1, '2022-07-06 00:00:00'),
(7, 50, 26, 'كيفك', 1, '2022-07-06 00:00:00'),
(10, 50, 26, 'وش مسوى ', 1, '2022-07-06 00:00:00'),
(12, 49, 26, 'Hi', 1, '2022-07-06 00:00:00'),
(13, 50, 26, 'S', 1, '2022-07-06 00:00:00'),
(14, 49, 26, 'Rty', 1, '2022-07-06 00:00:00'),
(15, 50, 26, 'Fgh', 1, '2022-07-06 00:00:00'),
(16, 50, 26, 'Ff', 1, '2022-07-06 00:00:00'),
(17, 50, 26, 'Xccv', 1, '2022-07-06 00:00:00'),
(18, 50, 26, 'Dfg', 1, '2022-07-06 00:00:00'),
(19, 49, 50, 'Hi', 1, '2022-07-06 00:00:00'),
(20, 49, 50, 'Rfg', 1, '2022-07-06 00:00:00'),
(21, 47, 50, 'Fdf', 0, '2022-07-06 00:00:00'),
(24, 50, 26, 'Xcv', 1, '2022-07-06 00:00:00'),
(26, 50, 26, 'Fvb', 1, '2022-07-06 00:00:00'),
(27, 47, 50, 'Fgh', 0, '2022-07-06 00:00:00'),
(28, 47, 26, 'Ù‡Ø§Ù‰', 0, '2022-07-06 00:00:00'),
(29, 47, 26, 'او', 0, '2022-07-06 00:00:00'),
(30, 50, 26, 'وينك', 1, '2022-07-06 00:00:00'),
(32, 49, 50, 'Vfs', 1, '2022-07-06 00:00:00'),
(33, 50, 26, 'Xvvb', 1, '2022-07-06 00:00:00'),
(34, 49, 26, 'Fgh', 1, '2022-07-06 00:00:00'),
(35, 47, 26, 'BBsb', 0, '2022-07-06 00:00:00'),
(37, 47, 50, 'Ghb', 0, '2022-07-06 00:00:00'),
(38, 47, 50, 'Ybb', 0, '2022-07-06 00:00:00'),
(42, 50, 26, 'Hai', 1, '2022-07-06 00:00:00'),
(43, 49, 26, 'Re3', 1, '2022-07-06 00:00:00'),
(44, 49, 26, 'Ew', 1, '2022-07-06 00:00:00'),
(45, 49, 26, 'T', 1, '2022-07-06 00:00:00'),
(46, 47, 26, 'Rty', 0, '2022-07-06 00:00:00'),
(47, 47, 26, 'Dfg', 0, '2022-07-06 00:00:00'),
(48, 49, 26, 'Fds', 1, '2022-07-06 00:00:00'),
(49, 50, 26, 'Dgh', 1, '2022-07-06 00:00:00'),
(52, 47, 50, 'Gree', 0, '2022-07-06 00:00:00'),
(53, 47, 50, 'Dc', 0, '2022-07-06 00:00:00'),
(57, 50, 26, 'Fvbb', 1, '2022-07-06 00:00:00'),
(58, 47, 26, 'Dghh', 0, '2022-07-06 00:00:00'),
(59, 50, 26, 'Hi', 1, '2022-07-06 00:00:00'),
(60, 50, 26, 'Hi', 1, '2022-07-06 00:00:00'),
(61, 47, 26, 'Cvbb', 0, '2022-07-06 00:00:00'),
(62, 47, 26, 'هلا', 0, '2022-07-06 00:00:00'),
(67, 50, 26, 'هلا', 1, '2022-07-06 00:00:00'),
(69, 50, 26, 'كسكيظ', 1, '2022-07-06 00:00:00'),
(72, 49, 50, 'Hi', 1, '2022-07-06 00:00:00'),
(73, 26, 50, 'Sd', 1, '2022-07-06 00:00:00'),
(74, 26, 50, 'Dgh', 1, '2022-07-06 15:47:08'),
(75, 49, 50, 'Gds', 1, '2022-07-06 15:47:17'),
(76, 49, 50, 'Ryh', 1, '2022-07-06 15:47:47'),
(77, 49, 50, 'Gsh', 1, '2022-07-06 15:50:05'),
(78, 49, 50, 'Cfg', 1, '2022-07-06 15:50:28'),
(79, 47, 50, 'Rgh', 0, '2022-07-06 15:53:24'),
(80, 26, 50, 'Ghb', 1, '2022-07-06 16:31:12'),
(81, 49, 50, 'Cdd', 1, '2022-07-06 16:31:45'),
(82, 47, 50, 'Sd', 0, '2022-07-06 16:31:53'),
(83, 47, 50, 'Fgh', 0, '2022-07-06 20:21:02'),
(84, 26, 49, 'Hi', 1, '2022-07-07 15:16:40'),
(85, 49, 52, 'Hi', 1, '2022-07-19 16:36:08'),
(86, 51, 52, 'Hi', 0, '2022-07-19 16:36:25'),
(87, 52, 51, 'Hi', 1, '2022-07-19 16:37:46'),
(88, 51, 52, 'Fdd', 0, '2022-07-19 16:38:42'),
(89, 51, 52, 'Hj', 0, '2022-07-19 16:39:18'),
(90, 52, 51, 'Hh', 1, '2022-07-19 16:40:06'),
(91, 49, 52, 'هلا', 1, '2022-07-19 16:40:53'),
(92, 52, 49, 'فيك', 1, '2022-07-19 16:41:14'),
(93, 49, 52, 'كيفك', 1, '2022-07-19 16:41:33'),
(94, 49, 52, 'بخير', 1, '2022-07-19 16:41:43'),
(95, 52, 49, 'نعم', 1, '2022-07-19 16:41:59'),
(96, 52, 49, 'Sd', 1, '2022-07-19 16:42:44'),
(97, 49, 52, 'Gh', 1, '2022-07-19 16:43:12'),
(98, 49, 52, 'Ddf', 1, '2022-07-19 16:43:28'),
(99, 52, 53, 'Hi', 0, '2022-07-19 17:14:46'),
(100, 51, 26, 'Vvv', 0, '2022-07-26 20:24:48'),
(101, 49, 26, 'هلا', 0, '2022-08-12 15:33:55'),
(102, 47, 26, 'Ù„Ø§Ø¹Ø¹', 0, '2022-08-25 13:47:34');

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- بنية الجدول `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 26, 'Vvvhnnmm', 'alyousfy77885@gmail.com', 'تعز', 'Fghj', 'Hhgf', 567887, 'Gg', '1234566', '12/12', 1, 30000, 334),
(3, 26, 'Gghjnn', 'alyousfy77885@gmail.com', 'تعز', 'Ghhj', 'Hhgf', 1222, 'Gg', '888', '12/33', 1, 30000, 4445),
(4, 26, 'محمد سلطان اليوسفي', 'alyousfy77885@gmail.com', 'تعز', 'Hshsj', 'Yemen', 567887, 'Gvvb', '4567', '12/23', 1, 30000, 345),
(5, 26, 'محمد سلطان اليوسفي', 'alyousfy77885@gmail.com', 'تعز', 'Jsnsn', 'Yemen', 6688, 'Hhhgg', '4456 6', '11/11', 1, 30000, 334),
(6, 36, 'Mohammad Soltan', 'freeas306@gmail.com', 'Sana', 'Taiz', 'Adf', 55599, 'Ffggb', '4456 77', '12/33', 10, 236200, 4455),
(7, 33, 'Mohammad Soltan', 'alyousfy77885@gmail.com', 'Sana', 'Taiz', 'Yemen', 5566, 'Ghjjjj', '987788', '12/22', 4, 84000, 788);

-- --------------------------------------------------------

--
-- بنية الجدول `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(76, 3, 3, 1, 30000),
(77, 4, 3, 7, 210000),
(78, 5, 3, 1, 30000),
(79, 6, 5, 2, 20000),
(80, 6, 2, 1, 25000),
(81, 6, 8, 1, 40000),
(82, 6, 9, 1, 12000),
(83, 6, 11, 1, 1200),
(84, 6, 4, 1, 32000),
(85, 6, 3, 1, 30000),
(86, 6, 7, 1, 50000),
(87, 6, 6, 1, 35000),
(88, 6, 10, 1, 1000),
(89, 7, 3, 1, 30000),
(90, 7, 5, 1, 10000),
(91, 7, 4, 1, 32000),
(92, 7, 9, 1, 12000);

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_keywords` varchar(500) NOT NULL,
  `lid` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `lid`) VALUES
(2, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', '0.png', 'mobile iphone apple', 1),
(3, 1, 3, 'iPad air 2', 30000, 'ipad apple brand', 'da4371ffa192a115f922b1c0dff88193.png', 'apple ipad tablet', 1),
(4, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'http___pluspng.com_img-png_iphone-6s-png-iphone-6s-gold-64gb-1000.png', 'iphone apple mobile', 1),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'iPad-air.png', 'ipad tablet samsung', 1),
(6, 1, 1, 'samsung Laptop r series', 35000, 'samsung Black combination Laptop', 'laptop_PNG5939.png', 'samsung laptop ', 2),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', 'laptop_PNG5930.png', 'Laptop Hp Pavillion', 2),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', '530201353846AM_635_sony_xperia_z.png', 'sony mobile', 1),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'iphone-hd-png-iphone-apple-png-file-550.png', 'iphone apple mobile', 1),
(10, 2, 6, 'Red Ladies dress', 1000, 'red dress for girls', 'red dress.jpg', 'red dress ', 1),
(11, 2, 6, 'Blue Heave dress', 1200, 'Blue dress', 'images.jpg', 'blue dress cloths', 1),
(12, 2, 6, 'Ladies Casual Cloths', 1500, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual', 1),
(13, 2, 6, 'SpringAutumnDress', 1200, 'girls dress', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'girl dress', 1),
(14, 2, 6, 'Casual Dress', 1400, 'girl dress', 'download.jpg', 'ladies cloths girl', 1),
(15, 2, 6, 'Formal Look', 1500, 'girl dress', 'shutterstock_203611819.jpg', 'ladies wears dress girl', 1),
(16, 3, 6, 'Sweter for men', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'black sweter cloth winter', 1),
(40, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies', 1),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo', 1),
(46, 1, 2, 'Samsung Galaxy Note 3', 10000, '', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galxaxy note 3 neo', 1),
(47, 1, 6, 'Laptop', 650, 'nbk', 'product01.png', 'Dell Laptop', 1),
(48, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony', 1),
(49, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony', 1),
(50, 3, 6, 'boys shirts', 350, 'shirts', 'pm1.JPG', 'suit boys shirts', 1),
(51, 3, 6, 'boys shirts', 270, 'shirts', 'pm2.JPG', 'suit boys shirts', 1),
(52, 3, 6, 'boys shirts', 453, 'shirts', 'pm3.JPG', 'suit boys shirts', 1),
(53, 3, 6, 'boys shirts', 220, 'shirts', 'ms1.JPG', 'suit boys shirts', 1),
(54, 3, 6, 'boys shirts', 290, 'shirts', 'ms2.JPG', 'suit boys shirts', 1),
(55, 3, 6, 'boys shirts', 259, 'shirts', 'ms3.JPG', 'suit boys shirts', 1),
(56, 3, 6, 'boys shirts', 299, 'shirts', 'pm7.JPG', 'suit boys shirts', 1),
(57, 3, 6, 'boys shirts', 260, 'shirts', 'i3.JPG', 'suit boys shirts', 1),
(58, 3, 6, 'boys shirts', 350, 'shirts', 'pm9.JPG', 'suit boys shirts', 1),
(59, 3, 6, 'boys shirts', 855, 'shirts', 'a2.JPG', 'suit boys shirts', 1),
(60, 3, 6, 'boys shirts', 150, 'shirts', 'pm11.JPG', 'suit boys shirts', 1),
(61, 3, 6, 'boys shirts', 215, 'shirts', 'pm12.JPG', 'suit boys shirts', 1),
(62, 3, 6, 'boys shirts', 299, 'shirts', 'pm13.JPG', 'suit boys shirts', 1),
(63, 3, 6, 'boys Jeans Pant', 550, 'Pants', 'pt1.JPG', 'boys Jeans Pant', 1),
(64, 3, 6, 'boys Jeans Pant', 460, 'pants', 'pt2.JPG', 'boys Jeans Pant', 1),
(65, 3, 6, 'boys Jeans Pant', 470, 'pants', 'pt3.JPG', 'boys Jeans Pant', 1),
(66, 3, 6, 'boys Jeans Pant', 480, 'pants', 'pt4.JPG', 'boys Jeans Pant', 1),
(67, 3, 6, 'boys Jeans Pant', 360, 'pants', 'pt5.JPG', 'boys Jeans Pant', 1),
(68, 3, 6, 'boys Jeans Pant', 550, 'pants', 'pt6.JPG', 'boys Jeans Pant', 1),
(69, 3, 6, 'boys Jeans Pant', 390, 'pants', 'pt7.JPG', 'boys Jeans Pant', 1),
(70, 3, 6, 'boys Jeans Pant', 399, 'pants', 'pt8.JPG', 'boys Jeans Pant', 1),
(71, 1, 2, 'Samsung galaxy s7', 5000, 'Samsung galaxy s7', 'product07.png', 'samsung mobile electronics', 1),
(72, 4, 2, 'sony Headphones', 3500, 'sony Headphones', 'product02.png', 'sony Headphones electronics gadgets', 1),
(73, 1, 2, 'samsung Headphones', 3500, 'samsung Headphones', 'product05.png', 'samsung Headphones electronics gadgets', 1),
(74, 1, 1, 'HP i5 laptop', 5500, 'HP i5 laptop', 'product01.png', 'HP i5 laptop electronics', 1),
(75, 1, 1, 'HP i7 laptop 8gb ram', 5500, 'HP i7 laptop 8gb ram', 'product03.png', 'HP i7 laptop 8gb ram electronics', 1),
(76, 1, 5, 'sony note 6gb ram', 4500, 'sony note 6gb ram', 'product04.png', 'sony note 6gb ram mobile electronics', 1),
(77, 1, 4, 'MSV laptop 16gb ram NVIDEA Graphics', 5499, 'MSV laptop 16gb ram', 'product06.png', 'MSV laptop 16gb ram NVIDEA Graphics electronics', 1),
(78, 1, 5, 'dell laptop 8gb ram intel integerated Graphics', 4579, 'dell laptop 8gb ram intel integerated Graphics', 'product08.png', 'dell laptop 8gb ram intel integerated Graphics electronics', 1),
(79, 4, 2, 'camera with 3D pixels', 2569, 'camera with 3D pixels', 'product09.png', 'camera with 3D pixels camera electronics gadgets', 1),
(80, 1, 1, 'ytrfdkjsd', 12343, 'sdfhgh', '1542455446_thythtf .jpeg', 'dfgh', 1),
(81, 4, 6, 'Kids blue dress', 300, 'blue dress', '1543993724_pg4.jpg', 'kids blue dress', 1),
(95, 3, 5, 'Ggh', 12, 'Tffgg', '1656598228_clothes-1.jpg', 'Dghhh', 1),
(96, 6, NULL, 'اخذيه ولادى', 566, 'جلديه 100٪', '1656598341_sports-3.jpg', 'الراقى للاحذيه', 1),
(97, 6, NULL, 'احذيه ولادى', 50, 'جلد خام', '1657396718_sports-6.jpg', 'الحزمي', 1),
(98, 5, NULL, 'مكياج ', 53, 'روسي', '1657396918_shampoo.jpg', 'محلات الفاضل', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `r`
--

CREATE TABLE `r` (
  `id` int(10) NOT NULL,
  `ud` int(10) NOT NULL,
  `prduct_name` varchar(500) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `price` int(10) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `desc` varchar(1500) NOT NULL,
  `comp` varchar(500) NOT NULL,
  `loc` varchar(400) NOT NULL,
  `Dat` date NOT NULL DEFAULT current_timestamp(),
  `cont` varchar(500) NOT NULL DEFAULT 'freeas306@gmail.com'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `r`
--

INSERT INTO `r` (`id`, `ud`, `prduct_name`, `product_cat`, `price`, `product_image`, `desc`, `comp`, `loc`, `Dat`, `cont`) VALUES
(1, 49, 'ايباد Samsung ', 1, 12, 'ipad.jpg', 'ذاكره 8GB RAM\r\nوحده تخزين داخليه222GB', 'محلات بن بارق ', 'تعز/التحرير الاسفل', '2022-06-24', 'freeas306@gmail.com'),
(2, 49, 'لابتوبHP', 2, 244, '1656105431_1653008038302.jpg', 'موديل 2022', 'محلات العاقل', 'تعز /شارع جمال', '2022-06-25', 'freeas306@gmail.com'),
(3, 26, 'ايفون برو ماكس', 1, 123, '1656195367_product07.png', 'ذاكره داخليه 10 جيجا', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-26', 'freeas306@gmail.com'),
(4, 49, 'دراجه PMW', 4, 2500, '1656196252_1632939534433.jpg', 'خصم 50٪', 'اليوسفى للتجاره', 'تعز/ بير باشا', '2022-06-26', 'freeas306@gmail.com'),
(5, 50, 'احذيه ولادى', 4, 50, '1656440452_shoe-3.jpg', 'درجه اولى 100٪', 'محلات الاناقه', 'تعز /باب موسى', '2022-06-28', 'freeas306@gmail.com'),
(6, 50, 'شنط بناتي', 4, 5000, '1656596528_16541098221.0x0.jpg', 'جلد', 'محلات الفاضل', 'تعز بير باشا', '2022-06-30', 'freeas306@gmail.com'),
(7, 50, 'دهان شعر', 4, 300, '1656596963_16564855912.jpg', 'تنعبم الشعر خلال3 ايام', 'محلات الفاضل', 'تعز /باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(8, 26, 'دهان Gp', 4, 67, '1656597232_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(9, 26, 'دهان Gp', 4, 67, '1656597406_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(10, 26, 'دهان Gp', 4, 67, '1656597412_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(11, 26, 'دهان Gp', 4, 67, '1656597442_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(12, 26, 'دهان Gp', 4, 67, '1656597445_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(13, 26, 'دهان Gp', 4, 67, '1656597475_watch-1.jpg', 'تنعيم وتجميل', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(14, 26, 'Edfg', 1, 566, '1656597509_party-wear-2.jpg', 'Cvbb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(15, 26, 'Edfg', 1, 566, '1656597546_party-wear-2.jpg', 'Cvbb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(16, 26, 'Edfg', 1, 23, '1656597554_party-wear-2.jpg', 'Cvbb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(17, 26, 'Edfg', 1, 23, '1656597682_party-wear-2.jpg', 'Cvbb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(18, 26, 'Edfg', 1, 23, '1656597686_party-wear-2.jpg', 'Cvbb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(19, 26, 'Erghh', 2, 233, '1656597715_clothes-1.jpg', 'Fghj', 'Dghhh', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(20, 26, 'Erghh', 2, 233, '1656597821_clothes-1.jpg', 'Fghj', 'Dghhh', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(21, 26, 'Erghh', 2, 233, '1656597824_clothes-1.jpg', 'Fghj', 'Dghhh', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(22, 26, 'Ggh', 2, 8899, '1656597848_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(23, 26, 'Ggh', 2, 8899, '1656597918_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(24, 26, 'Ggh', 2, 8899, '1656597922_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(25, 26, 'Ggh', 2, 8899, '1656597978_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(26, 26, 'Ggh', 2, 8899, '1656598072_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(27, 26, 'Ggh', 2, 8899, '1656598075_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(28, 26, 'Ggh', 2, 8899, '1656598082_party-wear-2.jpg', 'Dfvvb', 'شركه الفيصل اخوان', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com'),
(29, 26, 'Ggh', 3, 12, '1656598106_clothes-1.jpg', 'Tffgg', 'Dghhh', 'تعز/باب موسى', '2022-06-30', 'freeas306@gmail.com');

-- --------------------------------------------------------

--
-- بنية الجدول `uch`
--

CREATE TABLE `uch` (
  `ud` int(100) NOT NULL,
  `cd` int(100) NOT NULL,
  `od` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `uch`
--

INSERT INTO `uch` (`ud`, `cd`, `od`) VALUES
(50, 49, '2022-07-07 17:12:09'),
(50, 47, '2022-07-07 17:12:09'),
(50, 26, '2022-07-07 17:12:31'),
(49, 50, '2022-07-07 17:18:37'),
(49, 47, '2022-07-07 17:18:37'),
(49, 26, '2022-07-07 17:18:37');

-- --------------------------------------------------------

--
-- بنية الجدول `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `lo` int(10) NOT NULL DEFAULT 1,
  `ft` datetime NOT NULL DEFAULT current_timestamp(),
  `ms` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`, `img`, `status`, `lo`, `ft`, `ms`) VALUES
(26, 'محمد سلطان', 'اليوسفي', 'alyousfy77885@gmail.com', 'mm', '3344588', 'تعز', 'البير', '22.jpg', 'Active now', 1, '2022-09-29 12:57:32', '2022-07-07 15:16:40'),
(47, 'Mohammad', 'Ali', 'alyousfy77885@gmail.com', 'nn9', '567888', 'Gfde', 'Ddghh', '1655496986_1649655291505.jpg', 'Offline now', 1, '2022-06-18 02:33:23', '2022-07-06 20:21:02'),
(49, 'Mohamm', 'Ali', 'alyousfy77885@gmail.com', 'nn', '567888', 'Gfde', 'Ddghh', '1655496986_1649655291505.jpg', 'Active now', 1, '2022-07-20 19:11:00', '2022-08-12 15:33:55'),
(50, 'Hajshssbdbdb', 'Soltan', 'nn@gmail.com', 'nn', '0712339190', 'Sana', 'Taiz', '1656282402_1651168866_tshirt.JPG', 'Active now', 1, '2022-07-06 15:30:27', '2022-07-06 16:28:17'),
(51, 'محمد', 'القدسي', 'alyousfy7785@gmail.com', '78', '712339190', 'Yemen', 'تعز', '1658237174_activities.jpg', 'Active now', 1, '2022-07-19 16:26:14', '2022-07-26 20:24:48'),
(52, 'محمد سلطان', 'Hsh', 'alyousfy77y85@gmail.com', '78', '4566633', '3455', 'Hi8', '1658237319_Err.jpg', 'Active now', 1, '2022-07-19 16:28:39', '2022-07-19 17:14:46'),
(53, 'ويةىى', 'اليوسفي', 'alyousfy778t85@gmail.com', 'nnh', '0712339190', 'Sana', '5yhb', '1658240072_‏‏لقطة الشاشة (189).png', 'Active now', 1, '2022-07-19 17:14:32', '2022-07-19 17:14:32'),
(54, 'خالد', 'فيصل', 'dem@example.com', '11', '0712339190', 'Sana', 'تعز', '1658403668_activities.jpg', 'Active now', 1, '2022-07-21 14:41:08', '2022-07-21 14:41:08');

--
-- القوادح `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- بنية الجدول `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'محمد سلطان', 'اليوسفي', 'alyousfy77885@gmail.com', 'mm', '3344588', 'تعز', 'البير'),
(27, 'محمد سلطان', 'اليوسفي', 'alyousfy77885@gmail.com', 'mm', '3344588', 'تعز', 'البير'),
(28, 'احمد', 'على', 'alyousfy778885@gmail.com', 'mm', 'Nn', 'تعز', 'البير'),
(29, 'احمد', 'على', 'alyousfy778885@gmail.com', 'mm', 'Nn', 'تعز', 'البير'),
(30, 'على', 'اليوسفي', 'alyousfy778885@gmail.com', 'nn', '7123391900', 'تعز', 'البير'),
(31, 'عبدالله', 'اليوسفي', 'alyousfy778885@gmail.com', 'nn', '3344588', 'تعز', 'البير'),
(32, '', '', '', '', '', '', ''),
(33, 'Mohammad', 'Soltan', 'alyousfy77885@gmail.com', 'nn', '0712339190', 'Sana', 'Taiz'),
(34, '6yyh', 'Fcvb', 'alyousfy77885@gmail.com', 'nn', '78273', 'Hjd', ''),
(35, '6yyh', 'Fcvb', 'alyousfy77885@gmail.com', 'nn', '78273', 'Hjd', 'F_g'),
(36, 'Mohammad', 'Soltan', 'freeas3066@gmail.com', 'mm', '0712339190', 'Sana', 'Taiz'),
(37, 'محمد سلطان', 'سعيد', 'freeas3306@gmail.com', 'root', '6777', 'Hi', 'Hi'),
(38, 'Bsvc', 'Vshsg', 'freeagsgss306@gmail.com', 'ywyw6w76', '6777', 'Rsfg', 'Gdset'),
(39, 'Mokhg', 'Liu', 'freeas30g6@gmail.com', 'ywyw6w76', '6777', 'Rsfg', 'Gdset'),
(40, 'GsgMok', 'Vshsg', 'freeas306@gmail.com', 'rrrgg', '778', 'Rsfg', 'Gdset'),
(41, 'Mohammad', '', 'freeas306@gmail.com', 'root', '0712339190', 'Sana', 'Taiz'),
(42, 'Mok', 'سعيد', 'freeas306@gmail.com', 'ywyw6w76', '6777', 'Ygg', 'Dee'),
(43, 'Hhgfs', 'Vshsg', 'freeas306@gmail.com', 'ywyw6w76', '6777', 'Rsfg', 'Yds'),
(44, 'محمد سلطان', 'سعيد', 'mohammadertg@gmail.com', '71233', '71233', 'Rsfg', 'تعز'),
(45, 'ممم', 'سعيد', 'mm@gmail.com', 'mm', '71233', 'تعز', 'المدينه'),
(46, 'اخمد', 'على', 'nn@gmail.com', 'nn', '778', 'Hi', 'تعز'),
(47, 'Mohammad', 'Ali', 'alyousfy77885@gmail.com', 'nn9', '567888', 'Gfde', 'Ddghh'),
(48, 'محمد ', 'اليوسفي', 'alyousfy77885@gmail.com', 'nn', '0712339190', 'Sana', 'Taiz'),
(49, 'Mohamm', 'Ali', 'alyousfy77885@gmail.com', 'nn', '567888', 'Gfde', 'Ddghh'),
(50, 'Hajshssbdbdb', 'Soltan', 'nn@gmail.com', 'nn', '0712339190', 'Sana', 'Taiz'),
(51, 'محمد', 'القدسي', 'alyousfy7785@gmail.com', '78', '712339190', 'Yemen', 'تعز'),
(52, 'محمد سلطان', 'Hsh', 'alyousfy77y85@gmail.com', '78', '4566633', '3455', 'Hi8'),
(53, 'ويةىى', 'اليوسفي', 'alyousfy778t85@gmail.com', 'nnh', '0712339190', 'Sana', '5yhb'),
(54, 'خالد', 'فيصل', 'dem@example.com', '11', '0712339190', 'Sana', 'تعز');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `incoming_msg_id` (`incoming_msg_id`),
  ADD KEY `outgoing_msg_id` (`outgoing_msg_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `lid` (`lid`),
  ADD KEY `product_cat` (`product_cat`);

--
-- Indexes for table `r`
--
ALTER TABLE `r`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_ibfk_1` (`ud`),
  ADD KEY `product_cat` (`product_cat`);

--
-- Indexes for table `uch`
--
ALTER TABLE `uch`
  ADD KEY `ud` (`ud`),
  ADD KEY `cd` (`cd`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `lo` (`lo`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `r`
--
ALTER TABLE `r`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`incoming_msg_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`outgoing_msg_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`lid`) REFERENCES `location` (`locid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `r`
--
ALTER TABLE `r`
  ADD CONSTRAINT `r_ibfk_1` FOREIGN KEY (`ud`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `r_ibfk_2` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `uch`
--
ALTER TABLE `uch`
  ADD CONSTRAINT `uch_ibfk_1` FOREIGN KEY (`ud`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uch_ibfk_2` FOREIGN KEY (`cd`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`lo`) REFERENCES `location` (`locid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
