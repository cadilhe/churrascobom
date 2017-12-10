
/* Tabela Convidado 50 registros*/

CREATE TABLE `convidado` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `idconvidado` mediumint,
  `nome` varchar(255) default NULL,
  `telefone` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `convidado` (`idconvidado`,`nome`,`telefone`) VALUES 
(3,"Jackson","(46) 8857-8248"),(4,"Kasimir","(82) 2069-2877"),(5,"Aristotle","(76) 4724-0866"),(6,"Sybil","(54) 9083-6144"),(7,"Erica","(00) 3417-6773"),
(8,"Owen","(43) 6191-8644"),(9,"Lawrence","(08) 2538-1189"),(10,"Brennan","(48) 2660-9864"),(11,"Peter","(54) 9393-2007"),(12,"Mary","(70) 9339-5795"),
(13,"Petra","(40) 2608-2239"),(14,"Burton","(18) 3044-5299"),(15,"Sybill","(94) 4695-3753"),(16,"Kibo","(31) 7029-8554"),(17,"Ivan","(81) 2972-1760"),
(18,"Laura","(25) 9256-0315"),(19,"Wing","(13) 6393-2913"),(20,"Ira","(65) 1348-0139"),(21,"Kameko","(41) 9750-4412"),(22,"Aidan","(65) 1523-8922"),
(23,"Alexa","(05) 6357-2445"),(24,"Francis","(87) 8625-2019"),(25,"Xena","(15) 4540-4038"),(26,"Quamar","(70) 7233-8950"),(27,"Jael","(70) 6252-3684"),
(28,"Daniel","(53) 7562-3125"),(29,"Aladdin","(87) 3382-0511"),(30,"Lunea","(47) 5868-7000"),(31,"Derek","(19) 3161-1138"),(32,"Blaine","(68) 4484-6331"),
(33,"Lance","(45) 4563-4004"),(34,"Demetrius","(21) 9355-6499"),(35,"Lydia","(42) 6575-2400"),(36,"Kenyon","(49) 6726-1105"),(37,"Idona","(34) 1059-4001"),
(38,"Malik","(19) 1747-9095"),(39,"Rhea","(72) 5107-7690"),(40,"Carolyn","(57) 8355-9290"),(41,"Nathaniel","(00) 4791-7683"),(42,"Rama","(33) 1126-8917"),
(43,"Russell","(56) 7870-6216"),(44,"Erica","(47) 8506-6747"),(45,"Amir","(27) 8260-7234"),(46,"Gareth","(59) 5380-6939"),(47,"Ronan","(89) 8237-0750"),
(48,"Zahir","(72) 8527-9276"),(49,"Karen","(62) 2359-1948"),(50,"Owen","(62) 4190-7709");


/* Tabela Carnes 29 registros*/

CREATE TABLE `carne` (
  `idcarne` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `unidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `carne` (`idcarne`, `nome`, `preco`, `unidade`) VALUES

(1,'Acém', '9.78', 'kg'),
(2, 'Alcatra', '17,98', 'kg'),
(3, 'Chã De Dentro', '15,98', 'kg'),
(4, 'Chã De Fora', '13,48', 'kg'),
(5, 'Contra Filé', '17,98', 'kg'),
(6, 'Costela', '6,48', 'kg'),
(7, 'Cupim', '12.78', 'kg'),
(8, 'Dobradinha', '6,98', 'kg'),
(9, 'Fígado', '8,48', 'kg'),
(10, 'Filé Mignon', '28,98', 'kg'),
(11, 'Fraldinha', '12,48', 'kg'),
(12, 'Lagarto', '14,38', 'kg'),
(13, 'Maça De Peito', '9,78', 'kg'),
(14, 'Miolo De Acém', '9,98', 'kg'),
(15, 'Músculo', '9,78', 'kg'),
(16, 'Pá', '9,78', 'kg'),
(17, 'Patinho', '14,38', 'kg'),
(18, 'Picanha', '26,98', 'kg'),
(20, 'Costelinha', '10,98', 'kg'),
(21, 'Lombo', '9,98', 'kg'),
(22, 'Pernil C/Osso', '8,28', 'kg'),
(23, 'Pernil S/Osso', '8,48', 'kg'),
(24, 'Toucinho', '2,78', 'kg'),
(26, 'Asa', '7,98', 'kg'),
(27, 'Coxa', '5,68', 'kg'),
(28, 'Frango', '5,28', 'kg'),
(29, 'Peito', '7,28', 'kg'),
(30, 'Merluza', '11,98', 'kg'),
(31, 'Bacalhau', '29,00', 'kg');

/* Tabela Bebidas 100 registros*/

CREATE TABLE `bebida` (
  `idbebida` int(11) NOT NULL AUTO_INCREMENT,  
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `bebida` (`nome`, `descricao`, `preco`) VALUES
('Vinho Tinto Seco','JP BIB 3l','33,00'),
('Vinho Tinto','Merlot BIB 3l','78,00'),
('Vinho Tinto C. Sauvignon','BIB 3l','78'),
('Whisky Red Label','750 ml','125'),
('Whisky Black Label','750 ml','210'),
('Whisky Jack Daniel’s','750 ml','160'),
('Whisky White House','750 ml','98'),
('Vodka Orloff','1 L','35'),
('Vodka Smirnoff','1 L','43'),
('Vodka Absolut Tradicional','750 ml','118'),
('Vodka Absolut baunilha','750 ml','130'),
('Tequila José Cuervo','750 ml','110'),
('Jeropiga','970 ml','30'),
('Bacardi','750 ml','45'),
('Catuaba Selvagem','1 L','18'),
('Energético Monster','473 ml','15'),
('Energètico Red Nose','2 L','18'),
('Energético red bull','473 ml','20'),
('Cerveja Antarctica sub zero','Caixa com 24 unidades 600 ml','122'),
('Cerveja Kaiser','Caixa com 24 unidades 600 ml','98'),
('Cerveja Antárctica','Caixa com 24 unidades 600 ml','125'),
('Cerveja Skol','Caixa com 24 unidades 600 ml','138'),
('Cerveja Brahma','Caixa com 24 unidades 600 ml','138'),
('Coca Cola lata','350 ml Fardo com 12 unidades. ','28'),
('Fanta lata','350 ml Fardo com 12 unidades ','28'),
('Sprite lata','350 ml Fardo com 12 unidades','28'),
('Kuat lata','350 ml Fardo com 12 unidades','28'),
('Guaraná Antarctica','lata 350  Fardo com 12 unidades','27');