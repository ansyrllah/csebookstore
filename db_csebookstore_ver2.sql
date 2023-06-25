-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 07:21 PM
-- Server version: 8.0.33
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_csebookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', '12345'),
('admin2', '09876'),
('kasir', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `book_price` float(10,2) NOT NULL,
  `publisherid` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', 90000.00, 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', 70000.00, 2),
('978-1-1111116-59-4', 'Laut Bercerita', 'Leila S. Chidore', 'Steve Jobs.jpg', 'Cerita tentang aktivis', 75000.00, 8),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', 85000.00, 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', 100000.00, 1),
('978-1-44937-019-0', 'Learning Web App Development', 'New Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', 120000.00, 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', 50000.00, 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 65000.00, 1),
('978-1-484216-40-8', '[NEW] Android Studio New Media Fundamentals', 'Wallace Jackson 00', 'android_studio.jpg', '[NEW] Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', 100000.00, 4),
('978-1-484216-59-4', 'Python For Data Scientist', '[new] Anggela Margethan', '6bbdac76-68d2-4e9f-b14f-9413fc785d18.JPG', '[new] Python For Data Scientist', 90000.00, 8),
('978145161111', 'The Shallows: What the Internet Is Doing to Our Brains', '[NEW] Nicholas Carr', 'what-the-internet-is-doing-to-our-brains.jpg', '[NEW] Buku ini awalnya esai panjang di majalah Atlantic Monthly edisi Juli 2008 berjudul “Is Google Making Us Stupid?”. Penulisnya, Nicholas Carr lalu mengembangkan argumennya ke dalam buku The Shallows: What the Internet Is Doing to Our Brains yang pertama terbit tahun 2010.\r\n\r\nPremisnya, keberlimpahan informasi di internet tak membuat kita kian pintar. Justru sebaliknya. Kebiasaan membaca artikel atau berita serba pendek membuat kemampuan kita tekun membaca buku hingga tuntas berangsur hilang.', 95000.00, 8);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int UNSIGNED NOT NULL,
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `pass`, `address`, `city`, `zip_code`, `country`) VALUES
(4, 'c', 'c', 'c', 'c', 'c', 'c'),
(6, 'customers', '12345', '', '', '', ''),
(7, 'admin2', '09876', 'Komplek Vijaya', 'Bandung', '250503', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int UNSIGNED NOT NULL,
  `customerid` int UNSIGNED NOT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `payment_status`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(15, 7, 75000.00, 1, '2023-06-25 10:15:04', 'admin2', 'Komplek Vijaya', 'Bandung', '250503', 'Indonesia'),
(16, 7, 135000.00, 1, '2023-06-25 10:39:56', 'admin2', 'Komplek Vijaya', 'Bandung', '250503', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int UNSIGNED NOT NULL,
  `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `quantity` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-1-1180-2669-4', 100000.00, 2),
(5, '978-1-118-94924-5', 85000.00, 1),
(5, '978-0-7303-1484-4', 70000.00, 2),
(8, '978-0-7303-1484-4', 70000.00, 1),
(8, '978-0-7303-1484-4', 70000.00, 2),
(8, '978-1-4571-0402-2', 65000.00, 2),
(8, '978-0-7303-1484-4', 70000.00, 2),
(8, '978-1-4571-0402-2', 65000.00, 2),
(8, '978-1-118-94924-5', 85000.00, 1),
(8, '978-1-118-94924-5', 85000.00, 1),
(5, '978-1-1111116-59-4', 75000.00, 1),
(5, '978-1-4571-0402-2', 65000.00, 1),
(14, '978-0-7303-1484-4', 70000.00, 2),
(14, '978-1-484216-40-8', 100000.00, 1),
(5, '978-1-1111116-59-4', 75000.00, 1),
(15, '978-1-118-94924-5', 85000.00, 1),
(15, '978-1-44937-075-6', 50000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentid` int NOT NULL,
  `orderid` int NOT NULL,
  `payment_status` enum('Paid Off','Not Yet Paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int UNSIGNED NOT NULL,
  `publisher_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley'),
(8, 'Gramedia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
