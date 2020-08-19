-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2020 at 09:34 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `Director_id` int(11) NOT NULL,
  `Director_Fname` varchar(20) NOT NULL,
  `Director_Lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`Director_id`, `Director_Fname`, `Director_Lname`) VALUES
(3001, 'John', 'Lasseter'),
(3002, 'Pete', 'Docter'),
(3003, 'Andrew', 'Stanton'),
(3004, 'Brad', 'Bird'),
(3005, 'James', 'Cameron'),
(3006, 'Brenda', 'Chapman'),
(3007, 'Kevin', 'Spacey');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_id` int(11) NOT NULL,
  `Genre_Class` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_id`, `Genre_Class`) VALUES
(2001, 'Action'),
(2002, 'Animated'),
(2003, 'Comedy'),
(2007, 'Historical'),
(2008, 'Science Fiction'),
(2009, 'Cartoon');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_id` int(11) NOT NULL,
  `Movie_name` varchar(30) NOT NULL,
  `Released_Year` int(11) NOT NULL,
  `Movie_Time` int(11) NOT NULL,
  `Planned_Budget` decimal(10,2) NOT NULL,
  `Genre_id` int(11) NOT NULL,
  `Director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_id`, `Movie_name`, `Released_Year`, `Movie_Time`, `Planned_Budget`, `Genre_id`, `Director_id`) VALUES
(1001, 'Finding Nemo', 2003, 120, '3.68', 2009, 3002),
(1002, 'The Incredibles', 2004, 116, '0.53', 2009, 3003),
(1003, 'Beyond the Sea', 2004, 118, '3.15', 2007, 3007),
(1004, 'Avatar', 2009, 116, '10.00', 2008, 3005),
(1005, 'Avatar 2', 2001, 124, '4.20', 2001, 3001),
(1006, 'Animal Farm', 2009, 121, '2.21', 2007, 3001),
(1007, 'The vacation', 2008, 116, '3.68', 2009, 3005),
(1008, 'Superman', 2001, 110, '3.68', 2002, 3004),
(1009, 'Spiderman', 2008, 119, '3.26', 2009, 3005),
(1010, 'Interstrellar', 2001, 122, '3.36', 2008, 3004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Director_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_id`),
  ADD KEY `Director_id` (`Director_id`),
  ADD KEY `Genre_id` (`Genre_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`Director_id`) REFERENCES `director` (`Director_id`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
