-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2015 at 05:50 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `libarary`
--
CREATE DATABASE IF NOT EXISTS `libarary` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `libarary`;

-- --------------------------------------------------------

--
-- Table structure for table `book_record`
--

CREATE TABLE IF NOT EXISTS `book_record` (
  `book_id` int(11) NOT NULL,
  `book_category` text NOT NULL,
  `book_name` text NOT NULL,
  `book_stock` int(11) NOT NULL,
  `book_issued` int(11) NOT NULL,
  `book_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_record`
--

INSERT INTO `book_record` (`book_id`, `book_category`, `book_name`, `book_stock`, `book_issued`, `book_image`) VALUES
(1, 'Humor', 'supportive', 100, 10, '1429453424137.png'),
(2, '2', 'shaktimaan', 123, 20, '1429382284046.png'),
(3, '3', 'kala amab', 90, 20, '1429382306571.png'),
(4, '2', 'nicky', 123, 20, '1429392439384.png'),
(5, 'Biography & Memoir', 'tulsi das', 100, 20, '1429421462211.jpg'),
(6, 'Biography & Memoir', 'tulsi das', 100, 20, '1429421502741.jpg'),
(1, 'Humor', 'supportive', 100, 10, '1429453424137.png');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `s_no` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `sexr` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `addrss` text NOT NULL,
  `uname` varchar(20) NOT NULL,
  `psswd` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `Mobno` varchar(20) NOT NULL,
  `reg_date` text NOT NULL,
  `debit_card_select` text NOT NULL,
  `dcard_number` text NOT NULL,
  `dname_on_card` text NOT NULL,
  `dcvv_number` text NOT NULL,
  `dexpiry_date_month` text NOT NULL,
  `dexpiry_date_year` text NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`s_no`, `fname`, `sexr`, `dob`, `addrss`, `uname`, `psswd`, `email`, `Mobno`, `reg_date`, `debit_card_select`, `dcard_number`, `dname_on_card`, `dcvv_number`, `dexpiry_date_month`, `dexpiry_date_year`, `status`) VALUES
(1, 'romeo', 'male', '03/08/1994', 'washigton,DC', 'remeo123', '123456', 'sahil_kullar@outlook.com', '1234567890', '', '', '', '', '', '', '', ''),
(2, 'asdasd', 'Male', '03/08/1994', 'Enter Your Address\r\nsdfd', 'df', '34', 'sahil_kullar@outlook.com', '12211347688', '', '', '', '', '', '', '', ''),
(3, 'sahil', 'Male', '03/08/1994', 'delhi', 'arora119', '123', 'sahil_kullar@outlook.com', '1236547890', '', '', '', '', '', '', '', ''),
(4, 'sahilkullar', 'Male', '03/08/1994', 'delhi', 'kam', '435', 'sahil_kullar@outlook.com', '741258963', 'Sun Apr 19 20:47:38 IST 2015', '', '', '', '', '', '', ''),
(5, 'ranjha', 'Male', '03/08/1994', 'asdffggh', 'qwasdcxz', '1qaz', 'sahil_kullar@outlook.com', '1236547890', 'Sun Apr 19 21:33:51 IST 2015', '', '', '', '', '', '', ''),
(6, 'werty', 'Male', '03/08/1994', 'fghjk', 'nbvc', 'ytr', 'sahil_kullar@outlook.com', '09875432', 'Sun Apr 19 21:44:25 IST 2015', 'debitcard_SMAE_1', '987654321', 'iuytrew', '765', '01', '2031', '0'),
(7, 'sid', 'Male', '03/08/1994', 'aszx', 'azxs', '1234', 'sahil_kullar@outlook.com', '1234567890', 'Sun Apr 19 23:07:49 IST 2015', 'debitcard_MAST_1', '1234567890', 'qwer', '123', '01', '2031', '0'),
(8, 'qwertyuio', 'Male', '03/08/1994', 'rtyuiop', 'qwertyui', '234567890-', 'sahil_kullar@outlook.com', '1234567890', 'Sun Apr 19 23:11:55 IST 2015', 'debitcard_SMAE_1', '123456789', 'qwertyui', '123', '03', '2027', '0'),
(9, 'kullarsahil', 'Male', '03/08/1994', 'azxd', 'desa', '1234567898', 'sahil_kullar@outlook.com', '1234567890', 'Mon Apr 20 20:33:27 IST 2015', 'debitcard_MAST_1', '1234567890234567765432123', 'qwertytre', '098', '01', '2031', '0'),
(10, 'aszx', 'Male', '03/08/1994', 'qwert', 'aomino', '657', 'sahil_kullar@outlook.com', '439876098', 'Tue Apr 21 01:43:34 IST 2015', 'debitcard_MAST_1', '987675', 'qwert', '987', '01', '2029', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
