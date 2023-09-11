-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 07:22 AM
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
-- Database: `arts_stationary`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `Category_Image` varchar(255) NOT NULL,
  `Category_Name` varchar(255) NOT NULL,
  `ParentCategory` int(11) NOT NULL,
  `Demand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `Category_Image`, `Category_Name`, `ParentCategory`, `Demand`) VALUES
(1, '', 'Brush Markers', 1, 'Demanding'),
(2, 'category2.jpg', 'Sketch Book', 1, ''),
(3, 'category3.jpg', 'Color Pencils', 1, ''),
(4, 'category4.jpg', 'Glue & Glitter Glue', 1, 'Demanding'),
(5, 'category5.jpg', 'Art Glue', 2, 'Demanding'),
(6, 'category6.jpg', 'Art Pencil', 2, ''),
(8, 'category8.jpg', 'Art Marker', 2, 'Demanding'),
(9, 'category9.jpg', 'Brushes', 2, ''),
(10, 'category10.jpg', 'Cryons', 2, ''),
(11, 'category11.jpg', 'Acrylic Medium', 3, ''),
(12, 'category11.jpg', 'Fabric Paint', 3, ''),
(13, 'category12.jpg', 'Acrylic Paint', 3, 'Demanding'),
(14, 'category13.jpg', 'Glass Paints', 3, ''),
(16, 'category14.jpg', 'Oil Paints', 3, ''),
(17, 'category15.jpg', 'Make-up Kits', 4, 'Demanding'),
(19, 'category16.jpg', 'Nail Paints', 4, ''),
(20, 'category17.jpg', 'Makeup Pouch', 4, ''),
(21, 'category18.jpg', 'Mirror', 4, ''),
(22, 'category19.jpg', 'Hand Bags', 5, 'Demanding'),
(23, 'category20.jpg', 'Wallet', 5, ''),
(24, 'category21.jpg', 'Perfumes', 5, 'Demanding'),
(25, 'category22.jpg', 'Sunglasses', 5, ''),
(26, 'category23.jpg', 'Happy Deals', 6, ''),
(27, 'category24.jpg', 'Gift Bags', 6, 'Demanding'),
(28, 'category25.jpg', 'Greeting Cards', 6, 'Demanding'),
(29, 'category26.jpg', 'Hand Sanitizer', 7, ''),
(30, 'category27.jpg', 'Face Mask', 7, ''),
(31, 'category28.jpg', 'Dolls', 8, ''),
(32, 'category29.jpg', 'Stuff Toys', 8, 'Demanding');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'Japan'),
(2, 'Indonesia'),
(3, 'India'),
(4, 'China'),
(5, 'Philippines'),
(6, 'Brazil'),
(7, 'South Korea'),
(8, 'Mexico'),
(9, 'Egypt'),
(10, 'United States'),
(11, 'Bangladesh'),
(12, 'Thailand'),
(13, 'Russia'),
(14, 'Argentina'),
(15, 'Nigeria'),
(16, 'Turkey'),
(17, 'Pakistan'),
(18, 'Vietnam'),
(19, 'Iran'),
(20, 'Congo (Kinshasa)'),
(21, 'United Kingdom'),
(22, 'France'),
(23, 'Peru'),
(24, 'Taiwan'),
(25, 'Angola'),
(26, 'Malaysia'),
(27, 'South Africa'),
(28, 'Colombia'),
(29, 'Tanzania'),
(30, 'Sudan'),
(31, 'Hong Kong'),
(32, 'Saudi Arabia'),
(33, 'Chile'),
(34, 'Spain'),
(35, 'Iraq'),
(36, 'Singapore'),
(37, 'Cameroon'),
(38, 'Kenya'),
(39, 'Canada'),
(40, 'Myanmar'),
(41, 'Côte d\'Ivoire'),
(42, 'Australia'),
(43, 'Germany'),
(44, 'Morocco'),
(45, 'Afghanistan'),
(46, 'Somalia'),
(47, 'Jordan'),
(48, 'Algeria'),
(49, 'Ghana'),
(50, 'United Arab Emirates'),
(51, 'Bolivia'),
(52, 'Greece'),
(53, 'Ethiopia'),
(54, 'Kuwait'),
(55, 'Hungary'),
(56, 'Ukraine'),
(57, 'Yemen'),
(58, 'Guatemala'),
(59, 'Italy'),
(60, 'North Korea'),
(61, 'Ecuador'),
(62, 'Portugal'),
(63, 'Venezuela'),
(64, 'Madagascar'),
(65, 'Dominican Republic'),
(66, 'Uzbekistan'),
(67, 'Zambia'),
(68, 'Burkina Faso'),
(69, 'Sri Lanka'),
(70, 'Azerbaijan'),
(71, 'Zimbabwe'),
(72, 'Cuba'),
(73, 'Cambodia'),
(74, 'Mali'),
(75, 'Belarus'),
(76, 'Austria'),
(77, 'Syria'),
(78, 'Kazakhstan'),
(79, 'Puerto Rico'),
(80, 'Malawi'),
(81, 'Romania'),
(82, 'Poland'),
(83, 'Congo (Brazzaville)'),
(84, 'Belgium'),
(85, 'Uruguay'),
(86, 'Uganda'),
(87, 'Honduras'),
(88, 'Guinea'),
(89, 'Sweden'),
(90, 'Bulgaria'),
(91, 'Costa Rica'),
(92, 'Panama'),
(93, 'Netherlands'),
(94, 'Senegal'),
(95, 'Oman'),
(96, 'Israel'),
(97, 'Mongolia'),
(98, 'Serbia'),
(99, 'Denmark'),
(100, 'New Zealand'),
(101, 'Czechia'),
(102, 'Libya'),
(103, 'Finland'),
(104, 'Qatar'),
(105, 'Mozambique'),
(106, 'Ireland'),
(107, 'Rwanda'),
(108, 'Georgia'),
(109, 'Chad'),
(110, 'Burundi'),
(111, 'Kyrgyzstan'),
(112, 'Armenia'),
(113, 'Mauritania'),
(114, 'Norway'),
(115, 'Tunisia'),
(116, 'Nicaragua'),
(117, 'Niger'),
(118, 'Liberia'),
(119, 'Haiti'),
(120, 'Nepal'),
(121, 'Eritrea'),
(122, 'Sierra Leone'),
(123, 'Laos'),
(124, 'Latvia'),
(125, 'Central African Republic'),
(126, 'Tajikistan'),
(127, 'Togo'),
(128, 'Turkmenistan'),
(129, 'Croatia'),
(130, 'Gabon'),
(131, 'Benin'),
(132, 'Lithuania'),
(133, 'Moldova'),
(134, 'Papua New Guinea'),
(135, 'Macedonia'),
(136, 'Djibouti'),
(137, 'Gaza Strip'),
(138, 'Jamaica'),
(139, 'El Salvador'),
(140, 'Paraguay'),
(141, 'South Sudan'),
(142, 'Lesotho'),
(143, 'Guinea-Bissau'),
(144, 'Malta'),
(145, 'Slovakia'),
(146, 'Bahrain'),
(147, 'Estonia'),
(148, 'Lebanon'),
(149, 'Albania'),
(150, 'Bosnia and Herzegovina'),
(151, 'The Gambia'),
(152, 'Cyprus'),
(153, 'Namibia'),
(154, 'Reunion'),
(155, 'Slovenia'),
(156, 'The Bahamas'),
(157, 'Martinique'),
(158, 'Botswana'),
(159, 'Suriname'),
(160, 'Timor-Leste'),
(161, 'Guyana'),
(162, 'Gibraltar'),
(163, 'Equatorial Guinea'),
(164, 'Fiji'),
(165, 'New Caledonia'),
(166, 'Kosovo'),
(167, 'Maldives'),
(168, 'Mauritius'),
(169, 'Montenegro'),
(170, 'Curaçao'),
(171, 'Switzerland'),
(172, 'Iceland'),
(173, 'Luxembourg'),
(174, 'French Polynesia'),
(175, 'Cabo Verde'),
(176, 'Barbados'),
(177, 'Comoros'),
(178, 'Bhutan'),
(179, 'Swaziland'),
(180, 'Solomon Islands'),
(181, 'Trinidad and Tobago'),
(182, 'Saint Lucia'),
(183, 'French Guiana'),
(184, 'Sao Tome and Principe'),
(185, 'Vanuatu'),
(186, 'Brunei'),
(187, 'Monaco'),
(188, 'Samoa'),
(189, 'Kiribati'),
(190, 'Aruba'),
(191, 'Jersey'),
(192, 'Mayotte'),
(193, 'Marshall Islands'),
(194, 'Isle Of Man'),
(195, 'Cayman Islands'),
(196, 'Seychelles'),
(197, 'Saint Vincent and the Grenadines'),
(198, 'Andorra'),
(199, 'Antigua and Barbuda'),
(200, 'Tonga'),
(201, 'Greenland'),
(202, 'Belize'),
(203, 'Dominica'),
(204, 'Saint Kitts and Nevis'),
(205, 'Faroe Islands'),
(206, 'British Virgin Islands'),
(207, 'American Samoa'),
(208, 'Turks and Caicos Islands'),
(209, 'Saint Martin'),
(210, 'Federated States of Micronesia'),
(211, 'Tuvalu'),
(212, 'Liechtenstein'),
(213, 'Cook Islands'),
(214, 'Grenada'),
(215, 'San Marino'),
(216, 'Sint Maarten'),
(217, 'Northern Mariana Islands'),
(218, 'Falkland Islands (Islas Malvinas)'),
(219, 'Bermuda'),
(220, 'Vatican City'),
(221, 'Niue'),
(222, 'Guadeloupe'),
(223, 'Guam'),
(224, 'Saint Helena, Ascension, and Tristan da Cunha'),
(225, 'Montserrat'),
(226, 'Nauru'),
(227, 'Saint Barthelemy'),
(228, 'Palau'),
(229, 'Saint Pierre and Miquelon'),
(230, 'Anguilla'),
(231, 'Wallis and Futuna'),
(232, 'Norfolk Island'),
(233, 'Svalbard'),
(234, 'Pitcairn Islands'),
(235, 'Christmas Island'),
(236, 'South Georgia And South Sandwich Islands'),
(237, 'Macau'),
(238, 'West Bank'),
(239, 'Bonaire, Sint Eustatius, and Saba'),
(240, 'U.S. Virgin Islands');

-- --------------------------------------------------------

--
-- Table structure for table `customer's_feedbak`
--

CREATE TABLE `customer's_feedbak` (
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` text NOT NULL,
  `customer_message` text NOT NULL,
  `customer_rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer's_feedbak`
--

INSERT INTO `customer's_feedbak` (`customer_id`, `customer_name`, `customer_email`, `customer_message`, `customer_rating`) VALUES
(1, 'zahra', 'zahra@gmail.com', '', 'Excellent'),
(2, 'zahra', 'zahra@gmail.com', '', 'Excellent'),
(3, 'Ayesha', 'kanwalayesha616@gmail.com', 'You need some improvement on your website', 'Alright');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login_id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Login_id`, `Name`, `username`, `password`, `Role`) VALUES
(1, 'Maham Noor', 'mahamnoor07@gmail.com', 'admin', 'Admin'),
(2, 'Kashan Ali', 'kashan80@gmail.com', 'kashan112', 'Employee'),
(3, 'Ahmed', 'ahmed@gmail.com', '123', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `Parent_id` int(11) NOT NULL,
  `Parent_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent_category`
--

INSERT INTO `parent_category` (`Parent_id`, `Parent_Name`) VALUES
(1, 'ART SUPPLIES'),
(2, 'ART ACCESSORIES'),
(3, 'PAINTS\n'),
(4, 'BEAUTY'),
(5, 'FASHION ACCESSORIES\n'),
(6, 'GIFT DEALS'),
(7, 'REGULAR USE\n'),
(8, 'TOYS'),
(9, 'TOYS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_id` int(11) NOT NULL,
  `Product_Image1` varchar(255) NOT NULL,
  `Product_Image2` varchar(255) NOT NULL,
  `Product_Image3` varchar(255) NOT NULL,
  `Product_Image4` varchar(255) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Description` text NOT NULL,
  `Categoryname` int(11) NOT NULL,
  `Old_Price` text NOT NULL,
  `New_Price` int(11) NOT NULL,
  `Sale` text NOT NULL,
  `New_Arrival` varchar(100) NOT NULL,
  `Vendor` varchar(255) NOT NULL,
  `Product_Code` text NOT NULL,
  `Availibility` varchar(200) NOT NULL,
  `For` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_id`, `Product_Image1`, `Product_Image2`, `Product_Image3`, `Product_Image4`, `Product_Name`, `Product_Description`, `Categoryname`, `Old_Price`, `New_Price`, `Sale`, `New_Arrival`, `Vendor`, `Product_Code`, `Availibility`, `For`) VALUES
(1, 'Lyrabrushmarker1.jpg', 'Lyrabrushmarker2.jpg', 'Lyrabrushmarker3.jpg', 'Lyrabrushmarker2.jpg', 'Lyra Aqua Brush Duo Water Soluble Marker Set', 'Aqua Brush Duo Lyra is an excellent quality double-ended water-soluble marker. The fine point can be used for precision drawings, in silhouette drawing, or in the execution of contours and details.Its second tip is wide and flexible like a brush. It allow', 1, 'Rs:2500', 2000, '10%', '', 'The Stationer', 'LB10001', 'In Stock', 'Child'),
(2, 'Sakurabrushmarker1.jpg', 'Sakurabrushmarker2.jpg', 'Sakurabrushmarker1.jpg', 'Sakurabrushmarker2.jpg', 'Sakura Koi Coloring Brush Marker', 'Sakura  coloring brush pen pack of 24. Easy to use. Used for art & craft purpose. Ideal in your school & home. High-quality koi water brush pen. Durable working. 24 pcs of sakura koi water brush pen.', 1, '', 1500, '', 'New', 'The Stationer', 'SB10002', 'In Stock', 'Child'),
(3, 'Winsorbrushmarker1.jpg', 'Winsorbrushmarker2.jpg', 'Winsorbrushmarker3.jpg', 'Winsorbrushmarker4.jpg', '\r\nWinsor & Newton Water Colour Brush Markers', 'A lightweight metal box containing 12 assorted Winsor & newton water color markers - an outstanding range of highly pigmented lightfast markers, delivering Winsor & newton\'s superb water color performance with precision. Twin-Tipped with a fine point and ', 1, 'Rs:3500', 3000, '10%', '', 'The Stationers', 'SK10003', 'In Stock', 'Child'),
(4, 'M&Gbrushmarker1.jpg', 'M&Gbrushmarker2.jpg', 'M&Gbrushmarker3.jpg', 'M&Gbrushmarker4.jpg', 'M&G WATERCOLOR SOFT BRUSH MARKERS SET', 'Color Marker M&G t fiber pens have a chunky, conical nib that tapers to a point. This pack contains a total of 12 pens; 10 classic colors with 2 additional fluorescent pens. The shape of the nib makes these pens very versatile', 1, '', 2000, '', 'New', 'The Stationers', 'MG10004', 'In Stock', 'Child'),
(5, 'MontMartebrushmarker1.jpg', 'MontMartebrushmarker2.jpg', 'MontMartebrushmarker3.jpg', 'MontMartebrushmarker4.jpg', 'Mont Marte Coloring Brush Marker', 'A total of 12 brush marker in different color shades. The markers are characterized by bright colors and are ideal for Adult Coloring. Be artistically creative and a coloring professional with this handy brush marker set!', 1, 'Rs:3700', 3000, '10%', '', 'The Stationers', 'MB10005', 'In Stock', 'Child'),
(6, 'MilanWaterbasedbrushmarker1.jpg', 'MilanWaterbasedbrushmarker2.jpg', 'MilanWaterbasedbrushmarker3.jpg', 'MilanWaterbasedbrushmarker4.jpg', 'Milan Waterbased Brush Markers', 'Fibre pen brush markers which create a 0.5 mm to 4 mm paintbrush stroke. Ideal for calligraphy and writing with different strokes and mixing colors.  Water-based paint which creates bright, easily-applied colors that can be mixed together. It can be easily washed out of most fabrics (soak the item in cold water for an hour and then machine-wash on a cold setting). With a perforated safety cap.', 1, 'Rs:4300', 3500, '10%', '', 'The Stationers', 'MB10006', 'In Stock', 'Child'),
(7, 'SakuraPigmabrushmarker1.jpg', 'SakuraPigmabrushmarker2.jpg', 'SakuraPigmabrushmarker3.jpg', 'SakuraPigmabrushmarker1.jpg', 'Sakura Pigma Brush Marker', 'Enjoy the patented pigment based ink that Sakura is famous for in a convenient felt tip brush pen. The flexible tip responds to pressure and changes in direction, allowing you to write in varying line widths. Nine colors are available.', 1, '', 3200, '', 'New', 'The Stationers', 'SB10007', 'In Stock', 'Child'),
(8, 'Dalersketchbook.jpg', 'Dalersketchbook.jpg', 'Dalersketchbook.jpg', 'Dalersketchbook.jpg', 'Daler - Rowney Simply Sketch Book', 'Easy to use . Durable high quality . use in arts and craft works. Size: A3', 2, 'Rs:3500', 3000, '10%', '', 'The Stationers', 'SK20001', 'In Stock', 'All'),
(9, 'MontMartesketch1.jpg', 'MontMartesketch2.jpg', 'MontMartesketch1.jpg', 'MontMartesketch2.jpg', ' Mont Marte Hardbound Sketch Book', 'Our Signature Hardbound Sketch Book features 80 sheets (160 blank pages) waiting to be filled with your artworks and creative ideas. It has all the qualities you look for in a sketchbook, including elastic closure, white acid free paper, and a hardbound cover. Say hello to your new favourite creative companion.', 2, '', 2500, '', 'New', 'The Stationers', 'Sk20002', 'In Stock', 'All'),
(10, 'YALONGSPIRALsketch.jpg', 'YALONGSPIRALsketch.jpg', 'YALONGSPIRALsketch.jpg', 'YALONGSPIRALsketch.jpg', 'Yalong Spiral Sketch Pad', 'Relish your creativity with the Yalong Spiral Sketch Pad. This sturdy sketch pad comes with 24 sheets of premium white paper that\'s ideal for calling your art to life. The durable spiral binding ensures pages lie perfectly flat, giving you room to draw, sketch, or write for hours. Enjoy the perfect blend of quality and creativity with Yalong Spiral Sketch Pad.', 2, 'Rs:3600', 2700, '10%', '', 'The Stationers', 'Sk20003', 'In Stock', 'All'),
(11, 'DALERROWNEYsketch1.jpg', 'DALERROWNEYsketch2.jpg', 'DALERROWNEYsketch3.jpg', 'DALERROWNEYsketch2.jpg', 'Daler Rowney Ebony Hard Back Sketch Book', 'The Daler-Rowney Ebony Artists’ Sketchbooks feature a selection of artists’ hardbound sketchbooks with premium quality, crisp, off white cartridge paper, suitable for drawing, sketching, pen and ink work and charcoal.', 2, 'Rs:4500', 4000, '5%', '', 'The Stationers', 'SK20004', 'In Stock', 'All'),
(12, 'YALONGSPIRALGreatsketch.jpg', 'YALONGSPIRALGreatsketch.jpg', 'YALONGSPIRALGreatsketch.jpg', 'YALONGSPIRALGreatsketch.jpg', 'Yalong Spiral Great Artist Watercolor Sketch Pad', 'The Yalong Spiral Great Artist Sketch Pad offers wonderful drawing quality with its 80lb, acid-free drawing paper. Its micro-perforated design makes it easy to remove pages without tearing, allowing for easy display of artwork. Featuring a hard cover and spiral binding, this pad is built to last and provides a durable surface for all your sketching needs.Specifications', 2, 'Rs:2000', 1200, '5%', '', 'The Stationers', 'Sk20005', 'In Stock', 'All'),
(13, 'STAEDTLERcolorpencil1.jpg', 'STAEDTLERcolorpencil2.jpg', 'STAEDTLERcolorpencil3.jpg', 'STAEDTLERcolorpencil4.jpg', 'Staedtler Luna Color Pencils Set', 'Colour pencil in classic hexagonal shape. Rich and brilliant colour for graphics and drawing. Smooth and soft leads. Quality certified wood from sustainably managed forests', 3, 'Rs:800', 600, '', '', 'The Stationers', 'CP76000', 'In Stock', 'Child'),
(14, 'M&Gcolorpencil1.jpg', 'M&Gcolorpencil2.jpg', 'M&Gcolorpencil1.jpg', 'M&Gcolorpencil2.jpg', ' M&G Pencil Colors Set', ' Wood pencil colors in   hexagon shape ', 3, 'Rs:300', 150, '5%', '', 'The Stationers', 'CP76001', 'In Stock', 'Child'),
(15, 'YALONGPREMIUMcolorpencil1.jpg', 'YALONGPREMIUMcolorpencil2.jpg', 'YALONGPREMIUMcolorpencil3.jpg', 'YALONGPREMIUMcolorpencil4.jpg', 'Yalong Premium Color Pencils', 'Fine quality leads triangle shape pencil 100% non-toxic pencil color  formulated to write with brilliant intensity easy to sharpen long lasting  bright colours bright and smooth.', 3, 'Rs:750', 550, '15%', '', 'The Stationers', 'CP76002', 'In Stock', 'Child'),
(16, 'YALONGcolorpencil1.jpg', 'YALONGcolorpencil2.jpg', 'YALONGcolorpencil3.jpg', 'YALONGcolorpencil2.jpg', 'Yalong Color Pencil ', 'Color pencils in a standard size and hexagonal shape. They feature vivid colors and a special bonding process to make them break resistant. ', 3, 'Rs:650', 350, '30%', '', 'The Stationers', 'CP76003', 'In Stock', 'Child'),
(17, 'YALONG14Setscolorpencil1.jpg', 'YALONG14Setscolorpencil2.jpg', 'YALONG14Setscolorpencil1.jpg', 'YALONG14Setscolorpencil2.jpg', 'Yalong Color Pencil Set Style 14', 'Color pencils in a standard size and hexagonal shape. They feature vivid colors and a special bonding process to make them break resistant. ', 3, '', 650, '', 'New', 'The Stationers', 'CP76004', 'In Stock', 'Child'),
(18, 'FaberCastellcolorpencil1.jpg', 'FaberCastellcolorpencil2.jpg', 'FaberCastellcolorpencil3.jpg', 'FaberCastellcolorpencil1.jpg', 'Faber Castell Classic Color Pencil ', 'Permanent colour pencils in a standard size and hexagonal shape. They feature vivid colours and a special bonding process to make them break-resistant. The classic coloured pencils are available in up to 48 different colours.', 3, 'Rs:1600', 1200, '15%', '', 'The Stationers', 'CP76005', 'In Stock', 'Child'),
(19, 'DerwentPastelcolorpencil2.jpg', 'DerwentPastelcolorpencil1.jpg', 'DerwentPastelcolorpencil3.jpg', 'DerwentPastelcolorpencil1.jpg', 'Derwent Pastel Color Pencils Sets', 'Pastels are usually all about getting your hands dirty but not with Derwent Pastel Pencils. The wide color strip is powdery and soft so mixing and blending is really easy and because it is encased in wood you get the pastel effect without the mess (if you can resist using your fingers to blend!).', 3, '', 1800, '', 'New', 'The Stationers', 'CP76006', 'In Stock', 'Child'),
(20, 'FaberCastellGripDotcolorpencil.jpg', 'FaberCastellGripDotcolorpencil.jpg', 'FaberCastellGripDotcolorpencil.jpg', '', ' Faber Castell Grip Dot Triangular Color Pencil Box 10 ', 'Thick Triangular Shape and non-slip hold Dots helps early grasp and engine ability improvement name\'s space gave on each pencil smooth, exceptionally break safe color rich thick leads hone effectively with quality enormous opening sharpener', 3, 'Rs:1700', 1200, '20%', '', 'The Stationers', 'CP76007', 'In Stock', 'Child'),
(21, 'FaberCastellPolychromoscolorpencil.jpg', 'FaberCastellPolychromoscolorpencil.jpg', 'FaberCastellPolychromoscolorpencil.jpg', '', ' Faber-Castell Polychromos 60 Color Pencils', 'Soft color laydown 60 Pieces Polychromes Colored Pencil Set. Smudge proof Acid free', 3, 'Rs:3200', 2500, '25%', '', 'The Stationers', 'CP76008', 'In Stock', 'Child'),
(22, 'PINKYALONGcolorpencil.jpg', 'PINKYALONGcolorpencil.jpg', '', '', 'Pink Yalong Color Pencil Set Style 5', 'IMPORTED COLORS - Fine Seasoned Wood - Pastel Premium Color Lead - Yalong is a world recognized Stationery Premium Brand', 3, 'Rs:650', 450, '15%', '', 'The Stationers', 'CP76009', 'In Stock', 'Child'),
(23, 'BLUEYALONGcolorpencil.jpg', 'BLUEYALONGcolorpencil.jpg', '', '', 'Blue Yalong Color Pencil Set Style 7', 'Color pencils in a standard size and hexagonal shape. They feature vivid colors and a special bonding process to make them break resistant.', 3, 'Rs:800', 500, '35%', '', 'The Stationers', 'CP76010', 'In Stock', 'Child'),
(24, 'DELIGLUESTICK15g.jpg', 'DELIGLUESTICK15g.jpg', '', '', 'Deli Glue Stick 15G', 'Extra strong adhesive performance.  Non-Toxic glue acid-free, solvent free washable glue  low odor and dry fast .', 4, '', 150, '', '', 'The Stationers', 'GL75661', 'In Stock', 'Child'),
(25, 'Crayolaglitterglue1.jpg', 'Crayolaglitterglue2.jpg', 'Crayolaglitterglue1.jpg', 'Crayolaglitterglue2.jpg', ' Crayola Washable Glitter Glue 9 pcs', 'Glitter glue in 9 colors of Crayola 69-3527 will help decorate any crafts or simply create a bright glitter pattern on paper or any other surface. Each glue color is packaged in a translucent cartridge through which it can be easily recognized.', 4, 'Rs:1700', 1250, '25%', '', 'The Stationers', 'GG75662', 'In Stock', 'Child'),
(26, 'MOYNeonglitterglue1.jpg', 'MOYNeonglitterglue2.jpg', 'MOYNeonglitterglue3.jpg', 'MOYNeonglitterglue4.jpg', 'MOY Neon Color Glitter Glue 100ML', 'MOY Neon Color Glitter Glue 100ML for fun and decoration on paper, card, and fabric. keep from freezing. It comes with an explosion color and shines.', 4, '', 2000, '', 'New', 'The Stationers', 'GG75663', 'In Stock', 'Child'),
(27, 'Moyglitterglue.jpg', 'Moyglitterglue.jpg', '', '', 'Moy Glitter Glue Set Of 12 Piece', 'Moy Glitter Glue Set Of 12 Blazing Color multipurpose paint on different materials & surfaces. Create for decorating. 8 x 12 colors', 4, 'Rs:400', 200, '20%', '', 'The Stationers', 'GG75664', 'In Stock', 'Child'),
(28, 'Moy6glitter.jpg', 'Moy6glitter.jpg', '', '', 'Moy Glitter Glue 6 Neon Color Set', 'Moy Glitter Glue Set Of 6 Blazing Color multipurpose paint on different materials & surfaces. 10.5ml x 6', 4, 'Rs:400', 200, '20%', '', 'The Stationers', 'GG75665', 'Out of Stock', 'Child'),
(29, 'PianoGlueStick1.jpg', 'PianoGlueStick2.jpg', 'PianoGlueStick3.jpg', 'PianoGlueStick4.jpg', 'Piano Glue Stick 8 Gram', 'Piano Glue Stick 8 Gram Extra strong adhesive performance glue stick with PVP-based formula for school, office and general use. Non-toxic washable with low odour and dry fast. Acid-free, solvent-free and photo-safe formula. Extra long life. Use on Paper, Card, Fabric & Photo.', 4, '', 850, '', 'New', 'The Stationers', 'PG75666', 'In Stock', 'Child'),
(30, 'TempoGlueStick1.jpg', 'TempoGlueStick2.jpg', 'TempoGlueStick3.jpg', 'TempoGlueStick4.jpg', 'Tempo Glue Stick 8 Gram', 'Tempo Glue Stick 8 Gram Extra strong adhesive performance glue stick with PVP-based formula for school, office and general use. Non-toxic washable with low odour and dry fast. Acid-free, solvent-free and photo-safe formula. Extra long life. Use on Paper, Card, Fabric & Photo.', 4, 'Rs:750', 650, '10%', '', 'The Stationers', 'TG75667', 'In Stock', 'Child'),
(31, 'DeliStick1.jpg', 'DeliStick2.jpg', 'DeliStick3.jpg', '', 'Deli Stick Up White German Glue 230ML', 'Deli\'s general purpose white german glue with usage in arts & crafts, wooden objects, book binding, card board work, embroidery, etc. with rotate-open applicator for precise and smooth glue dispensing.', 4, '', 400, '', 'New', 'The Stationers', 'DG75668', 'In Stock', 'Child'),
(32, 'UHUgluestick1.jpg', 'UHUgluestick2.jpg', 'UHUgluestick3.jpg', '', 'UHU  Glue Stick 40 Gram', 'The well-known glue stick “Made in Germany” with a unique screw cap that prevents the glue from drying out. The glue formula consists of 98% natural ingredients (including water) and is solvent free. Glues strong, fast and durable, glides smoothly, is highly efficient and of course cold washable. Additionally the container of the UHU stic is made from 50% recycled plastic.', 4, 'Rs:600', 500, '10%', '', 'The Stationers', 'UG75669', 'In Stock', 'Child'),
(34, 'DollarGlueStick1.jpg', 'DollarGlueStick2.jpg', '', '', 'Dollar Glue Stick 35 Gram', 'Dollar Glue Stick 35 Gram is a general purpose adhesive glue stick for school, office, arts & crafts, etc. Non-toxic adhesive formulation that makes it suitable for children of all ages. Create no fuss as cleans easily with water. Suitable for paper, card, fabric and photographs.', 4, 'Rs:3200', 2700, '15%', '', 'The Stationers', 'DG75670', 'In Stock', 'Child'),
(35, 'MoyGlitterGlueMulticolor1.jpg', 'MoyGlitterGlueMulticolor2.jpg', '', '', 'Moy Glitter Glue Multicolor Pack Of 6pcs', 'Moy Glitter Glue 50ML glitter glue with confetti. 70ml non-toxic and washable 6 colors to choose from great for scrapbooking, arts and crafts ', 4, 'Rs:1000', 800, '', '', 'The Stationers', 'MG75671', 'In Stock', 'Child'),
(36, 'CARROTartglue1.jpg', 'CARROTartglue2.jpg', 'CARROTartglue3.jpg', 'CARROTartglue4.jpg', 'Carrot Stick Glue', 'The glue formula consists of 98% natural ingredients (including water) and is solvent free.   Glues strong, fast and durable, glides smoothly, is highly efficient and of course cold washable.   Additionally the container is made from 50% recycled plastic.', 5, 'Rs:300', 200, '', '', 'The Stationers', 'CG35111', 'In Stock', 'All'),
(37, 'GALAXYPLANETartglue1.jpg', 'GALAXYPLANETartglue2.jpg', 'GALAXYPLANETartglue3.jpg', 'GALAXYPLANETartglue4.jpg', 'Galaxy Planet - Glue Stick', 'This Galaxy Planet glue stick features a festive design and plastic material for durable, long-lasting use. Each stick is a unique random design, ensuring you get a fun surprise every time. Perfect for arts and crafts projects.', 5, 'Rs:400', 200, '20%', '', 'The Stationers', 'GG35112', 'In Stock', 'All'),
(38, 'CRETACOLORartpencil1.jpg', 'CRETACOLORartpencil2.jpg', 'CRETACOLORartpencil3.jpg', '', 'Createcolor Fine Art Graphite Pencil', 'The ultimate fine art graphite pencil, Cleos are available in a full range of 20 lead degrees to provide maximum drawing pleasure. End cap colours correspond to the hardness of the pencil: the darker the grey, the softer the lead. Solid graphite pencils, also known as woodless pencils', 6, 'Rs:400', 300, '10%', '', 'The Stationers', 'AP12565', 'In Stock', 'All'),
(39, 'fabercastellartpencil1.jpg', 'fabercastellartpencil2.jpg', 'fabercastellartpencil1.jpg', '', 'Faber Castell Sketching Art Pencil Pack Of 12', 'The Faber-Castell 9000 Art set Contains 12 Artist-Quality Graphite Pencil for all your writing, drawing and sketching pencil. As you\'d expect from this highly reputable brand, they\'re comfortable to hold, make beautifully smooth lines, and are also easy to sharpen and extremely breakage, resistant due to faber-castell\'s special bonding process.', 6, '', 3300, '', 'New', 'The Stationer', 'AP12566', 'In Stock', 'All'),
(40, 'Ulsonartpencil1.jpg', 'Ulsonartpencil2.jpg', 'Ulsonartpencil3.jpg', 'Ulsonartpencil4.jpg', 'Ulson Art Pencil', 'High-quality wood and graphite ensure that it is not easily broken,Makes it easier for you to draw beautiful lines. Will not scroll on the table,When you pick up a pen to use you will feel more comfortable to use.For Beginners,Professional artists,Students and office workers,are the best choice,Suitable for all', 6, 'Rs:1000', 700, '25%', '', 'The Stationer', 'AP12567', 'In Stock', 'All'),
(41, 'Studiosketchbook1.jpg ', 'Studiosketchbook2.jpg ', 'Studiosketchbook3.jpg ', 'Studiosketchbook1.jpg ', 'Studio Sketch Pad A3, A4', 'Sketch pads feature light weight sketch paper that is ideal for on-location. Sketching and practicing techniques\nuse with pencil, charcoal, sketching stick and pastel\nThis Item Is manufactured in Pakistan.', 2, 'Rs:350', 300, '10%', '', 'The Stationers', 'SK20006', 'In Stock', 'All'),
(42, 'DalerRowneysketchbook1.jpg ', 'DalerRowneysketchbook2.jpg ', 'DalerRowneysketchbook3.jpg ', 'DalerRowneysketchbook2.jpg ', 'Daler Rowney Sketch Pad', 'These have 30 pages of 160 gram paper in each pad.\nAvailable in neutral color tones, warm colors & cool color tones (6 colors of each tone).\nShades are mentioned on right side of the pad.\nHover or zoom to see the shades.', 2, 'Rs:2500', 2000, '30%', '', 'The Stationers', 'SK20007', 'In Stock', 'All'),
(43, 'SPFineGrainsketchbook1.jpg', 'SPFineGrainsketchbook2.jpg', 'SPFineGrainsketchbook3.jpg', 'SPFineGrainsketchbook4.jpg', 'SP Fine Grain Sketch Pad', '150 gram textured acid free schoeller paper from holland. It has 20 sheets in one sketchbook.  Ideal for drawing, sketching, watercolor, calligraphy, charcoal & pastel work.', 2, 'Rs:2400', 1700, '25%', '', 'The Stationers', 'SK2008', 'In Stock', 'All'),
(44, 'DalerRowneySpiralsketchbook1.jpg', 'DalerRowneySpiralsketchbook2.jpg', 'DalerRowneySpiralsketchbook3.jpg', 'DalerRowneySpiralsketchbook4.jpg', 'Daler Rowney Spiral Sketch Book', 'The Daler Rowney Spiral Mixed Media Sketchbook is an exceptional choice for artists who want a versatile and high-quality sketchbook that can handle a variety of mediums. This sketchbook features 30 sheets (60 pages) of acid-free, 160gsm paper that is perfect for sketching, drawing, painting, and mixed media techniques.  The paper has a smooth surface that works well with a range of dry and wet media, including pencils, markers, ink, watercolors, and acrylic paints. This makes it a great choice for artists who like to experiment with different mediums in their artwork. Additionally, the paper is thick and durable, making it suitable for heavy applications of paint and ink without bleed-through.', 2, '', 3500, '', 'New', 'The Stationers', 'Sk20009', 'In Stock', 'All'),
(45, 'PASTELmakeuppouch1.jpg', 'PASTELmakeuppouch2.jpg', 'PASTELmakeuppouch3.jpg', 'PASTELmakeuppouch4.jpg', 'Pastel Doodle Makeup Pouch', 'Size 5 x 9 inches approx.High quality smooth zipper. Perfect for storing your makeup, stationery, medicines, vanity kit for travel, or just about anything small and cute.', 20, 'Rs:1800', 1500, '30%', '', 'The Stationers', 'MP34001', 'In Stock', 'Female'),
(46, 'PLANT LOVERmakeuppouchh1.jpg', 'PLANTLOVERmakeuppouch2.jpg', 'PLANTLOVERmakeuppouch3.jpg', 'PLANT LOVERmakeuppouchh1.jpg', 'Plant Lover Doodle Makeup Pouch', 'Size 5 x 9 inches approx. Perfect for storing your makeup, stationery, medicines, vanity kit for travel, or just about anything small and cute', 20, '', 1200, '', 'New', 'The Stationers', 'MP34002', 'In Stock', 'Female'),
(47, 'MONOCHROMEmakeuppouch1.jpg', 'MONOCHROMEmakeuppouch2.jpg', 'MONOCHROMEmakeuppouch3.jpg', 'MONOCHROMEmakeuppouch4.jpg', 'Monochrome Doodle Makeup Pouch', 'Size 5 x 9 inches approx. Perfect for storing your makeup, stationery, medicines, vanity kit for travel, or just about anything small and cute.!', 20, '', 1600, '', 'New', 'The Stationers', 'MP34003', 'In Stock', 'Female'),
(48, 'MOONLIGHTmakeuppouch1.jpg', 'MOONLIGHTmakeuppouch2.jpg', 'MOONLIGHTmakeuppouch3.jpg', 'MOONLIGHTmakeuppouch4.jpg', 'Moonlight Garden', 'Size 5 x 9 inches approx. Black velvet lining inside. Made of Canvas Twill Fabric. Perfect for storing your makeup, stationery, medicines, vanity kit for travel, or just about anything small and cute', 20, 'Rs:1800', 1500, '30%', '', 'The Stationers', 'MP34004', 'In Stock', 'Female'),
(49, 'MAKEITmakeuppouch1.jpg', 'MAKEITmakeuppouch2.jpg', 'MAKEITmakeuppouch3.jpg', 'MAKEITmakeuppouch4.jpg', 'Make It Happen Girl Makeup Pouch', 'Size 5 x 9 inches approx. High quality smooth zipper. Black velvet lining inside. Made of Canvas Twill Fabric. Perfect for storing your makeup, stationery, medicines, vanity kit for travel, or just about anything small and cute', 20, 'Rs:1200', 1000, '25%', '', 'The Stationers', 'MP34005', 'In Stock', 'Female'),
(50, 'SandstoneMakeupPalette1.jpg', 'SandstoneMakeupPalette2.jpg', 'SandstoneMakeupPalette3.jpg', 'SandstoneMakeupPalette4.jpg', 'Sandstone Makeup Palette', '32 eyeshadow with mirror.Make up your eyes with these adorable colors & glitters. A perfect palette to pair your eyeshadows with your chic and stylish outfits! They’re super pigmented and easy to blend.', 17, '', 1800, '', 'New', 'The Stationers', 'MK36123', 'In Stock', 'Female'),
(51, 'AestheticMakeupPalette1.jpg', 'AestheticMakeupPalette2.jpg', 'AestheticMakeupPalette1.jpg', 'AestheticMakeupPalette2.jpg', 'Aesthetic Window Heart Make up Palette', ' 30 shades in 1 palette. Make up your eyes with these adorable colors & glitters. A perfect palette to pair your eyeshadows with your chic and stylish outfits! They’re super pigmented and easy to blend.', 17, 'Rs:1600', 1400, '20%', '', 'The Stationers', 'MK36124', 'In Stock', 'Female'),
(52, 'BlueMakeupPalette1.jpg', 'BlueMakeupPalette2.jpg', 'BlueMakeupPalette1.jpg', 'BlueMakeupPalette2.jpg', 'Blue Whale Cloudy Makeup Palette', 'Make up your eyes with these adorable colors & glitters. A perfect palette to pair your eyeshadows with your chic and stylish outfits! They’re super pigmented and easy to blend.', 17, 'Rs:1800', 1500, '30%', '', 'The Stationers', 'MK36125', 'In Stock', 'Female'),
(53, 'Giorgioneartbrushes1.jpg', 'Giorgioneartbrushes2.jpg', 'Giorgioneartbrushes3.jpg', 'Giorgioneartbrushes1.jpg', 'Giorgione Round Artist Brushes Pack of 12', 'These 12 Piece Art Brushes are made from finest imported nylon fibers, making them perfect for oil, watercolor, acrylic, gouache, face painting. With excellent Liquid Holding Capacity, they provide a consistent and smooth flow of paint.Random color will be sent .', 9, 'Rs:900', 850, '20%', '', 'The Stationers', 'AB23567', 'In Stock', 'All'),
(54, 'KeepSmilingfanartbrush2.jpg', 'KeepSmilingfanartbrush1.jpg', 'KeepSmilingfanartbrush2.jpg', 'KeepSmilingfanartbrush1.jpg', 'Keep Smiling Fan Brushes Set Of 5 Pieces', 'Works well with oil, watercolor, acrylic, enamel, cel-vinyl, gouache paints. Great for wildlife, botanical, portraiture, doll, illustrations, miniature, model ships and airplanes, arts and craft, rock, leather, gesso and ceramic, or body, nail, and face art painting. HIGH-QUALITY CRAFTSMANSHIP: Artist quality small paintbrushes designed with durable synthetic nylon bristles, rust-proof nickel ferrules, and sturdy wooden handles. Individually handcrafted and double-crimped with excellent workmanship so no flaking paint from handles, loose bristles, or ferrules with this pro mini paint brushes set. Intended for long time use, no compromise to the performance or appearance after multiple painting and cleaning.EASY MAINTENANCE: After using your fine tip paint brushes for acrylic, oil, or watercolor painting, it’s very convenient to clean them with warm soapy water and reshape the paintbrush tips. Air-dry the detail brushes and store them in the carrying container in a tip-top position for a long time of use. Paintbrushes nylon hairs are carefully selected and will spring back perfectly after every brush strokes. They can be easily clean up with soapy warm water and reshaped with your fingers. WARM TIPS: Clean your brushes immediately after using them, avoid scrubbing while cleaning. Never leave your brushes resting on their heads in the water, solvent, or when drying. Store clean brushes vertically, head-side-up, or horizontally.', 9, 'Rs:900', 880, '10%', '', 'The Stationers', 'AB23568', 'In Stock', 'All'),
(55, 'Derwentartbrush1.jpg', 'Derwentartbrush2.jpg', 'Derwentartbrush3.jpg', 'Derwentartbrush4.jpg', 'Derwent Technique Brushes Set', 'Professional-quality paintbrush set for creating a wide variety of marks, Perfect for professional and amateur artists of all ages. Wide range of effects: Include laying down a wash over a large area, Creating fine lines to marks such as hair and grass.For use with watercolour paints, watersoluble pencils and blocks such as the Derwent Graphik Line Painter pens (2302234).Application: 6 assorted brush create a wide variety of different marks - laying down a wash over a large area, creating fine lines, creating marks such as hair and grass.Contents: 1 x Derwent Set of Assorted Technique Brushes, Includes: 1x Foam Brush, 1x Swordliner, 1x Fan Brush, 1x Flat Brush, 1x Comb Brush, 1x Rigger Brush, 2302003.', 9, '', 2500, '', 'New', 'The Stationers', 'AB23569', 'In Stock', 'All'),
(56, 'KeepSmilingProfessionalartbrush1.jpg', 'KeepSmilingProfessionalartbrush2.jpg', 'KeepSmilingProfessionalartbrush3.jpg', 'KeepSmilingProfessionalartbrush4.jpg', 'Keep Smiling Professional Fine Tip Paint Brush Sets', '12 Pieces Professional Fine Tip Paint Brush Set Round Pointed Tip Nylon Hair Artist Acrylic Brush for Acrylic Watercolor Oil Painting. They are great gifts for artists, students, teens, kids and beginners or anyone who has great fun in painting of acrylic watercolor oil, body, nail, face painting , arts and craft, hobby painting, rock painting, ceramic models, leather, gesso, and paint by numbers, etc.   This synthetic mini detail paint brush set is perfect for watercolor, acrylic, enamel, oil, cel-vinyl or gouache paints. Individually hand crafted and double-crimped with excellent workmanship so no flaking paint from handles, loose bristles or ferrules with this fine art brush set. Brush nylon hairs stay soft and flexible after cleaning, and they don\'t fall apart after cleaning too.', 9, 'Rs:1300', 1200, '20% ', '', 'The Stationers', 'AB23570', 'In Stock', 'All'),
(57, 'MontMarteartmarker.jpg', 'MontMarteartmarker.jpg', '', '', 'Mont Marte Signature Twistable Metallics 6pc', 'Add some shimmer and sparkle with our Twistable Metallics 6pc. These gel sticks create thick strokes, making them ideal for colouring large surfaces. Plus, they offer a metallic finish, smooth blending and glide effortlessly across the page. Thanks to the textured finger grip and twistable pen body, these colour sticks are a breeze to create with and will help your next art, craft or school project shine.6 metallic colours: White, Lemon Yellow, Magenta, Violet, Blue, Dark Green .Translucent finish allows you to create layering effects and new colours. Thick 10mm (0.3in) gel stick great for covering large areas.Water-based – blend with water for watercolour effects. Glides and blends smoothly for easy colour transitions. Quick drying means less smudging.', 8, 'Rs:1250', 1200, '20%', '', 'The Stationers', 'AM67123', 'In Stock', 'All'),
(58, 'STADualartmarker1.jpg', 'STADualartmarker2.jpg', 'STADualartmarker3.jpg', 'STADualartmarker4.jpg', 'STA Dual Coloring Watercolor Brush Pen', 'Model Number:3110Art MarkerDouble head water mark penWater based inkDouble head design for easy paintingNo smell no poisonPen body design simple and generous.', 8, '', 2250, '', 'New', 'The Stationers', 'AM67124', 'In Stock', 'All'),
(59, 'SharpieTwinartmarker.jpg', 'SharpieTwinartmarker.jpg', '', '', 'Sharpie Twin Tip Ultra Fine Permanent Marker Pack of 8', 'Sharpie Twin Tip provides the value and convenience of two markers in one. Features a fine point tip for thin, detailed lines on one end and an ultra fine point tip for even more precise writing on the other. Excellent for marking cardboard, photo paper, corrugate, wood, metal, foil, stone, plastic, leather and more. Quick drying ink which is both fade and water resistant and permanent on most surfaces.', 8, 'Rs:3650', 3500, '15%', '', 'The Stationers', 'AM67125', 'In Stock', 'All'),
(60, 'SharpieUltraFineartmarker1.jpg', 'SharpieUltraFineartmarker2.jpg', '', '', 'Sharpie Ultra Fine Permanent Marker Pack of 4', 'Proudly permanent ink marks on paper, plastic, metal and most other surfaces Intensely brilliant colours create custom, vibrant impressions Remarkably resilient ink dries quickly and resists fading and water Ultra-fine and narrow tip for extreme control Includes 4 Sharpie Permanent Markers: black, blue, red and green.', 8, 'Rs:1230', 1150, '15%', '', 'The Stationers', 'AM67126', 'In Stock', 'All'),
(61, 'M&GPaintMarkerartmarker1.jpg', 'M&GPaintMarkerartmarker2.jpg', 'M&GPaintMarkerartmarker3.jpg', '', 'M&G Paint Marker Single Piece', 'M&G Paint Marker Single Piece AOMY8501 Produced using High Quality Made in our Facility The ink is clear the composing is smooth Appropriate for a wide scope of paint pens composing without a hitch reasonable for composing on glass, plastic, ceramic, wood, metal, paper and different surfaces', 8, 'Rs:210', 200, '', '', 'The Stationers', 'AM67127', 'In Stock', 'All'),
(62, 'FaberCastellartmarker.jpg', 'FaberCastellartmarker.jpg', '', '', 'Faber Castell Creative Marker Set of 2 Black & White', 'Creative Markers are perfect for the artist who wants to add their art to all of their everyday belongings! Wow your friends and family with your artistic ability on all your surfaces Complete 2 count marker set comes with the colors white and black Markers are ideal for most surfaces: cardstock, glass, plastic and more! They are perfect for coloring on your personal belongings like glass wear, shoes and electronics Artist markers are smudge and splash proof to easy writing, drawing, and coloring.', 8, '', 800, '', 'New', '', 'AM67128', 'In Stock', 'All'),
(63, 'DalerRowneyartmarker1.jpg', 'DalerRowneyartmarker2.jpg', '', '', 'Daler Rowney FW Mixed Media Technical Paint Markers 1mm Pack Of 2', 'Daler-Rowney FW Mixed Media Paint Markers are refillable markers that allow you to apply inks and other liquid media with precision across a variety of surfaces. A selection of paint marker sets and nibs are available, suitable for technical drawing, illustration, and street art.Refillable markers. Can be used with a variety of media. Variety of barrels and nibs available. High versatility: multi-surfaces, indoor and outdoor, ideal for mixed media.', 8, '', 1500, '', 'New', 'The Stationers', 'AM67129', 'In Stock', 'All'),
(64, 'FaberCastellPolychromoscaryons1.jpg', 'FaberCastellPolychromoscaryons2.jpg', 'FaberCastellPolychromoscaryons3.jpg', 'FaberCastellPolychromoscaryons4.jpg', 'Faber Castell Polychromos Soft Pastel Crayon Sets', 'The Polychromos artists\' pastel crayons contain a high level of pigment and are free from oils and wax. The crayons can be smudged to create fine transitions of colour. Harder than the soft pastel crayons, Polychromos crayons are also well suited to drawing. Polychromos artists\' pastels are characterised by their stable consistency, the economy of use and excellent adherence to paper, cardboard, wood and stone. Only minimal fixing is required, ensuring that the pastel drawings retain their vividness of colour.', 10, 'Rs:5280', 5250, '', '', 'The Stationers', 'CA67854', 'In Stock', 'Child'),
(65, 'SakuraOilPastelsCrayon1.jpg', 'SakuraOilPastelsCrayon2.jpg', 'SakuraOilPastelsCrayon3.jpg', 'SakuraOilPastelsCrayon4.jpg', 'Sakura Oil Pastels Crayon', 'Ideal for children\'s art education. Bright and intense color. Extremely smooth and very easy to apply. Perfect for color mixing and color overlaying. Instruction booklet available on various techniques - \"Stenciling\", \"Scratching\", \"Watercolor Resist\" and so on. Available in 12, 25, and 50 colors.', 10, 'Rs:375', 350, '10%', '', 'The Stationers', 'CA67855', 'In Stock', 'Child'),
(66, 'CrayolaNeonCrayons1.jpg', 'CrayolaNeonCrayons2.jpg', 'CrayolaNeonCrayons3.jpg', 'CrayolaNeonCrayons1.jpg', 'Crayola Neon Crayons Pack Of 8', 'Unleash your creativity with this 8-pack of Crayola Neon Crayons Non-washable. Crayons Colors include: shamrock, shocking pink, outrageous orange, carnation pink, sky blue, melon, atomic tangerine and laser lemon Convenient small package in reusable tuck box The crayons are double wrapped for extra strength.', 10, '', 450, '', 'New', 'The Stationers', 'CA67856', 'In Stock', 'Child'),
(67, 'CrayolaAssortedcaryon1.jpg', 'CrayolaAssortedcaryon2.jpg', 'CrayolaAssortedcaryon3.jpg', 'CrayolaAssortedcaryon4.jpg', 'Crayola Assorted Colors Crayon Pack Of 16 ', 'Made in the USA or imported 16 unique colors; not the traditional school \"\" color palette. For home-use \"lots of colored\" Beats \"markers that last a long time .Extended vented lid for safety.', 10, 'Rs:2100', 2000, '20%', '', 'The Stationers', 'CA67857', 'In Stock', 'Child'),
(68, 'RingCrayons.jpg', 'RingCrayons.jpg', '', '', 'Ring Crayons', 'A Different Style Of Crayons - Ring Shaped . It Clean And Easy To Use Crayon For Kids . It Develops A Strong Characteristic To Touch And Feel Objects In Kids . Kids Will Enjoy Coloring With These Crayons Because Of Its Unusual Shape . Suitable For Drawing Coloring On Gift Card Diy Photo Album Coloring Book Or Working On Any Smooth Surface .', 10, 'Rs:420', 400, '', '', 'The Stationers', 'CA67858', 'Out of Stock', 'Child'),
(69, 'CrayolaCrayonsColor1.jpg', 'CrayolaCrayonsColor2.jpg', 'CrayolaCrayonsColor3.jpg', 'CrayolaCrayonsColor4.jpg', 'Crayola Crayons Color Pack Of 8', 'Classic colored waxes for children of all ages. True Hues and intense shine in primary and secondary colors. Double wrapped for strength. non-washable. Classic waxes for children of all ages True Hues and intense shine in primary and secondary colors non-washable Made in the USA.', 10, 'Rs:510', 500, '', '', 'The Stationers', 'CA67859', 'In Stock', 'Child'),
(70, 'Marie\'sGessomedium1.jpg', 'Marie\'sGessomedium2.jpg', 'Marie\'sGessomedium3.jpg', 'Marie\'sGessomedium4.jpg', 'Marie\'s Gesso Primer 500ml', 'Gesso in 500ml jar for the preparation of surfaces to be painted.\r\nDries rapidly and leaves a light matt surface.\r\nCan be applied on clean and non-greasy surfaces (suitable for most surfaces).\r\nImproves the adhesion of acrylic and oil paints.\r\nClean brushes and painting knives with soapy water.\r\nGesso in 500ml jar for the preparation of surfaces to be painted.', 11, 'Rs:1150', 1100, '15%', '', 'The Stationers', 'MA34561', 'In Stock', 'All'),
(71, 'MontMarteAcrylicmedium1.jpg', 'MontMarteAcrylicmedium1.jpg', '', '', 'Mont Marte Acrylic Retarder 75ml', 'Mont Marte Acrylic Retarder Gel slows down acrylic paint normal drying time. Practice usage before committing to your final artwork. FEATURES delayed drying time facilitates easier blending of colours and enables a smoother coat over larger areas this medium may change its viscosity drying times may vary re: quantity used.', 11, 'Rs:530', 500, '5%', '', 'The Stationers', 'MA34562', 'In Stock', 'All'),
(72, 'MontMartePremiumAcrylicmedium1.jpg', 'MontMartePremiumAcrylicmedium2.jpg', 'MontMartePremiumAcrylicmedium3.jpg', 'MontMartePremiumAcrylicmedium1.jpg', 'Mont Marte Premium Acrylic Pouring Medium 240ml', 'Create your own fluid art by adding this pouring medium to your acrylic paints! You can also use it in small amounts to make your brushstrokes flow better in regular acrylic painting. Ideal for fluid art Improves the flow of acrylic paints. Increases paint transparency. Dries clear. This versatile medium can also be used to create smooth brush strokes in regular acrylic painting.', 11, 'Rs:1850', 1800, '15%', '', 'The Stationers', 'MA34563', 'In Stock', 'All'),
(73, 'MontMarteMedium135ml1.jpg', 'MontMarteMedium135ml2.jpg', 'MontMarteMedium135ml3.jpg', 'MontMarteMedium135ml1.jpg', 'Mont Marte Premium Acrylic Medium Gloss 135ml', 'Ideal for creating thin glazes, washes and watercolour effects without reducing adhesive qualities or colour strength. Not designed to be used as a final varnish. Clean up with water. Mix this medium with acrylic paints to create glazes, washes and watercolour effects. Mix any amount with acrylic paints to create different levels of paint translucence Increases paint flow. Does not reduce colour vibrancy Clean up with warm soapy water while wet.', 11, '', 850, '', 'New', 'The Stationers', 'MA34564', 'In Stock', 'All'),
(74, 'MontMartePremiumClearTexturemedium1.jpg', 'MontMartePremiumClearTexturemedium2.jpg', 'MontMartePremiumClearTexturemedium1.jpg', 'MontMartePremiumClearTexturemedium2.jpg', 'Mont Marte Premium Clear Texture Gesso 250ml', 'Mont Marte Premium Clear Texture Gesso is suitable for preparing your artwork surfaces with a transparent finish. You can use this versatile medium with acrylic, oil, pastels, and other paint media. It is lightweight, non-yellowing, and dries to a water resistant finish. This clear gesso is intermixable with Mont Marte acrylic paints and mediums, allowing you to create a tinted gesso by mixing it with a colour of your choice.Acrylic and oil paint clear gesso: suitable for use with acrylic, oil, pastels, and other paint media.', 11, 'Rs:1750', 1700, '15%', '', 'The Stationers', 'MA34565', 'In Stock', 'All'),
(75, 'DalerRowneyAcrylicMedium.jpg', 'DalerRowneyAcrylicMedium.jpg', '', '', 'Daler Rowney Acrylic Medium Decoupage Painting', 'Daler Rowney Decoupage Medium formerly Craft Seal is specially formulated as a clear gloss medium with adhesive properties for paper mache, collage, and decoupage or as a final water-resistant sealant for all manner of craftworks including stone, wood, card and paper.  It can also be added to the System 3 poster and powder color to give greater flexibility and increase gloss and transparency.  It is not removable when dry and its milky color dries clear.', 11, 'Rs:1100', 1050, '15%', '', 'The Stationers', 'MA34566', 'In Stock', 'All'),
(76, 'DalerRowneyWhiteGessoPrimerMedium.jpg', 'DalerRowneyWhiteGessoPrimerMedium.jpg', '', '', 'Daler Rowney White Gesso Primer Medium 250ml', 'White Gesso Primer is a unique formulation that needs no dilution. Highly adhesive, ideal for directly sealing all semi-absorbent surfaces before applying color – both acrylics and oils. Suitable for both interior and exterior applications. It dries quickly to produce a matt white surface, with a slight tooth, which is easily sanded for highly detailed work.', 11, 'Rs:1620', 1600, '5%', '', 'The Stationers', 'MA34567', 'In Stock', 'All'),
(77, 'MontMarteFabricPaint1.jpg', 'MontMarteFabricPaint2.jpg', 'MontMarteFabricPaint3.jpg', 'MontMarteFabricPaint4.jpg', 'Mont Marte Fabric Paint Set Signature 24pc x 20ml', 'Add your own designs to clothing and homewares with our Signature Fabric Paint Set. Use them straight out of the tub or mix them together to create custom colours!   Includes 24 vibrant colours: Titanium White, Yellow Pink, Lemon Yellow, Cadmium Yellow, Yellow Deep, Orange, Brilliant Red, Crimson, Pink, Purple, Light Purple, Sky Blue, Cerulean Blue, Light Green, Sap Green, Burnt Sienna, Burnt Umber, Lamp Black, Gold, Silver, Metallic Red, Metallic Blue, Fluoro Yellow, Fluoro Pink Mixable colours for an even bigger palette Suitable for use on clothes, fabric shoes, tote bags, cushions and other DIY fashion and homewares Permanent once dry and machine washable once set using the instructions below', 12, 'Rs:5000', 4500, '20% ', '', 'The Stationers', 'FP28990', 'In Stock', 'All'),
(78, 'MarabuFashionLinerfabricpaint1.jpg', 'MarabuFashionLinerfabricpaint2.jpg', 'MarabuFashionLinerfabricpaint3.jpg', 'MarabuFashionLinerfabricpaint4.jpg', 'Marabu Fashion Liner 25ml', 'Marabu-fashion liner. This fabric paint liner will work on fabrics with up to 20Percent synthetic content. Water-based odorless nonfading. Intense matte colors with shimmering effects. Soft to the touch and machine washable. Ideal for embellishing and writing on fabric. This package contains 25ml of fashion liner. Conforms to ASTM d 4236. Comes in a variety of colors.', 12, '', 650, '', 'New', 'The Stationers', 'FP28991', 'In Stock', 'All'),
(79, 'CrayolaFineLinefabricpaint1.jpg', 'CrayolaFineLinefabricpaint2.jpg', 'CrayolaFineLinefabricpaint3.jpg', 'CrayolaFineLinefabricpaint4.jpg', 'Crayola Fine Line Fabric Markers Set Of 10', 'Bold colors are highly visible on both light and dark fabrics Fine-tip offers an easy way to create vivid, colorful designs Versatile formula works on cotton and polyester clothing and accessories Ink is certified AP nontoxic for safe use.', 12, 'Rs:2550', 2500, '5%', '', 'The Stationers', 'FP28992', 'Out of Stock', 'All'),
(80, 'MariesFabricPaints1.jpg', 'MariesFabricPaints2.jpg', 'MariesFabricPaints3.jpg', 'MariesFabricPaints4.jpg', 'Maries Fabric Paints Set of 12', 'Maries Dope-Dyed. Fiber Colours is safe and easy to use on fabric materials Up to 36 Marie\'s bright and vibrant colours (10ml per bottle). Excellent Marie\'s fabric colours brightness and contrast quality for your artwork. Water and wash resistant. Can be used for hand-painting on cotton, canvas and other textile products (it is recommended to add the appropriate amount of material for dilution).Add an appropriate amount of colours on the materials for colour blending (may use the Regulator provided) or the viscosity. Let the colours on fabric dry naturally, temperature treatment can enhance the adhesiveness. After 72 hours, let it dry thoroughly before washing. Avoid long soaking when washing for painted materials. Keep the bottle cap close after use to avoid the colour dry. Not suitable for kids 6 years old and below.', 12, 'Rs:1900', 1800, '20% ', '', 'The Stationers', 'FP28993', 'In Stock', 'All'),
(81, 'KeepSmilingFabricPaints.jpg', 'KeepSmilingFabricPaints.jpg', '', '', 'Keep Smiling Fabric Paints Tubes Pack Of 12', 'Acrylic colors best on fabrics, earthenware, canvas, wood, thermal, etc. Rich soft colors that work well on both light and dark surfaces. Dry quickly and are permanent. Fabrics remain soft post-application.', 12, '', 800, '', 'New', 'The Stationers', 'FP28993', 'In Stock', 'All'),
(82, 'MontMarteFabricPaintSet8pcs1.jpg', 'MontMarteFabricPaintSet8pcs3.jpg', 'MontMarteFabricPaintSet8pcs2.jpg', 'MontMarteFabricPaintSet8pcs2.jpg', 'Mont Marte Fabric Paint Set 8pcs x 20ml', '8 x 20ml pots of various colours - White, Black, Yellow, Green, Pink, Blue, Red & Purple Mixable colours for a bigger palette. Suitable for use on clothes, fabric shoes, tote bags, cushions and other DIY fashion and homewares.Place a barrier such as cardboard or baking paper between the two sides to prevent paint from bleeding through. Apply a thin, even coat and wait till dry, then add more layers until happy with opacity level Once dry, place a cloth over the design and iron for 3-5 minutes at 100 degrees Celsius (212 degrees F) to \'fix\' your artwork. To wash, turn garment inside-out and wash on a cold cycle.', 12, 'Rs:2300', 2200, '30%', '', 'The Stationers', 'FP28993', 'In Stock', 'All'),
(83, 'MontMarteFluoroAcrylicPaint1.jpg', 'MontMarteFluoroAcrylicPaint2.jpg', 'MontMarteFluoroAcrylicPaint3.jpg', 'MontMarteFluoroAcrylicPaint4.jpg', 'Mont Marte Fluoro Acrylic Paint Premium 36 ml Tubes Set Of 8', 'Let there be glow! Add luminescent colours to your art and craft projects with our Fluoro Acrylic Paint Set 8pc x 36ml. Available in a range of brilliant colours the range offers a translucent finish that captures and amplifies light. Enjoy their vibrance in daylight or watch them transform and glow more vividly under blacklight. These fluorescent paints are quick drying and easy to clean up with water, making them ideal for use in the studio, at home or in the classroom.8 bright colours with a vibrant translucent finish Smooth consistency and quick-drying (great for layering) Translucent finish captures and reflects light Glows under blacklight.', 13, 'Rs:3100', 3000, '30%', '', 'The Stationers', 'AP45670', 'In Stock', 'All'),
(84, 'MontMartePremiumPouringAcrylicPaint1.jpg', 'MontMartePremiumPouringAcrylicPaint2.jpg', 'MontMartePremiumPouringAcrylicPaint3.jpg', 'MontMartePremiumPouringAcrylicPaint4.jpg', 'Mont Marte Premium Pouring Acrylic Paint 60ml Set Of 4', 'Create your own fluid art with this set of amazing colours! These pouring paints are pre-mixed so all you need to do is pour them onto a canvas or board to make a masterpiece. Ideal for acrylic pouring and fluid art. Pre-mixed and ready to pour 4 colours in 60ml (2oz) easy-pour bottles:Turquoise, Lamp Black, Bronze, Orange Smooth flow with stunning results. Can be mixed with silicone oil to create cells .7 different themed 60ml (2oz) pouring paint sets available - Symphony, Ethereal, Cosmic, Flamingo, Rainforest, Celestial, Aurora.', 13, '', 1800, '', 'New', 'The Stationers', 'AP45671', 'In Stock', 'All'),
(85, 'KeepSmilingAcrylicColourPaint1.jpg', 'KeepSmilingAcrylicColourPaint2.jpg', 'KeepSmilingAcrylicColourPaint1.jpg', 'KeepSmilingAcrylicColourPaint2.jpg', 'Keep Smiling Acrylic Colour Paint 30ml Set of 18pcs', 'Keepsmiling Acrylic colour paint set with 18 kinds of vivid, richly-pigmented colors. Non-toxic dries quickly and long-lasting vibrant. Great painting supplies for teens or adult artists, students, and more professional or beginners. Wide range of surfaces, such as canvas, ceramic, wood, clay, walls, nails, crafts, and more. Children use acrylic paints in art class and leisure time to develop imagination skills and adults paint to relax and boost creativity, great for creating decorative art for your home. Multi-purpose acrylic paint kit also perfect gifts for Art Students and kids, etc. Acrylic Paint only, other accessories demo in the picture are not included.', 13, 'Rs:3500', 3450, '15%', '', 'The Stationers', 'AP45672', 'In Stock', 'All'),
(86, 'MontMarteMetallicAcrylicPaint1.jpg', 'MontMarteMetallicAcrylicPaint2.jpg', 'MontMarteMetallicAcrylicPaint3.jpg', 'MontMarteMetallicAcrylicPaint1.jpg', 'Mont Marte Metallic Acrylic Paint Premium 36 ml Tubes Set Of 8', 'Add some sparkle to your art and craft projects with our Metallic Acrylics Paint Set 8pc x 36ml. They feature shimmering colours, smooth consistency and dry to a silk metallic finish. These metallic artist paints offer excellent covering power and are quick drying, making them great for use in the studio, at home or in the classroom. The very good lightfastness rating means your artwork will keep its lustrous shine for many years to come. Clean-up is a breeze - simply use water for spills and cleaning brushes.8 shimmering colours with a semi-opaque metallic finish. Smooth consistency and quick drying (great for layering) .Excellent covering power .Very good lightfastness so your artwork will maintain its look for years to come. Non toxic and water-based for easy clean up.', 13, 'Rs:3200', 3000, '', '', '', 'AP45673', 'In Stock', 'All'),
(87, 'MontMarteAcrylicPaint1.jpg', 'MontMarteAcrylicPaint2.jpg', 'MontMarteAcrylicPaint1.jpg', 'MontMarteAcrylicPaint2.jpg', 'Mont Marte Acrylic Paint 75ml', 'Our Acrylic Colour Paint Set is a great go-to for your art and craft projects. These paints feature a smooth and creamy texture and can be used on most surfaces including canvas, cardboard and leather.', 13, 'Rs:3050', 3000, '', '', 'The Stationers', 'AP45674', 'In Stock', 'All'),
(88, 'MontMarteSignatureAcrylicPaint1.jpg', 'MontMarteSignatureAcrylicPaint2.jpg', 'MontMarteSignatureAcrylicPaint3.jpg', 'MontMarteSignatureAcrylicPaint4.jpg', 'Mont Marte Signature Acrylic Colour Paint 36ml Set Of 18 Pcs', 'Our Signature Acrylic Paint Set is a great go-to for your art and craft projects. These paints feature a smooth and creamy texture and can be used on most surfaces including canvas, cardboard, and leather.  18 bright colours. Dries to a semi-matte finish. Good coverage and a creamy texture. Fast drying time allows you to layer paint quickly without muddying your colours. Suitable for most surfaces including canvas, wood, air-dried clay, plaster, cardboard, paper, leather and some plastics. Available in a range of colours.', 13, '', 4500, '', 'New', 'The Stationers', 'AP45675', 'In Stock', 'All'),
(89, 'MontMarteDimensionAcrylicPaint1.jpg', 'MontMarteDimensionAcrylicPaint2.jpg', 'MontMarteDimensionAcrylicPaint3.jpg', 'MontMarteDimensionAcrylicPaint4.jpg', 'Mont Marte Dimension Acrylic Paint Set Of 8 Pcs', 'Mont Marte Premium Dimension Acrylic is a high viscosity, fine art paint that offers artists a new dimension in painting.  This acrylic\'s ultra thick consistency can be applied with brush, palette knife or shaper to create especially exaggerated texture effects. Dries hard and holds shape while still maintaining flexibility and smooth flowability. It can be diluted with water or acrylic mediums for glazing or watercolour techniques. With dilution, the pigment still holds strong colour intensity. Excellent light-fastness and premium quality pigment means colour strength will stay brilliant for longer.', 13, 'Rs:2250', 2200, '15%', '', 'The Stationers', 'AP45676', 'In Stock', 'All');
INSERT INTO `products` (`Product_id`, `Product_Image1`, `Product_Image2`, `Product_Image3`, `Product_Image4`, `Product_Name`, `Product_Description`, `Categoryname`, `Old_Price`, `New_Price`, `Sale`, `New_Arrival`, `Vendor`, `Product_Code`, `Availibility`, `For`) VALUES
(90, 'KeepSmilingGlassPaint1.jpg', 'KeepSmilingGlassPaint2.jpg', 'KeepSmilingGlassPaint1.jpg', 'KeepSmilingGlassPaint2.jpg', 'Keep Smiling Glass Paint ', 'Use outliners with glass paints to imitate a stained glass effect.  Outliner is applied directly from the tube with the fine nozzle before applying the Glass colors. Leave to dry for 1 - 2 hours before filling in the areas of color with your glass paint.  Ideal for decorating glass objects, canvas, cards, and more.', 14, 'Rs:420', 400, '', '', 'The Stationers', 'GP89751', 'In Stock', 'All'),
(91, 'keepsmilingglasscolor1.jpg', 'keepsmilingglasscolor2.jpg', 'keepsmilingglasscolor1.jpg', 'keepsmilingglasscolor2.jpg', ' Keep Smiling Glass Paint  Set 12 Pcs Tubs', 'Keep smiling 12 pieces tubes multi colors glass colors starter set with 1 brush, glass artists\' paints color may be thinned with water.usually, however, glass paint colors are applied thickly and result appears like that of oil colors. Many artists prefer glass colors because glass colors dry much more quickly than oil colors and are practically odorless. Using for painting in glass. Color: multi colors. All multi colors in box. 12 pieces/box.', 14, 'Rs:550', 500, '15%', '', '', 'GP89752', 'In Stock', 'All'),
(92, 'GalleryGlassPaint1.jpg', 'GalleryGlassPaint2.jpg', 'GalleryGlassPaint3.jpg', 'GalleryGlassPaint1.jpg', 'Gallery Glass Liquid Lead 59ml ', 'For definite plans, utilize Liquid Leading to make plots for recolored glass look ventures with this waterbased, non-poisonous recipe.  Tool tip takes into consideration spotless, simple driving lines. Let dry 8 hours at that point you\'re prepared to paint.', 14, 'Rs:450', 400, '', '', 'The Stationers', 'GP89753', 'In Stock', 'All'),
(93, 'MariesOilPainting1.jpg', 'MariesOilPainting2.jpg', 'MariesOilPainting3.jpg', 'MariesOilPainting4.jpg', 'Maries Oil Painting Color 12ml 24Pcs', 'Marie’s 24 Oil Colors, Easy to use & reliable, This set includes twenty-four 12 ml tubes that are arranged in a lovely cardboard presentation box suitable for gift giving.', 16, 'Rs:1320', 1300, '', '', 'The Stationers', 'OP34910', 'In Stock', 'All'),
(94, 'WinsorNewtonOilPaint1.jpg', 'WinsorNewtonOilPaint2.jpg', 'WinsorNewtonOilPaint3.jpg', 'WinsorNewtonOilPaint4.jpg', 'Winsor Newton ArtisanOil Paint Set 10Pcs', 'Specifically developed to appear and work just like conventional oil color. Ideal for artists who share a workspace, schools or painting at home. Includes Lemon Yellow Hue, Cadmium Yellow Hue, Cadmium Red Deep Hue, Permanent Alizarin Crimson, Cerulean Blue Hue, French Ultramarine, Phthalo Green (Blue Shade), Yellow Ochre, Burnt Umber, Titanium White. Actual contents may vary.', 16, 'Rs:5100', 5000, '20%', '', 'The Stationers', 'OP34911', 'In Stock', 'All'),
(95, 'DalerRowneyOilPaint1.jpg', 'DalerRowneyOilPaint2.jpg', 'DalerRowneyOilPaint3.jpg', 'DalerRowneyOilPaint1.jpg', 'Daler-Rowney Simply Oil Paint', 'Daler-Rowney Simply Oil Paint Set 12-24 ColorsDaler-Rowney Simply Oil colors are a perfect starting point for artists and hobbyists looking to experiment with oils. These smooth colors can be used straight from the tube or thinned down to create glazes for a great, low price.  It can be used straight from the tube and can be thinned down to create glazes. High lightfastness (3*). Smooth colors. Made in England.', 16, 'Rs:3540', 3500, '', '', 'The Stationers', 'OP34912', 'In Stock', 'All'),
(96, 'DalerRowneyGraduateOilPaint1.jpg', 'DalerRowneyGraduateOilPaint2.jpg', 'DalerRowneyGraduateOilPaint1.jpg', 'DalerRowneyGraduateOilPaint2.jpg', 'Daler Rowney Graduate Oil Paint Set 10', 'Daler Rowney Graduate Oils are distinctive for their high permanence rating with a drying time that is half that of traditional oil colours. Quicker drying time allows for more to be done to the painting and opens up new creative possibilities. All colours have been specially formulated and stability tested to assure that wherever used in the world the colours are made to last.', 16, 'Rs:4550', 4500, '', '', 'The Stationers', 'OP34913', 'In Stock', 'All'),
(97, 'MariesOilColorPaintTube50ml1.jpg', 'MariesOilColorPaintTube50ml2.jpg', 'MariesOilColorPaintTube50ml3.jpg', 'MariesOilColorPaintTube50ml1.jpg', 'Maries Oil Color Paint Tube 50ml', 'Maries Oil is an economical range of oil paints intended for students and those begining the art of oil painting. Very economical for large canvas work. Marie\'s offer a superior strength of colour and mixing qualities allowing the choice of finely detailed work or heavy impasto styles. Maries Oil Colour Paints have \"selected & adopted the most permanent pigments, the best refined botanic oil, mixed and are finely ground into a smooth paste.Varied chemically and physical properties are strictly examined, they have a suitable degree of dryness and as the paste is steady, they can keep up and give full play of the strokes of painters. The white colours are particularly prepared to ensure from yellowish. All Maries Paints are packaged in non-leaded, non-toxic aluminium tubes.', 16, 'Rs:600', 580, '', '', 'The Stationers', 'OP34914', 'In Stock', 'All'),
(98, 'DalerRowneyGeorgianOilPaint1.jpg', 'DalerRowneyGeorgianOilPaint2.jpg', 'DalerRowneyGeorgianOilPaint1.jpg', 'DalerRowneyGeorgianOilPaint2.jpg', 'Daler Rowney Georgian Watermixable Oil Set Of 10', 'Daler-Rowney Georgian Water Mixable Oil colors offer artists the possibility of experiencing oil painting without the need for solvent-based mediums. An alternative to traditional oil paints, Georgian Water Mixable Oils can be thinned, mixed, and washed using water.  High concentration of pigment. Excellent lightfastness (3*). Smooth buttery consistency. Excellent water miscibility. Ideal to use indoor or in a classroom environment. Made in England.', 16, 'Rs:7500', 7000, '40%', '', 'The Stationers', 'OP34914', 'In Stock', 'All'),
(99, 'UNICORNLANDHappyDeals1.jpg', 'UNICORNLANDHappyDeals2.jpg', 'UNICORNLANDHappyDeals1.jpg', 'UNICORNLANDHappyDeals2.jpg', 'UnicornLand  Happy Deal 1', 'What it includes: 1 Unicorn Backpack,  1 Unicorn Journal,   1 Unicorn Sticky Note,  1 Unicorn Pen,  1 Unicorn Bookmark, 1 Unicorn pop it pen .', 26, 'Rs:5500', 5000, '40%', '', 'The Stationers', 'HD67721', 'In Stock', 'Child'),
(100, 'ButterflyHappyDeal1.jpg', 'ButterflyHappyDeal2.jpg', 'ButterflyHappyDeal1.jpg', 'ButterflyHappyDeal2.jpg', ' ButterFly  Happy Deal 1', 'What it includes: 1 Butterfly Backpack,  1 Journal and pen set ,1 necklace,  1 pouch, 1 pop it pen, 1 sticky note .', 26, 'Rs:4570', 4500, '', '', 'The Stationers', 'HD67722', 'In Stock', 'Child'),
(101, 'CataliciousHappyDeal1.jpg', 'CataliciousHappyDeal2.jpg', 'CataliciousHappyDeal1.jpg', 'CataliciousHappyDeal2.jpg', 'Catalicious Happy Deal', 'What it Includes:  1 Cat & girl Spiral Journal,  1 Cat Sticky Note,  1 Cat Water Bottle,  1 Cat sticker set, 1 marker Set,  1 Gel Pen,  1 rainbow pen,  1 pouch,  2 magnetic paper clip,  1 Gift Box.', 26, 'Rs:4450', 4400, '', '', '', 'HD67723', 'In Stock', 'Child'),
(102, 'KawaiiBearHappyDeal1.jpg', 'KawaiiBearHappyDeal2.jpg', 'KawaiiBearHappyDeal3.jpg', 'KawaiiBearHappyDeal1.jpg', 'Kawaii Bear Happy Deal', 'What it includes: 1 Bear Backpack, 1 Bear pouch,  1 spiral notebook,  1 notepad,  2 bear pens, 1 Sticker Set. ', 26, 'Rs:5000', 4950, '10%', '', 'The Stationers', 'HD67724', 'In Stock', 'Child'),
(103, 'UnicornlandHappyDeal21.jpg', 'UnicornlandHappyDeal22.jpg', 'UnicornlandHappyDeal23.jpg', 'UnicornlandHappyDeal21.jpg', 'Unicornland Happy  Deal 2   ', 'What it includes: 1 Unicorn Journal,  1 Unicorn Pop it bag, 1 Unicorn Pencil Set,  1 Unicorn Eraser,  1 Unicorn Sticky Note,  1 headband,  1 Highlighter set 2 hair clips , 1 Unicorn pen (color can vary) , 1 pop it pen Box packaging .', 26, 'Rs:3999', 3899, '20%', '', 'The Stationers', 'HD67725', 'In Stock', 'Child'),
(104, 'ButterflyHappyDeal21.jpg', 'ButterflyHappyDeal22.jpg', 'ButterflyHappyDeal23.jpg', 'ButterflyHappyDeal21.jpg', 'Butterfly Happy Deal 2 ', 'What it includes: 1 Butterfly Backpack,  1 HoloNeon Journal,  1 cute spiral notebook,  1 color pencil set ( tsum tsum ),  1 dangling rainbow pen, 1 Unicorn pen (color can vary),  1 eraser set,  1 hair pin .', 26, '', 4000, '', 'New', 'The Stationers', 'HD67726', 'In Stock', 'Child'),
(105, 'BlueFrozenHappyDeal12.jpg', 'BlueFrozenHappyDeal13.jpg', 'BlueFrozenHappyDeal14.jpg', 'BlueFrozenHappyDeal12.jpg', 'Blue Frozen Happy Deal 1', ' What it Includes:  1 glitter Journal,  1 reindeer water bottle,  1 Frozen Stationery Set,  1 Marker Set,  1 headband,  2 hair clips,  2 blue Hair Bow, 2 multi hair bow,  1 snowflake pen,  1 hair ties set.', 26, 'Rs:3999', 3900, '20% ', '', 'The Stationers', 'HD67727', 'In Stock', 'Child'),
(106, 'BlueFrozenHappyDeal21.jpg', 'BlueFrozenHappyDeal22.jpg', 'BlueFrozenHappyDeal23.jpg', 'BlueFrozenHappyDeal21.jpg', 'Blue Frozen Happy Deal 2 ', 'What it Includes:  1 Floral Journal,  1 whiteboard with magnet & marker, 1 Frozen Mini Diary Set,  1 Stationery Set,  1 Pouch,  1 Sticker sheet,  2 Hair Bow, 1 reindeer pen, 1 funky gel pen.', 26, 'Rs:3200', 3000, '30%', '', 'The Stationers', 'HD67727', 'In Stock', 'Child'),
(107, 'BestOfLuckGreetingCard.jpg', 'BestOfLuckGreetingCard.jpg', '', '', 'Best Of Luck Greeting Card', 'Size: 13 cm x 9 cm', 28, '', 150, '', 'New', 'The Stationers', 'GC35662', 'In Stock', 'All'),
(108, 'EidMubarakGreetingCards1.jpg', 'EidMubarakGreetingCards2.jpg', 'EidMubarakGreetingCards1.jpg', 'EidMubarakGreetingCards2.jpg', 'Eid Mubarak Greeting Cards', 'Relish your creativity ', 28, '', 250, '', '', 'The Stationers', 'GC35663', 'In Stock', 'All'),
(109, 'ExclusivePerfumeforMen1.jpg', 'ExclusivePerfumeforMen2.jpg', 'ExclusivePerfumeforMen3.jpg', 'ExclusivePerfumeforMen1.jpg', 'Exclusive Intense EDP Perfume for Men 100ml', '• Long Lasting Scent • Suitable for Daily Wear • Limited Edition EDP Perfume For Men • 100ml', 24, 'Rs:2700', 2500, '30%', '', 'The Stationers', 'PF23678', 'In Stock', 'Male'),
(110, 'CUTESOFTTEDDYBEARstufftoy1.jpg', 'CUTESOFTTEDDYBEARstufftoy2.jpg', 'CUTESOFTTEDDYBEARstufftoy3.jpg', 'CUTESOFTTEDDYBEARstufftoy3.jpg', 'CUTE SOFT TEDDY BEAR TOY ', 'Best gift for to someone special. Soft and cuddly filling, wonderful look light in weight. Very attractive to make you have a good feeling all the time, gift this soft, smooth and cuddly teddy as a great gift to your loved one.', 32, 'Rs:4000', 3500, '30%', '', 'The Stationers', 'ST89912', 'In Stock', 'Child'),
(111, 'SOFTBEANPAndastufftoy1.jpg', 'SOFTBEANPAndastufftoy2.jpg', 'SOFTBEANPAndastufftoy3.jpg', 'SOFTBEANPAndastufftoy1.jpg', 'SOFT BEAN PANDA TOY', 'Designed with love, light weight.  Easy to carry anywhere.  Premium Quality.  Friendly to baby’s skin.', 32, '', 2900, '', 'New', 'The Stationers', 'ST89913', 'In Stock', 'Child'),
(112, 'Charactersoftbeantoy1.jpg', 'Charactersoftbeantoy2.jpg', 'Charactersoftbeantoy3.jpg', 'Charactersoftbeantoy1.jpg', 'Character Soft Bean Toy', 'Non-Toxic and soft fabric good quality and washable. Light weighted, attractive, colorful, vibrant, soft and easy to carry. The sweetest stuffed toy for your kids to hug & keep forever. Huggable and loveable for someone special with extra soft. Best Gift For Kid.', 32, '', 2500, '', '', 'The Stationers', 'ST89914', 'In Stock', 'Child'),
(113, 'Comicdoll1.jpg', 'Comicdoll2.jpg', 'Comicdoll1.jpg', 'Comicdoll2.jpg', 'Comic Doll Stuff Toy For Kids', 'Soft, gentle, pleasant and comfortable rag doll Perfect Finishing. They are nice to embrace, take a walk with and sweet sleep with. Games with a doll helps develop only the best qualities in young kids. Plush soft material makes feel you good and love it too much better.', 31, '', 3000, '', '', 'The Stationers', 'DS45671', 'In Stock', 'Child'),
(114, 'Minifashiondoll1.jpg', 'Minifashiondoll2.jpg', 'Minifashiondoll3.jpg', 'Minifashiondoll1.jpg', 'Mini Fashion Doll', 'Introducing our Mini Fashion Dolls Toy for Kids, the ideal companion for every little girl. Whether she\'s engaging in imaginative play or embarking on a travel adventure, this mini-doll will bring hours of joy with its small size and exquisite details.', 31, '', 600, '', '', 'The Stationers', 'DS45672', 'In Stock', 'Child'),
(115, 'printedgiftbags1.jpg', 'printedgiftbags2.jpg', 'printedgiftbags1.jpg', 'printedgiftbags2.jpg', 'Printed Paper Gift Bag', 'High quality paper gift bag with Carry handle. Size: H:13.5inch, W:10.5inch.', 27, '', 200, '', '', 'The Stationers', 'GB23461', 'In Stock', 'All'),
(116, 'CharacterMiniStuffToy1.jpg', 'CharacterMiniStuffToy2.jpg', 'CharacterMiniStuffToy1.jpg', 'CharacterMiniStuffToy2.jpg', 'Character Minnie Stuff Toy', 'Light weighted, attractive, colorful, vibrant, soft and easy to carry. Creates a special memory with your loved ones, Super cute Minnie Stuff Toy, kids spend a wonderful time with it. Plush soft material makes feel you good and love it too much better.', 32, '', 4000, '', '', 'The Stationers', 'ST89915', 'In Stock', 'Child'),
(117, 'CharacterMickeyStuffToy1.jpg', 'CharacterMickeyStuffToy2.jpg', 'CharacterMickeyStuffToy1.jpg', 'CharacterMickeyStuffToy2.jpg', 'Character Mickey Stuff Toy', 'Super cute Mickey & Minnie Stuff  Toy, a family spend a wonderful time with you. PP cotton material makes you love it too hard. Hand-made, so you can rest assured in quality. 100% Exactly as per Picture. Mickey Size: H\' 40.5 inches W\' 10.5 inches', 32, '', 4000, '', '', 'The Stationers', 'ST89916', 'In Stock', 'Child'),
(118, 'SoftBeanButterflyToy1.jpg', 'SoftBeanButterflyToy2.jpg', 'SoftBeanButterflyToy1.jpg', 'SoftBeanButterflyToy2.jpg', 'Soft Bean Butterfly Toy', ' Premium Quality  Friendly to baby’s skin.  Age: 3+ years. Size: H\' 9.8 inch W\' 11.8 inch.', 32, 'Rs:1550', 1499, '15%', '', 'The Stationers', 'ST89917', 'In Stock', 'Child'),
(119, 'CharacterMiniStuffToy1.jpg', 'CharacterMiniStuffToy2.jpg', 'CharacterMiniStuffToy1.jpg', 'CharacterMiniStuffToy2.jpg', 'Character Minnie Stuff Toy', 'Light weighted, attractive, colorful, vibrant, soft and easy to carry. Creates a special memory with your loved ones, Super cute Minnie Stuff Toy, kids spend a wonderful time with it. Plush soft material makes feel you good and love it too much better.', 32, '', 4000, '', '', 'The Stationers', 'ST89915', 'In Stock', 'Child'),
(120, 'RivajFashionFitNailColor1.jpg', 'RivajFashionFitNailColor2.jpg', 'RivajFashionFitNailColor3.jpg', 'RivajFashionFitNailColor4.jpg', 'Rivaj Fashion Nail Color', 'Fashion Fit Nail Color can give your nails a pop of color. Unique technology makes the color flexible and resilient to avoid chipping. It smoothes ridges and small imperfections on the nail surface, to create a beyond-perfect finish. Shade Lock Technology keeps your color more bright for longer wear that won\'t fade.. It smoothes ridges and small imperfections on the nail surface, to create a beyond-perfect finish. Shade Lock Technology keeps your color more bright for longer wear that won\'t fade.', 19, '', 250, '', '', 'The Stationers', 'NP12561', 'In Stock', 'Female'),
(121, 'SoftBeanCarToy1.jpg', 'SoftBeanCarToy2.jpg', 'SoftBeanCarToy1.jpg', 'SoftBeanCarToy2.jpg', 'Soft Bean Car Toy', ' Premium Quality. Friendly to baby’s skin.  Age: 3+ years. Size: L: 14 inch W: 9 inch.', 32, '', 1400, '', '', 'The Stationers', 'ST89918', 'In Stock', 'Female'),
(122, 'DiamondBreezeShimmeringNailColor1.jpg', 'DiamondBreezeShimmeringNailColor3.jpg', 'DiamondBreezeShimmeringNailColor2.jpg', 'DiamondBreezeShimmeringNailColor4.jpg', 'Diamond Breeze Shimmering Nail Color', 'This is a unique and special nail color. Dazzling like a diamond and bright like a star. Creates attractive and glamorous nails.', 19, '', 300, '', '', 'The Stationers', 'NP12562', 'In Stock', 'Female'),
(123, 'SoftBeanFishToy1.jpg', 'SoftBeanFishToy2.jpg', 'SoftBeanFishToy3.jpg', 'SoftBeanFishToy1.jpg', 'Soft Bean Fish Toy', 'Non-Toxic and soft fabric good quality and washable. Light weighted, attractive, colorful, vibrant, soft and easy to carry. The sweetest stuffed toy for your kids to hug & keep forever. Huggable and loveable for someone special with extra soft. Best Gift For Kid.', 32, 'Rs:3600', 3500, '20%', '', 'The Stationers', 'ST89918', 'In Stock', 'Child'),
(124, 'MetaMetallicNailColor1.jpg', 'MetaMetallicNailColor2.jpg', 'MetaMetallicNailColor3.jpg', 'MetaMetallicNailColor4.jpg', 'Meta Metallic Nail Color', 'Metallic Nail Color line contains highly metallic fine pigments and pearls that gives long wearing shine metallic finish colors. Nail Color Line has trendy metallic shades with intense color coverage.', 19, '300', 250, '10%', '', 'The Stationers', 'NP12563', 'In Stock', 'Female'),
(125, 'BabyDollForKids1.jpg', 'BabyDollForKids2.jpg', 'BabyDollForKids1.jpg', 'BabyDollForKids2.jpg', 'Baby Doll For Kids', 'Baby doll is of lightweight The baby doll looks cute and adorable and is dressed in a pretty dress. It is also a fantastic birthday gift option for your loved ones. The clothes are removable and can be washed. The limbs of the doll are made of plastic.', 31, '', 1900, '', 'New', 'The Stationers', 'DS45672', 'In Stock', 'Child'),
(126, 'PrincessDancingDoll1.jpg', 'PrincessDancingDoll2.jpg', 'PrincessDancingDoll3.jpg', 'PrincessDancingDoll4.jpg', 'Princess Dancing Doll', 'This Dancing Doll with Music and Lights has a 3D lighting system that produces a glowing, luminous display. It features a beautifully crafted Blossoming Frock with an intricate, vivid design. Furthermore, when the lights dim, the Doll automatically rotates and resumes its dancing, creating a mesmerizing spectacle.', 31, '', 2000, '', '', 'The Stationers', 'DS45673', 'In Stock', 'Child'),
(127, 'LovelyRealisticBabyDoll1.jpg', 'LovelyRealisticBabyDoll2.jpg', 'LovelyRealisticBabyDoll3.jpg', 'LovelyRealisticBabyDoll4.jpg', 'Lovely Realistic Baby Doll', 'The newest idea for a toy. Role play with BABY born boosts the imagination and has been proven to support the development of social skills, and values such as responsibility, communication, and empathy. Enhance intellectual development and creativity.  Made of non-toxic material, safe enough for kids. Material: Vinyl Box Size: H\" 16inch W\" 10.5inch.', 31, 'Rs:6500', 6000, '20%', '', 'The Stationers', 'DS45674', 'In Stock', 'Child'),
(128, 'ColorExpertNaillacquer1.jpg', 'ColorExpertNaillacquer2.jpg', 'ColorExpertNaillacquer3.jpg', 'ColorExpertNaillacquer4.jpg', 'Color Expert Nail Lacquer', 'Color Expert Nail Lacquer, ensures an easy application thanks to its extra wide brush and good covarage with shiny and long lasting texture.', 19, '', 300, '', 'New', 'The Stationers', 'NP12564', 'In Stock', 'Female'),
(129, 'VintageBroochHandbag1.jpg', 'VintageBroochHandbag2.jpg', 'VintageBroochHandbag3.jpg', 'VintageBroochHandbag4.jpg', 'Vintage Brooch Handbag', 'Metallic vintage style brooch. Suede texture on the front and back. Magnetic fastener. Single compartment. Adjustable shoulder strap. Color: Dark Beige.', 22, '', 3000, '', '', 'The Stationers', 'HB45671', 'In Stock', 'Female'),
(130, 'NudeLookPerfectNailColor1.jpg', 'NudeLookPerfectNailColor2.jpg', 'NudeLookPerfectNailColor3.jpg', 'NudeLookPerfectNailColor4.jpg', 'Nude Look Perfect Nail Color', 'Perfect Nail Color line with different nude color options and long lasting formula deliver your nails both natural shine and glamour appearance.', 19, '', 400, '', 'New', 'The Stationers', 'NP12565', 'In Stock', 'Female'),
(131, 'LoveltPetDollToy1.jpg', 'LoveltPetDollToy2.jpg', 'LoveltPetDollToy3.jpg', 'LoveltPetDollToy1.jpg', 'Lovely Pet Doll Toy', 'Introducing the pet lovely doll Toy, the ultimate playtime companion for little one adventurers! With the shape of a cat, the doll comes to high resistance and interesting costing, creating an immersive and engaging play experience.', 31, '', 3000, '', '', 'The Stationers', 'DS45675', 'In Stock', 'Child'),
(132, 'WowGliterNailColor1.jpg', 'WowGliterNailColor2.jpg', 'WowGliterNailColor3.jpg', 'WowGliterNailColor4.jpg', 'Wow Gliter Nail Color    ', 'Nail Lacquer in small 6 ml bottle with shiny, long lasting formula and many color alternatives.', 19, '', 450, '', 'New', 'The Stationers', 'NP12566', 'In Stock', 'Female'),
(133, 'ClassicCrossBodyHandbag1.jpg', 'ClassicCrossBodyHandbag2.jpg', 'ClassicCrossBodyHandbag3.jpg', 'ClassicCrossBodyHandbag4.jpg', 'Classic Cross Body Handbag', 'Cross body handbag. Criss cross pattern on the flap. Majestic brooch metallic embellishment n the flap. Magnetic fastener. Single compartment with one mini zipped pocket.', 22, '', 4000, '', 'New', 'The Stationers', 'HB45672', 'In Stock', 'Female'),
(134, 'TwoToneHandbag1.jpg', 'TwoToneHandbag2.jpg', 'TwoToneHandbag3.jpg', 'TwoToneHandbag1.jpg', 'Two-Tone Handbag', 'Two-tone envelope shape handbag. Press lock on the handbag. One compartment. Single mini zipped pocket (inside). Adjstable metallich shoulder chain.', 22, '', 3500, '', '', 'The Stationers', 'HB45673', 'In Stock', 'Female'),
(135, 'ClassicCrossBodyHandbag1.jpg', 'ClassicCrossBodyHandbag2.jpg', 'ClassicCrossBodyHandbag3.jpg', 'ClassicCrossBodyHandbag4.jpg', 'Classic Cross Body Handbag', 'Cross body handbag. Criss cross pattern on the flap. Majestic brooch metallic embellishment n the flap. Magnetic fastener. Single compartment with one mini zipped pocket.', 22, '', 4000, '', 'New', 'The Stationers', 'HB45672', 'In Stock', 'Female'),
(136, 'PrescottWallet1.jpg', 'PrescottWallet2.jpg', 'PrescottWallet1.jpg', 'PrescottWallet2.jpg', 'Prescott Wallet', 'The super spacious cousin to Kurt, JULKÉ\'s Prescott is a long wallet that appeals to the Spartan taste with it plain leather finish and unlined design. Inside, it houses a large number of pockets and card slots to store your keys, cash, and cards. The raw leather finish on the inner side keeps it soft and light, with a hint at its rugged appeal. ', 23, '', 2000, '', '', 'The Stationers', 'MW15671', 'In Stock', 'Male'),
(137, 'JudasWallet1.jpg', 'JudasWallet2.jpg', 'JudasWallet3.jpg', 'JudasWallet4.jpg', 'Judas Wallet', 'Breaking from traditional blacks and browns, this new leather wallet by JULKÉ highlights and celebrates individuality with it\'s two-toned charcoal and vapor grey bases and unique construction. Designed to be spacious with multiple card pockets inside and out, along with 2 billing compartments.', 23, '', 2500, '', '', 'The Stationers', 'MW45672', 'In Stock', 'Male'),
(138, 'MapPrintedPatternHandbag1.jpg', 'MapPrintedPatternHandbag2.jpg', 'MapPrintedPatternHandbag3.jpg', 'MapPrintedPatternHandbag1.jpg', 'Map Printed Pattern Handbag', 'Continental printed map on the handbag. Press lock on the handbag. Single compartment. Mini inner zipped pocket. Metallic chain with rexine shoulder strap.', 22, '', 3900, '', '', 'The Stationers', 'HB45674', 'In Stock', 'Female'),
(139, 'RevWallet1.jpg', 'RevWallet2.jpg', 'RevWallet3.jpg', 'RevWallet4.jpg', 'Rev Wallet', 'Breathing new life into the conventional wallet, JULKÉ\'s Rev is a tri-layered bifold wallet for savvy men who prefer their wallets on the slimmer side. Hand cut into a smooth, rounded shape and edged in black, with contrast stitches, it is designed with just enough room to carry your essential cards and some cash. \n\n', 23, '', 3000, '', '', 'The Stationers', 'MW45673', 'In Stock', 'Male'),
(140, 'PigeonMomPackHandSanitizer1.jpg', 'PigeonMomPackHandSanitizer2.jpg', 'PigeonMomPackHandSanitizer3.jpg', 'PigeonMomPackHandSanitizer1.jpg', 'Pigeon Mom-Pack Hand Sanitizer', '', 29, '', 800, '', '', 'The Stationers', 'HS54322', 'In Stock', 'All'),
(141, 'AlishaSanitizerSpray1.jpg', 'AlishaSanitizerSpray2.jpg', 'AlishaSanitizerSpray1.jpg', 'AlishaSanitizerSpray2.jpg', 'Alisha Kills Germs & Bacteria Hand Sanitizer Spray', '', 29, '', 900, '', '', 'The Stationers', 'HS54323', 'In Stock', 'All'),
(142, 'PeppyPenguinKidsHandSanitizer1.jpg', 'PeppyPenguinKidsHandSanitizer2.jpg', 'PeppyPenguinKidsHandSanitizer1.jpg', 'PeppyPenguinKidsHandSanitizer2.jpg', 'Wasim Badami Poppy The Peppy Penguin Kids Hand Sanitizer', '', 29, '', 1200, '', 'New', 'The Stationers', 'HS54324', 'In Stock', 'Child'),
(143, 'LionKidsHandSanitizer1.jpg', 'LionKidsHandSanitizer2.jpg', 'LionKidsHandSanitizer1.jpg', 'LionKidsHandSanitizer2.jpg', 'Wasim Badami Leo The Happy Lion Kids Hand Sanitizer', '', 29, '', 1200, '', '', 'The Stationers', 'HS54325', 'In Stock', 'Child'),
(144, 'VelvetVanillaWomenPerfume1.jpg', 'VelvetVanillaWomenPerfume2.jpg', 'VelvetVanillaWomenPerfume3.jpg', 'VelvetVanillaWomenPerfume1.jpg', 'Velvet Vanilla Women Perfume', '', 24, 'Rs:4000', 3000, '20%', '', 'The Stationer', 'PF23679', 'In Stock', 'Female'),
(145, 'NewYorkMenPerfume1.jpg', 'NewYorkMenPerfume2.jpg', 'NewYorkMenPerfume3.jpg', 'NewYorkMenPerfume1.jpg', 'New York Pour Homme', 'New York Pour Homme - A fiery blend of woody and spicy notes that ignites the thrill-seeker in every man. A scent that mesmerizes your senses and gives them a sense of adventure that starts with the invigorating boost of opening notes in a blend of bergamot, Lavender & red berries. It continues with a heart of Pimento leaves & marine and the dry down finally settles in with Vetiver, cashmere & amber leaving a trail of a totally unique experience.', 24, '', 2500, '', '', 'The Stationers', 'PF23680', 'In Stock', 'Male'),
(146, 'RadianceWomenPerfume1.jpg', 'RadianceWomenPerfume2.jpg', 'RadianceWomenPerfume3.jpg', 'RadianceWomenPerfume1.jpg', 'Radiance', '', 24, '', 3000, '', '', 'The Stationers', 'PF23681', 'In Stock', 'Female'),
(147, 'CrystalWomenPerfume1.jpg', 'CrystalWomenPerfume2.jpg', 'CrystalWomenPerfume3.jpg', 'CrystalWomenPerfume1.jpg', 'Crystal Women Perfume', '', 24, '', 3000, '', '', 'The Stationers', 'PF23682', 'In Stock', 'Female'),
(148, 'BELLAPourFemmeWomenPerfume1.jpg', 'BELLAPourFemmeWomenPerfume2.jpg', 'BELLAPourFemmeWomenPerfume3.jpg', 'BELLAPourFemmeWomenPerfume4.jpg', 'Bella Pour Femme For Women', 'This fragrance is the true depiction of a beautiful, blossoming rose with delicious & elegant shades of blackberry. Alongside, the aroma of Voluptuous violet envelops it with a powdery aura. The heart is dominated by magnificent & robust Taif rose, surrounded by the charming flowers of Jasmine & mimosa. This sparkling bouquet is further supported by the warmth & strength of patchouli, sandalwood & guaiac wood at the base.', 24, 'RS:4500', 4000, '15%', '', 'The Stationers', 'PF23683', 'In Stock', 'Female'),
(149, 'MoscowPourHommeMenPerfume1.jpg', 'MoscowPourHommeMenPerfume2.jpg', 'MoscowPourHommeMenPerfume3.jpg', 'MoscowPourHommeMenPerfume1.jpg', 'Moscow Pour Homme For Men', 'This fragrance opens with a burst of fresh fruity notes of pink pepper, mandarin & orange. It is then strengthened by the vigor of fresh spices adding an edgy and unexpected contrast. A strong woody and sweet aroma of cedarwood and Kashmir create an intensely addictive aroma at the base. A modern scent with soft aromatic freshness.', 24, '', 3500, '', '', 'The Stationers', 'PF23684', 'In Stock', 'Male'),
(150, 'AuraPerfumePerfume1.jpg', 'AuraPerfumePerfume2.jpg', 'AuraPerfumePerfume3.jpg', 'AuraPerfumePerfume1.jpg', 'Aura Perfume For Women', ' Long-lasting , Gentle fragrance ,For women', 24, '', 2900, '', '', 'The Stationers', 'PF23685', 'Out of Stock', 'Female'),
(151, 'GreatSummitMen1.jpg', 'GreatSummitMen2.jpg', 'GreatSummitMen3.jpg', 'GreatSummitMen1.jpg', 'Great Summit For Men', 'Great Summit Pour Homme, a fragrance that integrity the spirit of visionary wisdom, confidence, and unrelenting determination by divine fusion of citrusy notes with a captivating blend of aromatic notes remarks the ultimate achievement. Intertwined with the richness of woody amber ascend to new heights and leaves an unforgettable impression.', 24, '', 3500, '', '', '', 'PF23686', 'In Stock', 'Male'),
(152, 'Blauersunglasses1.jpg', 'Blauersunglasses2.jpg', 'Blauersunglasses3.jpg', 'Blauersunglasses1.jpg', 'Blauer Sunglasses For Men', ' Dimensions:46 × 22 × 145 mm', 25, '', 1000, '', '', '', 'SG12561', 'In Stock', 'Male'),
(153, 'DitaLxnEvoSunglasses1.jpg', 'DitaLxnEvoSunglasses2.jpg', 'DitaLxnEvoSunglasses3.jpg', 'DitaLxnEvoSunglasses4.jpg', 'Dita Lxn Evo For Men', ' Dimensions:54 × 19 × 145 mm', 25, '', 1200, '', '', 'The Stationers', 'SG12562', 'In Stock', 'Male'),
(154, 'MoscotSunSunglasses1.jpg', 'MoscotSunSunglasses2.jpg', 'MoscotSunSunglasses3.jpg', 'MoscotSunSunglasses1.jpg', 'Moscot Sun For Men', ' Dimensions:46 × 24 × 145 mm', 25, '', 1100, '', 'New', 'The Stationers', 'SG12563', 'In Stock', 'Male'),
(155, 'BLAUERSunglassesfoewomen1.jpg', 'BLAUERSunglassesforwomen2.jpg', 'BLAUERSunglassesforwomen3.jpg', 'BLAUERSunglassesfoewomen1.jpg', 'BLAUER For Women', ' Dimensions:50 × 20 × 145 mm', 25, '', 1000, '', '', 'The Stationers', 'SG12564', 'In Stock', 'Female'),
(156, 'DitaEnduranceSunglasses1.jpg', 'DitaEnduranceSunglasses2.jpg', 'DitaEnduranceSunglasses3.jpg', 'DitaEnduranceSunglasses4.jpg', 'Dita Endurance For Women', ' Dimensions:60 × 17 × 130 mm', 25, 'Rs:1600', 1400, '15% ', '', '', 'SG12565', 'In Stock', 'Female'),
(157, 'EidGiftBag1.jpg', 'EidGiftBag1.jpg', '', '', 'Eid Gift Bag', 'Whether you’re looking for Ramadan gift bags or Eid gift bags, We are here to help you with everything you need for your gifting needs. Present your gifts in style with our exclusive range of paper gift bags. Ramadan and Eid printables by Inkfactory. These plain goodie bag inserts with your own colored or textured paper and uses decorative scissors to make the edges elegant and pretty, too. Download the Ramadan goodie bag Insert Card here. The only difference is that it says “Happy Eid!” on these ones. Start by printing it, and then cut out the bag by cutting just at the inside of the grey line the grey line is not supposed to be a part of the bag, it’s just there for indicating where to cut. A pretty floral-themed Ramadan and Eid decorations printable pack to help you get ready for Ramadan and Eid. Yes, you can use it for Eid ul Adha too! I love printable decorations for Ramadan, Hajj, and Eid. It makes life so simple.', 27, '', 300, '', '', 'The Stationers', 'GB23462', 'In Stock', 'All'),
(158, 'EidGiftBag2.jpg', 'EidGiftBag2.jpg', '', '', 'Eid Gift Bag', 'Whether you’re looking for Ramadan gift bags or Eid gift bags,We are here to help you with everything you need for your gifting needs. Present your gifts in style with our exclusive range of paper gift bags. Ramadan and Eid printables by Inkfactory. These plain goodie bag inserts with your own colored or textured paper and uses decorative scissors to make the edges elegant and pretty, too. Download the Ramadan goodie bag Insert Card here. The only difference is that it says “Happy Eid!” on these ones. Start by printing it, and then cut out the bag by cutting just at the inside of the grey line the grey line is not supposed to be a part of the bag, it’s just there for indicating where to cut. A pretty floral-themed Ramadan and Eid decorations printable pack to help you get ready for Ramadan and Eid. Yes, you can use it for Eid ul Adha too! I love printable decorations for Ramadan, Hajj, and Eid. It makes life so simple.', 27, '', 250, '', '', 'The Stationers', 'GB23463', 'In Stock', 'All'),
(159, 'SmallGiftBag1.jpg', 'SmallGiftBag1.jpg', '', '', 'Small Gift Bag', 'Whether you’re looking for birthday gift bags or wedding gift bags, We arehere to help you with everything you need for your gifting needs. Present your gifts in style with our exclusive range of paper gift bags. Gift bags are also a great option for businesses to present media kits at a launch, use for giveaways, provide gifts to employees and clients, or use at events. We have a large range of colors, patterns gift bags, and textures gif bags, making us your one-stop-shop for gift packaging and accessories. We also offer some non-standard gift bags, such as a black and white bag, a black textured gift bag, and a white textured gift bag, Order yours today!', 27, '', 250, '', 'New', 'The Stationers', 'GB23464', 'In Stock', 'All'),
(160, 'GiftBagSmall.jpg', 'GiftBagSmall.jpg', '', '', 'Gift Bag Small', 'Whether you’re looking for birthday gift bags or wedding gift bags, We arehere to help you with everything you need for your gifting needs. Present your gifts in style with our exclusive range of paper gift bags. Gift bags are also a great option for businesses to present media kits at a launch, use for giveaways, provide gifts to employees and clients, or use at events. We have a large range of colors, patterns gift bags, and textures gif bags, making us your one-stop-shop for gift packaging and accessories. We also offer some non-standard gift bags, such as a black and white bag, a black textured gift bag, and a white textured gift bag, Order yours today!', 27, '', 280, '', '', 'The Stationers', 'GB23465', 'In Stock', 'All'),
(161, 'Valentine’sDayGiftBag1.jpg', 'Valentine’sDayGiftBag1.jpg', '', '', 'Valentine\'s Day Gift Bag', 'If you’re looking for Valentine’s Day gift bags or wedding gift bags, We are here to help you with everything you need for your gifting needs. Present your gifts in style with our exclusive range of paper gift bags.\n\n', 27, '', 300, '', '', 'The Stationers', 'GB23466', 'In Stock', 'All'),
(162, 'GoodLuckGreetingCard1.jpg', 'GoodLuckGreetingCard1.jpg', '', '', 'Good Luck Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 50, '', '', 'The Stationers', 'GC35664', 'In Stock', 'All'),
(163, 'BestWishesGreetingCard.jpg', 'BestWishesGreetingCard.jpg', '', '', 'Best Wishes Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 50, '', 'New', 'The Stationers', 'GC35665', 'In Stock', 'All'),
(164, 'BestWishesGreetingCard1.jpg', 'BestWishesGreetingCard1.jpg', '', '', 'Best Wishes Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 50, '', '', 'The Stationers', 'GC35666', 'In Stock', 'All'),
(165, 'ThankYouGreetingCard.jpg', 'ThankYouGreetingCard.jpg', '', '', 'Thank You Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 40, '', '', 'The Stationers', 'GC35667', 'In Stock', 'All'),
(166, 'GoodLuckGreetingCard2.jpg', 'GoodLuckGreetingCard2.jpg', '', '', 'Good Luck Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 40, '', '', 'The Stationers', 'GC35668', 'In Stock', 'All'),
(167, 'JustForYouCard.jpg', 'JustForYouCard.jpg', '', '', 'Just For You Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 50, '', '', 'The Stationers', 'GC35668', 'In Stock', 'All'),
(168, 'JustForYouCard1.jpg', 'JustForYouCard1.jpg', '', '', 'Just For You Greeting Card', 'Size : 6.5 cm x 9.4 cm', 28, '', 50, '', '', 'The Stationers', 'GC35669', 'In Stock', 'All');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(11) NOT NULL,
  `First name` varchar(50) NOT NULL,
  `Last name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_number` varchar(50) NOT NULL,
  `Post_Code` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `First name`, `Last name`, `Email`, `password`, `Address`, `Phone_number`, `Post_Code`, `Country`) VALUES
(1, 'maliha', 'Shahid', 'malihashahid580@gmail.com', '$2y$10$4ZzSqusxoNLhUadg17fUduHoRv.mmW/Is6ZGgMvJ4qWgqXhpWt7jy', '3', '3222789537', '75800', 'Pakistan'),
(2, 'Ahmed', 'Shahid', 'ahmedshahid14aug@gmail.com', '$2y$10$HkIFyGKimvf5SawP2AkdkeC6OaEJO40aosARDld5Mn0SmOsQwZoKC', 'orangi town karachi ', '03222789537', '75800', 'Pakistan'),
(3, 'Ahmed', 'Shahid', 'ahmedshahid14@gmail.com', '$2y$10$dmcb4nhBwmekvERXDO2xQuWnFhIVRX7Q7lMcgsm18LR6.nDR4YmQC', '3', '03222789537', '75800', 'Pakistan'),
(4, 'Ahmed', 'Shahid', 'ahmedshahid14@gmail.com', '$2y$10$bjL.P49BoKMuVazGcQ8Eou46eV.7PhLgKpSnqvob2ldaMV/dPrfIW', '3', '03222789537', '75800', 'Pakistan'),
(5, 'Ahmed', 'Shahid', 'ahmedshahid14@gmail.com', '$2y$10$3FD.ufoqRoFKGwT4h1VYjelm60g9huZu2nJF97K/aC4GXK.952TT6', '3', '03222789537', '75800', 'Pakistan'),
(6, 'kashan', 'ali', 'kashanali14@gmail.com', '$2y$10$dgvx2wqNBvC5ssTAjkUmSePS1EY1em.zGBe.U1AdMmJ5ZTrrFU6eS', '3', '03222789537', '75800', 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `s_id` int(11) NOT NULL,
  `image` varchar(399) NOT NULL,
  `image_tittle` varchar(366) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`s_id`, `image`, `image_tittle`) VALUES
(1, ' Slider3.jpg', 'Stationary'),
(2, ' Slider3.jpg', 'Stationary'),
(3, ' Slider2.jpg', 'Stationary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `ParentCategory` (`ParentCategory`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer's_feedbak`
--
ALTER TABLE `customer's_feedbak`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login_id`);

--
-- Indexes for table `parent_category`
--
ALTER TABLE `parent_category`
  ADD PRIMARY KEY (`Parent_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `Categoryname` (`Categoryname`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `customer's_feedbak`
--
ALTER TABLE `customer's_feedbak`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parent_category`
--
ALTER TABLE `parent_category`
  MODIFY `Parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`ParentCategory`) REFERENCES `parent_category` (`Parent_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Pro_card` FOREIGN KEY (`Categoryname`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
