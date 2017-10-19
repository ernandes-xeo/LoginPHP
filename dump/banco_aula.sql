-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para banco_aula
-- DROP DATABASE IF EXISTS `banco_aula`;--
CREATE DATABASE IF NOT EXISTS `banco_aula` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `banco_aula`;


-- Copiando estrutura para tabela banco_aula.galeria
DROP TABLE IF EXISTS `galeria`;
CREATE TABLE IF NOT EXISTS `galeria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela banco_aula.galeria: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` (`id`, `foto`, `nome`, `email`, `senha`) VALUES
	(1, '2017-10-19-022646_brasil.jpg.jpg', 'Joao da Silva Brasileiro', 'jaobr@teste.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(2, '2017-10-19-022717_eu.png.png', 'Eu', 'eu@teste.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(3, '2017-10-19-022856_brasil.jpg.jpg', 'brasil2', 'br@tete.com', '827ccb0eea8a706c4c34a16891f84e7b');
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;


-- Copiando estrutura para tabela banco_aula.permissoes
DROP TABLE IF EXISTS `permissoes`;
CREATE TABLE IF NOT EXISTS `permissoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_usuario` int(11) DEFAULT NULL,
  `permissao` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__usuario` (`cod_usuario`),
  CONSTRAINT `FK__usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela banco_aula.permissoes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `permissoes` DISABLE KEYS */;
INSERT INTO `permissoes` (`id`, `cod_usuario`, `permissao`, `status`) VALUES
	(1, 45, 5, 1),
	(14, 46, 5, 1),
	(15, 47, 5, 1);
/*!40000 ALTER TABLE `permissoes` ENABLE KEYS */;


-- Copiando estrutura para tabela banco_aula.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela banco_aula.usuario: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `nome`, `mail`, `senha`) VALUES
	(2, 'ernandes', 'Prof Xeo', 'atividades@infoxeo.com.br', '827ccb0eea8a706c4c34a16891f84e7b'),
	(3, 'yuri', 'Yuri', 'yuri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(8, 'pedro', 'pedro', 'pedro@jose.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(12, 'joao', 'Joao', 'joao@joao.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(13, 'rodrigo', 'Rodrigo', 'rodrigo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(16, 'Jose', 'Jose Silva', 'josesilva@teste.com', '12345'),
	(17, 'teste', 'Teste', 'teste@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(19, 'joao', 'Joao', 'joao@joao.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(21, 'fuluno', 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(45, 'francisco', 'Francisco', 'francisco@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(46, 'paty', 'Patricia', 'patricia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(47, 'paty', 'Patricia', 'patricia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(51, 'xeo', 'Ernandes', 'ernandesxeo@infoxoe.com', 'e10adc3949ba59abbe56e057f20f883e'),
	(52, 'aline3', 'Aline 3', 'alinedetals@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(58, 'solange', 'Solange', 'solange@projeto.com.br', '827ccb0eea8a706c4c34a16891f84e7b'),
	(59, 'barbara', 'Barbara', 'ba@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(60, 'daniel34', 'Daniel Duarte34', 'daniel@gmail.INFO.34', 'c20ad4d76fe97759aa27a0c99bff6710');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
