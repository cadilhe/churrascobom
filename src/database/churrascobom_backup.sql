-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Dez-2017 às 15:10
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
-- Estrutura da tabela `bebida`
--

CREATE TABLE `bebida` (
  `idbebida` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebidautilizada`
--

CREATE TABLE `bebidautilizada` (
  `idBebidaUtilizada` int(11) NOT NULL,
  `precoItem` decimal(19,2) DEFAULT NULL,
  `quantidade` float DEFAULT NULL,
  `bebida_idbebida` int(11) DEFAULT NULL,
  `churrasco_idchurrasco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Acém', '9.78', 'kg'),
(2, 'Alcatra', '17.00', 'kg'),
(3, 'Chã De Dentro', '15.00', 'kg'),
(4, 'Chã De Fora', '13.00', 'kg'),
(5, 'Contra Filé', '17.00', 'kg'),
(6, 'Costela', '6.00', 'kg'),
(7, 'Cupim', '12.78', 'kg'),
(8, 'Dobradinha', '6.00', 'kg'),
(9, 'Fígado', '8.00', 'kg'),
(10, 'Filé Mignon', '28.00', 'kg'),
(11, 'Fraldinha', '12.00', 'kg'),
(12, 'Lagarto', '14.00', 'kg'),
(13, 'Maça De Peito', '9.00', 'kg'),
(14, 'Miolo De Acém', '9.00', 'kg'),
(15, 'Músculo', '9.00', 'kg'),
(16, 'Pá', '9.00', 'kg'),
(17, 'Patinho', '14.00', 'kg'),
(18, 'Picanha', '26.00', 'kg'),
(20, 'Costelinha', '10.00', 'kg'),
(21, 'Lombo', '9.00', 'kg'),
(22, 'Pernil C/Osso', '8.00', 'kg'),
(23, 'Pernil S/Osso', '8.00', 'kg'),
(24, 'Toucinho', '2.00', 'kg'),
(26, 'Asa', '7.00', 'kg'),
(27, 'Coxa', '5.00', 'kg'),
(28, 'Frango', '5.00', 'kg'),
(29, 'Peito', '7.00', 'kg'),
(30, 'Merluza', '11.00', 'kg'),
(31, 'Bacalhau', '29.00', 'kg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carneutilizada`
--

CREATE TABLE `carneutilizada` (
  `idCarneUtilizada` int(11) NOT NULL,
  `precoItem` decimal(19,2) DEFAULT NULL,
  `quantidade` float NOT NULL,
  `carne_idcarne` int(11) DEFAULT NULL,
  `churrasco_idchurrasco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `churrasco`
--

CREATE TABLE `churrasco` (
  `idchurrasco` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `churrasco`
--

INSERT INTO `churrasco` (`idchurrasco`, `data`, `hora`, `local`) VALUES
(1, '2017-12-17', '1970-01-01 19:00:00', 'Casa do Gaúcho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `churrasco_convidado`
--

CREATE TABLE `churrasco_convidado` (
  `churrascos_idchurrasco` int(11) NOT NULL,
  `convidados_idconvidado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `convidado`
--

CREATE TABLE `convidado` (
  `idconvidado` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `convidado`
--

INSERT INTO `convidado` (`idconvidado`, `nome`, `telefone`) VALUES
(1, 'Patrícia', '(11) 9989-9899'),
(2, 'Tatiana', '(19) 7896-7876'),
(3, 'Jackson', '(46) 8857-8248'),
(4, 'Kasimir', '(82) 2069-2877'),
(5, 'Aristotle', '(76) 4724-0866'),
(6, 'Sybil', '(54) 9083-6144'),
(7, 'Erica', '(00) 3417-6773'),
(8, 'Owen', '(43) 6191-8644'),
(9, 'Lawrence', '(08) 2538-1189'),
(10, 'Brennan', '(48) 2660-9864'),
(11, 'Peter', '(54) 9393-2007'),
(12, 'Mary', '(70) 9339-5795'),
(13, 'Petra', '(40) 2608-2239'),
(14, 'Burton', '(18) 3044-5299'),
(15, 'Sybill', '(94) 4695-3753'),
(16, 'Kibo', '(31) 7029-8554'),
(17, 'Ivan', '(81) 2972-1760'),
(18, 'Laura', '(25) 9256-0315'),
(19, 'Wing', '(13) 6393-2913'),
(20, 'Ira', '(65) 1348-0139'),
(21, 'Kameko', '(41) 9750-4412'),
(22, 'Aidan', '(65) 1523-8922'),
(23, 'Alexa', '(05) 6357-2445'),
(24, 'Francis', '(87) 8625-2019'),
(25, 'Xena', '(15) 4540-4038'),
(26, 'Quamar', '(70) 7233-8950'),
(27, 'Jael', '(70) 6252-3684'),
(28, 'Daniel', '(53) 7562-3125'),
(29, 'Aladdin', '(87) 3382-0511'),
(30, 'Lunea', '(47) 5868-7000'),
(31, 'Derek', '(19) 3161-1138'),
(32, 'Blaine', '(68) 4484-6331'),
(33, 'Lance', '(45) 4563-4004'),
(34, 'Demetrius', '(21) 9355-6499'),
(35, 'Lydia', '(42) 6575-2400'),
(36, 'Kenyon', '(49) 6726-1105'),
(37, 'Idona', '(34) 1059-4001'),
(38, 'Malik', '(19) 1747-9095'),
(39, 'Rhea', '(72) 5107-7690'),
(40, 'Carolyn', '(57) 8355-9290'),
(41, 'Nathaniel', '(00) 4791-7683'),
(42, 'Rama', '(33) 1126-8917'),
(43, 'Russell', '(56) 7870-6216'),
(44, 'Erica', '(47) 8506-6747'),
(45, 'Amir', '(27) 8260-7234'),
(46, 'Gareth', '(59) 5380-6939'),
(47, 'Ronan', '(89) 8237-0750'),
(48, 'Zahir', '(72) 8527-9276'),
(49, 'Karen', '(62) 2359-1948'),
(50, 'Owen', '(62) 4190-7709');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `login`, `nome`, `senha`) VALUES
(1, 'beto', 'Carlos Alberto', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`idbebida`);

--
-- Indexes for table `bebidautilizada`
--
ALTER TABLE `bebidautilizada`
  ADD PRIMARY KEY (`idBebidaUtilizada`),
  ADD KEY `FK_jnqhxdvgfj8irt2aglth8224e` (`bebida_idbebida`),
  ADD KEY `FK_h7o4m5qqv8edang05votumsy8` (`churrasco_idchurrasco`);

--
-- Indexes for table `carne`
--
ALTER TABLE `carne`
  ADD PRIMARY KEY (`idcarne`);

--
-- Indexes for table `carneutilizada`
--
ALTER TABLE `carneutilizada`
  ADD PRIMARY KEY (`idCarneUtilizada`),
  ADD KEY `FK_44bj5sqa941m87uklvbhq4w9t` (`carne_idcarne`),
  ADD KEY `FK_1m6c3jhucgma1rhtvkjc0i19i` (`churrasco_idchurrasco`);

--
-- Indexes for table `churrasco`
--
ALTER TABLE `churrasco`
  ADD PRIMARY KEY (`idchurrasco`);

--
-- Indexes for table `churrasco_convidado`
--
ALTER TABLE `churrasco_convidado`
  ADD KEY `FK_996aqeydhhcp6no1tqisup22l` (`convidados_idconvidado`),
  ADD KEY `FK_qcxi85e6voi8ia24x7vv1skck` (`churrascos_idchurrasco`);

--
-- Indexes for table `convidado`
--
ALTER TABLE `convidado`
  ADD PRIMARY KEY (`idconvidado`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebida`
--
ALTER TABLE `bebida`
  MODIFY `idbebida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bebidautilizada`
--
ALTER TABLE `bebidautilizada`
  MODIFY `idBebidaUtilizada` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carne`
--
ALTER TABLE `carne`
  MODIFY `idcarne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `carneutilizada`
--
ALTER TABLE `carneutilizada`
  MODIFY `idCarneUtilizada` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `churrasco`
--
ALTER TABLE `churrasco`
  MODIFY `idchurrasco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `convidado`
--
ALTER TABLE `convidado`
  MODIFY `idconvidado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bebidautilizada`
--
ALTER TABLE `bebidautilizada`
  ADD CONSTRAINT `FK_h7o4m5qqv8edang05votumsy8` FOREIGN KEY (`churrasco_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`),
  ADD CONSTRAINT `FK_jnqhxdvgfj8irt2aglth8224e` FOREIGN KEY (`bebida_idbebida`) REFERENCES `bebida` (`idbebida`);

--
-- Limitadores para a tabela `carneutilizada`
--
ALTER TABLE `carneutilizada`
  ADD CONSTRAINT `FK_1m6c3jhucgma1rhtvkjc0i19i` FOREIGN KEY (`churrasco_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`),
  ADD CONSTRAINT `FK_44bj5sqa941m87uklvbhq4w9t` FOREIGN KEY (`carne_idcarne`) REFERENCES `carne` (`idcarne`);

--
-- Limitadores para a tabela `churrasco_convidado`
--
ALTER TABLE `churrasco_convidado`
  ADD CONSTRAINT `FK_996aqeydhhcp6no1tqisup22l` FOREIGN KEY (`convidados_idconvidado`) REFERENCES `convidado` (`idconvidado`),
  ADD CONSTRAINT `FK_qcxi85e6voi8ia24x7vv1skck` FOREIGN KEY (`churrascos_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
