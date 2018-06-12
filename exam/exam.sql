-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 12:37 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans1` varchar(255) NOT NULL,
  `ans2` varchar(255) NOT NULL,
  `ans3` varchar(255) NOT NULL,
  `ans4` varchar(255) NOT NULL,
  `theanswer` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `ans1`, `ans2`, `ans3`, `ans4`, `theanswer`) VALUES
(1, 1, 'echo', 'fecko', 'secko', 'mecko', '0'),
(2, 2, 'for', 'nor', 'more', 'sore', '0'),
(3, 3, 'monder', 'fkjfhkjh', 'document.gete...', 'kjhkjhkjh', '3'),
(4, 4, 'ggggg', 'while', 'jjjjj', 'jjjjjjjkjkhkjg', '2'),
(5, 5, ';;', '""', '$$', '<>test</>', '4');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `subject`, `title`) VALUES
(1, 'how to use print in php?', 'php'),
(2, 'how to use for loop in php?', 'php'),
(3, 'how to use print i javascript?', 'javascript'),
(4, 'how to use loop in java script?', 'javascript'),
(5, 'how to use the tags in html?', 'html'),
(6, 'how to use loop in c++ ?', 'c++'),
(7, 'print in c++ ?', 'c++'),
(8, 'how to use print i javascript?', 'javascript'),
(9, 'how to use loop in java script?', 'javascript'),
(10, 'how to use the tags in html?', 'html'),
(11, 'how to use loop in c++ ?', 'c++'),
(12, 'print in c++ ?', 'c++'),
(13, 'how to use loop in c++ ?', 'c++'),
(14, 'how to use print in php?', 'php'),
(15, 'how to use print in php?', 'php'),
(16, 'how to use for loop in php?', 'php'),
(17, 'how to use print i javascript?', 'javascript'),
(18, 'how to use loop in java script?', 'javascript'),
(19, 'how to use the tags in html?', 'html'),
(20, 'how to use loop in c++ ?', 'c++'),
(21, 'print in c++ ?', 'c++'),
(22, 'how to use print i javascript?', 'javascript'),
(23, 'how to use loop in java script?', 'javascript'),
(24, 'how to use the tags in html?', 'html'),
(25, 'how to use loop in c++ ?', 'c++'),
(26, 'print in c++ ?', 'c++'),
(27, 'how to use loop in c++ ?', 'c++'),
(28, 'how to use print in php?', 'php'),
(29, 'how to use print in php?', 'php'),
(30, 'how to use for loop in php?', 'php'),
(31, 'how to use print i javascript?', 'javascript'),
(32, 'how to use loop in java script?', 'javascript'),
(33, 'how to use the tags in html?', 'html'),
(34, 'how to use loop in c++ ?', 'c++'),
(35, 'print in c++ ?', 'c++'),
(36, 'how to use print i javascript?', 'javascript'),
(37, 'how to use loop in java script?', 'javascript'),
(38, 'how to use the tags in html?', 'html'),
(39, 'how to use loop in c++ ?', 'c++'),
(40, 'print in c++ ?', 'c++'),
(41, 'how to use loop in c++ ?', 'c++'),
(42, 'how to use print in php?', 'php'),
(43, 'how to use print in php?', 'php'),
(44, 'how to use for loop in php?', 'php'),
(45, 'how to use print i javascript?', 'javascript'),
(46, 'how to use loop in java script?', 'javascript'),
(47, 'how to use the tags in html?', 'html'),
(48, 'how to use loop in c++ ?', 'c++'),
(49, 'print in c++ ?', 'c++'),
(50, 'how to use print i javascript?', 'javascript'),
(51, 'how to use loop in java script?', 'javascript'),
(52, 'how to use the tags in html?', 'html'),
(53, 'how to use loop in c++ ?', 'c++');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
