-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26/05/2026 às 23:13
-- Versão do servidor: 8.4.7
-- Versão do PHP: 8.3.28

START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: "praticando"
--
CREATE DATABASE IF NOT EXISTS "praticando" DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE praticando;

-- --------------------------------------------------------

--
-- Estrutura para tabela "amigos"
--

DROP TABLE IF EXISTS `amigos`;
CREATE TABLE `amigos` (
  "id" int NOT NULL AUTO_INCREMENT,
  "nome" varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  "sexo" enum('M','F') COLLATE utf8mb4_general_ci NOT NULL,
  "telefone" varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "nome" ("nome")
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela "amigos"
--

SET IDENTITY_INSERT "amigos" ON ;
INSERT INTO "amigos" ("id", "nome", "sexo", "telefone") VALUES
(1, 'Maria', 'F', '121221212121'),
(2, 'Joao', 'M', '32422222'),
(3, 'Jose', 'M', '34324343434');

SET IDENTITY_INSERT "amigos" OFF;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
