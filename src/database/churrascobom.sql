-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Dez-2017 às 04:34
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
  `nome` varchar(45) DEFAULT NULL,
  `descricao` tinytext,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bebida`
--

INSERT INTO `bebida` (`idbebida`, `nome`, `descricao`, `preco`) VALUES
(4, 'Cerveja', 'Brahma', '13.00'),
(6, 'whisky', '12 anos', '134.00'),
(7, 'Tequila', 'Don Cuervo Oro', '132.33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carne`
--

CREATE TABLE `carne` (
  `idcarne` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `unidade` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carne`
--

INSERT INTO `carne` (`idcarne`, `nome`, `unidade`, `preco`) VALUES
(1, 'Picanha', 0, '25.30'),
(2, 'Acem', 0, '17.99'),
(3, 'Costela de Porco', 0, '33.50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `churrasco`
--

CREATE TABLE `churrasco` (
  `idchurrasco` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `churrasco`
--

INSERT INTO `churrasco` (`idchurrasco`, `data`, `hora`, `local`) VALUES
(2, '2017-12-07', '1970-01-01 19:10:00', 'Casa do Gaúcho'),
(3, '2017-12-25', '1970-01-01 23:45:00', 'Ceia de Natal na quebrada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `churrasco_tem_convidado`
--

CREATE TABLE `churrasco_tem_convidado` (
  `churrasco_idchurrasco` int(11) NOT NULL,
  `convidado_idconvidado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `convidado`
--

CREATE TABLE `convidado` (
  `idconvidado` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `convidado`
--

INSERT INTO `convidado` (`idconvidado`, `nome`, `telefone`) VALUES
(1, 'Priscila Santos', '(12) 3896-3015');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_bebida`
--

CREATE TABLE `item_bebida` (
  `idbebida` int(11) NOT NULL,
  `churrasco_idchurrasco` int(11) NOT NULL,
  `bebida_idbebida` int(11) NOT NULL,
  `quantidade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_carne`
--

CREATE TABLE `item_carne` (
  `iditemcarne` int(11) NOT NULL,
  `quantidade` float DEFAULT NULL,
  `churrasco_idchurrasco` int(11) NOT NULL,
  `carne_idcarne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome`, `login`, `senha`) VALUES
(1, 'Carlos Alberto', 'beto', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`idbebida`);

--
-- Indexes for table `carne`
--
ALTER TABLE `carne`
  ADD PRIMARY KEY (`idcarne`);

--
-- Indexes for table `churrasco`
--
ALTER TABLE `churrasco`
  ADD PRIMARY KEY (`idchurrasco`);

--
-- Indexes for table `churrasco_tem_convidado`
--
ALTER TABLE `churrasco_tem_convidado`
  ADD PRIMARY KEY (`churrasco_idchurrasco`,`convidado_idconvidado`),
  ADD KEY `fk_Convidado_has_Churrasco_Churrasco1_idx` (`churrasco_idchurrasco`),
  ADD KEY `fk_Convidado_has_Churrasco_Convidado_idx` (`convidado_idconvidado`);

--
-- Indexes for table `convidado`
--
ALTER TABLE `convidado`
  ADD PRIMARY KEY (`idconvidado`);

--
-- Indexes for table `item_bebida`
--
ALTER TABLE `item_bebida`
  ADD PRIMARY KEY (`idbebida`),
  ADD KEY `fk_Churrasco_has_Bebida_Bebida1_idx` (`bebida_idbebida`),
  ADD KEY `fk_Churrasco_has_Bebida_Churrasco1_idx` (`churrasco_idchurrasco`);

--
-- Indexes for table `item_carne`
--
ALTER TABLE `item_carne`
  ADD PRIMARY KEY (`iditemcarne`),
  ADD KEY `fk_Churrasco_has_Carne_Carne1_idx` (`carne_idcarne`),
  ADD KEY `fk_Churrasco_has_Carne_Churrasco1_idx` (`churrasco_idchurrasco`);

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
  MODIFY `idbebida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `carne`
--
ALTER TABLE `carne`
  MODIFY `idcarne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `churrasco`
--
ALTER TABLE `churrasco`
  MODIFY `idchurrasco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `convidado`
--
ALTER TABLE `convidado`
  MODIFY `idconvidado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `item_bebida`
--
ALTER TABLE `item_bebida`
  MODIFY `idbebida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_carne`
--
ALTER TABLE `item_carne`
  MODIFY `iditemcarne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `churrasco_tem_convidado`
--
ALTER TABLE `churrasco_tem_convidado`
  ADD CONSTRAINT `fk_Convidado_has_Churrasco_Churrasco1` FOREIGN KEY (`churrasco_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Convidado_has_Churrasco_Convidado` FOREIGN KEY (`convidado_idconvidado`) REFERENCES `convidado` (`idconvidado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `item_bebida`
--
ALTER TABLE `item_bebida`
  ADD CONSTRAINT `fk_Churrasco_has_Bebida_Bebida1` FOREIGN KEY (`bebida_idbebida`) REFERENCES `bebida` (`idbebida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Churrasco_has_Bebida_Churrasco1` FOREIGN KEY (`churrasco_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `item_carne`
--
ALTER TABLE `item_carne`
  ADD CONSTRAINT `fk_Churrasco_has_Carne_Carne1` FOREIGN KEY (`carne_idcarne`) REFERENCES `carne` (`idcarne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Churrasco_has_Carne_Churrasco1` FOREIGN KEY (`churrasco_idchurrasco`) REFERENCES `churrasco` (`idchurrasco`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
