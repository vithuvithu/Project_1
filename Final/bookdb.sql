-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2019 at 06:26 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `Book_ID` varchar(12) NOT NULL,
  `Book_name` varchar(45) DEFAULT NULL,
  `ISBN` varchar(25) DEFAULT NULL,
  `Author` varchar(45) DEFAULT NULL,
  `Book_type_id` varchar(12) DEFAULT NULL,
  `No_pages` int(11) NOT NULL,
  `Description` varchar(4000) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Book_ID`),
  KEY `Book_type_id` (`Book_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_name`, `ISBN`, `Author`, `Book_type_id`, `No_pages`, `Description`, `image_name`) VALUES
('VLB_001', 'Automation and Robotics', 'ISBN: 978-87-7681-696-4', 'Dr. Miltiadis A. Boboulos', 'BT_001', 120, 'In this book for the optimisation of assembly conveyor lines we are dealing with series part production featured by a medium complexity degree and a medium number of individual components and assembly technique alternatives. Modern production techniques for medium to large series products or mass production usually involve assembly conveyor lines. The aim is to have monotonous and similar in type operations or such causing fatigue, stress and production traumas, gradually replaced by automated assembly cycles, means and techniques. Assembly alternatives involving automation, and mechanisation, programmable and adaptive control have been in addition analyzed.', 'automation-and-robotics.jpg'),
('VLB_002', 'Structured Programming with C++', 'ISBN: 978-87-403-0099-4', 'Kjell Bäckman', 'BT_001', 143, 'Structured Programming with C++ is intended as course material for the course Structured Programming with C/C++ at university level. It can also be used as self-learning material.Each chapter contains theoretical parts and programming examples. At the end of each chapter there is a bunch of exercises for your practice. At the end of the book you will find solutions to the exercises.The purpose of the book is primarily to teach how to ”think programming” and secondarily to teach C++ code. Therefore, I will emphasize how to focus on the problem solution and prepare the coding', 'structured-programming-with-c-plus-plus.jpg'),
('VLB_003', 'Microsoft Office Excel 2007', 'ISBN: 978-87-7681-675-9', 'Torben Lage Frandsen', 'BT_001', 203, 'Nothing is difficult once you have learned it. That applies to Microsoft Office Excel 2007 as well, and once you have learned it, you will be able to do things you never dreamed of! In this Excel 2007 ebook you will learn how to use formulas, tables and charts. Furthermore, chapters in this ebook focus on how to do calculations, how to format and how to use Excel 2007 functions.', 'microsoft-office-excel.jpg'),
('VLB_004', 'An Introduction to Adobe Photoshop', 'ISBN: 978-87-403-0016-1', 'Steve Bark', 'BT_001', 189, 'This is the first in a series of books on Adobe Photoshop. Together, they will give the reader a good foundation in some of the major features of this ground breaking and industry changing program. They will cover general topics that will satisfy users from varying industries. However, there are also a number of industry specific “need to know” items, to help users to work effectively.Learning Photoshop can be a daunting experience. It’s a large and complicated program that may take several years to truly master. These books are designed to place your feet firmly on the path to understanding and will guide you to the knowledge that will enable you to progress into a fast and productive Photoshop user.', 'an-introduction-to-adobe-photoshop.jpg'),
('VLB_005', 'Object Oriented Programming using Java', 'ISBN: 978-87-7681-501-1', 'Simon Kendal', 'BT_001', 401, 'This book will explain the Object Oriented approach to programming and through the use of small exercises, for which feedback is provided, develop some practical skills as well. At the end of the book one larger case study will be used to illustrate the application of the techniques. This will culminate in the development of a complete Java program which can be downloaded with this book. Topics covered include : Abstraction, Inheritance, Polymorphism, Object Oriented Software Analysis and Design, The Unified Modelling Language (UML) , Agile Programming and Test Driven Development.', 'object-oriented-programming-using-java.jpg'),
('VLB_006', 'Engineering Mathematics: YouTube Workbook', 'ISBN: 978-87-403-0522-7', 'Christopher C. Tisdell', 'BT_002', 77, 'Free ebooks + free videos = better education is the equation that describes this book''s commitment to free and open education across the globe. Download the book and discover free video lessons on the Author''s YouTube channel."Engineering Mathematics: YouTube Workbook” takes learning to a new level by combining free written lessons with free online video tutorials. Each section within the workbook is linked to a video lesson on YouTube where the author discusses and solves problems step-by-step.The combination of written text with interactive video offers a high degree of learning flexibility by enabling the student to take control of the pace of their learning delivery. For example, key mathematical concepts can be reinforced or more deeply considered by rewinding or pausing the video. Due to these learning materials being freely available online, students can access them at a time and geographical location that suits their needs.Author, Dr Chris Tisdell, is a mathematician at UNSW, Sydney and a YouTube Partner in Education. He is passionate about free educational resources. Chris'' YouTube mathematics videos have enjoyed a truly global reach, being seen by learners in every country on earth.', 'engineering-mathematics-youtube-workbook.jpg'),
('VLB_007', 'Essential Engineering Mathematics', 'ISBN: 978-87-7681-735-0', 'Michael Batty', 'BT_002', 149, 'This textbook covers topics such as functions, single variable calculus, multivariate calculus, differential equations and complex functions. The necessary linear algebra for multivariate calculus is also outlined. More advanced topics which have been omitted, but which you will certainly come across, are partial differential equations, Fourier transforms and Laplace transforms.', 'essential-engineering-mathematics.jpg'),
('VLB_008', 'Strategic Financial Management', 'ISBN: 978-87-7681-425-0', 'Robert Alan Hill', 'BT_003', 114, 'In a world of geo-political, social and economic uncertainty, Strategic Financial Management is under pressure. This book reviews the subject within the context of current events. Each chapter contains activities (with solutions) to test understanding at your own pace. Comprehensive, yet concise, the material is also presented logically as a guide to further study. First, the investment decision, which maximises net present value and shareholder wealth. Next, the finance decision, which allocates least-cost combinations of capital resources. Finally, the wealth decision, which examines how internal investment and financial decisions should be externally monitored by the market.', 'strategic-financial-management.jpg'),
('VLB_009', 'Basics of Accounting & Information Processing', 'ISBN: 978-87-7681-583-7', 'Christopher J. Skousen , Larry M. Walther', 'BT_003', 51, 'ormally defined, accounting is a set of concepts and techniques that are used to measure and report financial information about an economic unit. While this may seem relatively straightforward, accounting is actually a very complex field that requires both technical proficiency and also a certain amount of artistry. This text introduces new practitioners to accounting fundamentals and helps prepare them for further studies in the field. It is available to download as a free e-book.In Part 1, the reader is shown the difference between financial and managerial accounting, and introduced to professional ethics and the fundamental accounting equation (Assets = Liabilities + Owners’ Equity). Using concrete examples based on everyday scenarios, the text then outlines how a corporation collects account receivable, makes purchases using loan proceeds, and distinguishes between revenue and income. Additional topics covered include financial statements, retained earnings, articulation, debit and credit rules, asset and expenses dividends, the accounting journal, and T-accounting. Diagrams and charts are used throughout the text to help explain important concepts.Readers interested in continuing their study should refer to author Larry M. Walther’s additional titles in the Accounting Cycle series, including Income Measurement and the Reporting Cycle, which is also available for free download on bookboon.com.', 'basics-of-accounting-information-processing.jpg'),
('VLB_010', 'Managerial and Cost Accounting', 'ISBN: 978-87-7681-491-5', 'Christopher J. Skousen , Larry M. Walther', 'BT_003', 130, 'This book is the sixth of seven books which introduces the basic principles of accounting. This book introduces managerial accounting, with a primary focus on internal business reporting, decision making, planning, strategy, budgets, and cost control. Cost-volume-profit analysis, variable cost, fixed costs, mixed costs are introduced. Break-even analysis, contributions margin, target income calculations, and sensitivity analysis are all discussed in detail. In addition, product costs, job costing, process costing, and activity-based costing are introduced.', 'managerial-and-cost-accounting.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE IF NOT EXISTS `booktype` (
  `Book_type_id` varchar(12) NOT NULL,
  `Book_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Book_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`Book_type_id`, `Book_type`) VALUES
('BT_001', 'IT & Programming '),
('BT_002', 'Statistics & Mathematics'),
('BT_003', 'Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('LIBI2014ICT01', 'abc123'),
('LIBI2014ICT02', '456123'),
('LIBI2014ICT03', 'zyx456'),
('LIBI2014ICT04', 'asdfgh');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Book_type_id`) REFERENCES `booktype` (`Book_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
