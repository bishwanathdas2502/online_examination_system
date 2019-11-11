-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 05:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `qno` int(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `correct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`qno`, `question`, `a`, `b`, `c`, `correct`) VALUES
(1, 'A collection of lines that connects several devices is called:', 'peripheral connection wires', 'bus', 'Both a and b', 'b'),
(2, 'PC Program Counter is also called', 'instruction pointer', 'memory pointer', 'file pointer', 'a'),
(3, '______ is used to choose between incrementing the PC or performing ALU operations', 'Conditional codes', 'Multiplexer', 'None of these', 'c'),
(4, 'The ultimate goal of a compiler is to:', 'Reduce the clock cycles for a programming task.', 'Reduce the size of the object code.', 'Be versatile.', 'a'),
(5, 'SPEC stands for:', 'Standard Performance Evaluation Code.', 'System Processing Enhancing Code.', 'System Performance Evaluation Corporation.', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `daa`
--

CREATE TABLE `daa` (
  `qno` int(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `correct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daa`
--

INSERT INTO `daa` (`qno`, `question`, `a`, `b`, `c`, `correct`) VALUES
(1, ' To represent hierarchical relationship ', 'Dequeue', 'Priority', 'Tree', 'c'),
(2, 'Which of the following data structure is linear type', 'Stack', 'Trees', 'Graph', 'a'),
(3, 'Which of the following data structure is non linear type?', 'Strings', 'Lists', 'Graph', 'c'),
(4, ' Identify the data structure which allows deletions at both ends of the list but insertion at only o', 'Output restricted qequeue', ' Input restricted dequeue', 'Stack', 'b'),
(5, ' Which data structure is used in breadth first search of a graph to hold nodes?', 'Stack', 'queue', 'Array', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `database_question`
--

CREATE TABLE `database_question` (
  `qno` int(50) NOT NULL,
  `question` varchar(100) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `correct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `database_question`
--

INSERT INTO `database_question` (`qno`, `question`, `a`, `b`, `c`, `correct`) VALUES
(1, 'Which of the following is an Open Source DBMS?', 'MySQL', 'Microsoft SQL Server', ' Microsoft Access', 'a'),
(2, 'When a primary key is define in the table, DBMS automatically creates a ____ on a primary key column', 'Unique index', 'Sequence', 'Trigger', 'a'),
(3, 'In the relational model, cardinality is termed as:', 'A number of tuples', 'A number of attributes.', 'A number of tables.', 'a'),
(4, 'Relational calculus is a', 'Non- Procedural language.', 'Procedural language.', 'High-level language.', 'b'),
(5, '\"AS\" clause is used in SQL for', 'Selection operation.', 'Rename operation.', 'Join operation.', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `qno` int(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `correct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`qno`, `question`, `a`, `b`, `c`, `correct`) VALUES
(1, 'A process that involves recognizing and focusing on the important characteristics of a situation or object is known as:', 'Encapsulation ', 'Abstraction ', 'Inheritance', 'b'),
(2, 'Which statement is true regarding an object?', ' An object is what classes instantiated are from', 'An object is an instance of a class', 'An object is a variable', 'b'),
(3, 'Object-oriented inheritance models the', '“is a kind of” relationship', '“has a” relationship', '“want to be” relationship', 'a'),
(4, 'The wrapping up of data and functions into a single unit is called', 'Encapsulation ', 'Abstraction', 'Polymorphism ', 'a'),
(5, 'Given a class named student, which of the following is a valid constructor declaration for the class?', 'Student (student s) { }', 'Student student ( ) { }', 'Private final student ( ) { }', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `qno` int(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `correct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`qno`, `question`, `a`, `b`, `c`, `correct`) VALUES
(1, 'In a two pass assembler the object code generation is done during the ?', 'Second pass', 'First pass', 'Zeroeth pass', 'a'),
(2, 'Which of the following is not a type of assembler ?', 'one pass', 'two pass', 'three pass', 'c'),
(3, 'In a two pass assembler, adding literals to literal table and address resolution of local symbols are done using ?', 'First pass and second respectively', 'Both second pass', 'Both first pass', 'c'),
(4, 'In a two pass assembler the pseudo code EQU is to be evaluated during ?', 'Pass 1', 'Pass 2', 'not evaluated by the assembler', 'a'),
(5, 'Translator for low level programming language were termed as', 'Assembler', 'Compiler', 'Linker', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `Test` varchar(40) NOT NULL,
  `Marks` varchar(40) NOT NULL,
  `Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`Test`, `Marks`, `Time`) VALUES
('sp', '3', '2019-11-10 16:16:06'),
(' database_question', '1', '2019-11-10 16:18:21'),
('database_question', '3', '2019-11-10 16:21:22'),
('database_question', '3', '2019-11-10 16:21:59'),
('coa', '1', '2019-11-10 16:35:59'),
('database_question', '2', '2019-11-10 16:43:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`qno`);

--
-- Indexes for table `daa`
--
ALTER TABLE `daa`
  ADD PRIMARY KEY (`qno`);

--
-- Indexes for table `database_question`
--
ALTER TABLE `database_question`
  ADD PRIMARY KEY (`qno`);

--
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD PRIMARY KEY (`qno`);

--
-- Indexes for table `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`qno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `qno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daa`
--
ALTER TABLE `daa`
  MODIFY `qno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `database_question`
--
ALTER TABLE `database_question`
  MODIFY `qno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `qno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sp`
--
ALTER TABLE `sp`
  MODIFY `qno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
