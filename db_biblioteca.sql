-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/05/2024 às 01:43
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_autores`
--

CREATE TABLE `tbl_autores` (
  `ID_Autor` smallint(6) NOT NULL,
  `Nome_Autor` varchar(50) DEFAULT NULL,
  `Sobrenome_Autor` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_editoras`
--

CREATE TABLE `tbl_editoras` (
  `ID_Editora` smallint(6) NOT NULL,
  `Nome_Editora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_livro`
--

CREATE TABLE `tbl_livro` (
  `ID_Livro` smallint(6) NOT NULL,
  `Nome_Livro` varchar(50) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `ID_Autor` smallint(6) NOT NULL,
  `Data_Pub` date NOT NULL,
  `Preco_Livro` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_teste_incremento`
--

CREATE TABLE `tbl_teste_incremento` (
  `Codigo` smallint(6) NOT NULL,
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_teste_incremento`
--

INSERT INTO `tbl_teste_incremento` (`Codigo`, `Nome`) VALUES
(15, 'Ana'),
(16, 'Maria'),
(17, 'Julia'),
(18, 'Joana'),
(90, 'Renata'),
(91, 'Jorge'),
(92, 'Fábio');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbl_autores`
--
ALTER TABLE `tbl_autores`
  ADD PRIMARY KEY (`ID_Autor`);

--
-- Índices de tabela `tbl_editoras`
--
ALTER TABLE `tbl_editoras`
  ADD PRIMARY KEY (`ID_Editora`);

--
-- Índices de tabela `tbl_livro`
--
ALTER TABLE `tbl_livro`
  ADD PRIMARY KEY (`ID_Livro`);

--
-- Índices de tabela `tbl_teste_incremento`
--
ALTER TABLE `tbl_teste_incremento`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_editoras`
--
ALTER TABLE `tbl_editoras`
  MODIFY `ID_Editora` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_livro`
--
ALTER TABLE `tbl_livro`
  MODIFY `ID_Livro` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbl_teste_incremento`
--
ALTER TABLE `tbl_teste_incremento`
  MODIFY `Codigo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
