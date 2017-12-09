-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Dez-2017 às 12:55
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churrascobom`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carne`
--

CREATE TABLE `carne` (
  `idcarne` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `unidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carne`
--

INSERT INTO `carne` (`idcarne`, `nome`, `preco`, `unidade`) VALUES
(1, 'Picanha', '29.00', 'kg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carne`
--
ALTER TABLE `carne`
  ADD PRIMARY KEY (`idcarne`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carne`
--
ALTER TABLE `carne`
  MODIFY `idcarne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
