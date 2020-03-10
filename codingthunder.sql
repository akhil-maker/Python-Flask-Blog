-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 07:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2020-02-28 15:11:04', 'firstpost@gmail.com'),
(2, 'Akhil', '6565656565', 'Hi This is Akhil', NULL, 'star@gmail.com'),
(3, 'Akhil', '6565656565', 'Hi This is Akhil', '2020-02-28 15:21:49', 'star@gmail.com'),
(5, 'dfdf', 'dsffdfs', 'sd mail send please', '2020-02-28 16:13:57', 'dfdf@df.dfd'),
(8, 'Apurv', '9387465839', 'jsahuk', '2020-03-06 09:22:28', 'sun@yahoomail.com'),
(9, 'kjnl', '9387465839', 'jsahuk', '2020-03-06 09:32:16', 'this@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s know who are called Programmers...', 'This is first post', 'first-post', 'Programmer - A computer programmer, sometimes called more recently a coder (especially in more informal contexts), is a person who creates computer software. The term computer programmer can refer to a specialist in one area of computers, or to a generalist who writes code for many kinds of software.\r\n\r\nA programmer\'s most oft-used computer language (e.g., Assembly, COBOL, C, C++, C#, JavaScript, Lisp, Python) may be prefixed to the term programmer. Some who work with web programming languages also prefix their titles with web.\r\n\r\nA range of occupations that involve programming also often require a range of other, similar skills, for example: (software) developer, web developer, mobile applications developer, embedded firmware developer, software engineer, computer scientist, game programmer, game developer and software analyst. The use of the term programmer as applied to these positions is sometimes considered an insulting simplification or even derogatory.', 'home-bg.jpg', '2020-03-04 23:10:17'),
(2, 'This is second post', 'Coolest post ever', 'second-post', 'BAD news for millions of home owners who wait patiently each day for their second post. It doesn\'t exist. It now seems that anyone who thought that letters dropping through the letterbox about 2pm formed part of the Royal Mail\'s second delivery service have been deluding themselves.\r\n\r\nWho says? The Royal Mail\'s new boss, 40-year-old former Avon lady, Gillian Wilmot. According to her, the second post is a \'myth\'. Those late-arriving letters are part of the Royal Mail\'s \'sweeper service\'.', 'about-bg.jpg', '2020-03-03 21:51:03'),
(3, 'Python', 'Let\'s get introduced with python', 'new-post', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.\r\n\r\nPython was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.\r\n\r\nThe Python 2 language, i.e. Python 2.7.x, was officially discontinued on 1 January 2020 (first planned for 2015) after which security patches and other improvements will not be released for it. With Python 2\'s end-of-life, only Python 3.5.x[32] and later are supported.', 'img.png', '2020-03-04 22:47:34'),
(4, 'C++', 'let us know c++', 'language', 'C++ (/?si??pl?s?pl?s/) is a high-level, general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\". The language has expanded significantly over time, and modern C++ has object-oriented, generic, and functional features in addition to facilities for low-level memory manipulation. It is almost always implemented as a compiled language, and many vendors provide C++ compilers, including the Free Software Foundation, LLVM, Microsoft, Intel, Oracle, and IBM, so it is available on many platforms.\r\n\r\nC++ was designed with a bias toward system programming and embedded, resource-constrained software and large systems, with performance, efficiency, and flexibility of use as its design highlights. C++ has also been found useful in many other contexts, with key strengths being software infrastructure and resource-constrained applications, including desktop applications, video games, servers (e.g. e-commerce, Web search, or SQL servers), and performance-critical applications (e.g. telephone switches or space probes).', 'new file', '2020-03-04 22:55:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
