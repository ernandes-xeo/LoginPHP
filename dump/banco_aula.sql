-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.10-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para banco_aula
DROP DATABASE IF EXISTS `banco_aula`;
CREATE DATABASE IF NOT EXISTS `banco_aula` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `banco_aula`;


-- Copiando estrutura para tabela banco_aula.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela banco_aula.usuario: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `nome`, `mail`, `senha`) VALUES
	(2, 'ernandes', 'Prof Xeo', 'atividades@infoxeo.com.br', '827ccb0eea8a706c4c34a16891f84e7b'),
	(3, 'yuri', 'Yuri', 'yuri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(4, NULL, 'Yuri sÃ³', 'yuri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(6, 'jose', 'Jose', 'jose@jose.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(7, NULL, 'Jose', 'jose@jose.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(8, NULL, 'pedro', 'pedro@jose.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(9, NULL, 'pedro', 'pedro@jose.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(12, NULL, 'Joao', 'joao@joao.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(13, NULL, 'Rodrigo', 'rodrigo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(14, NULL, 'Rodrigo', 'rodrigo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(15, NULL, 'Xeo', 'atividades@infoxeo.com.br', '827ccb0eea8a706c4c34a16891f84e7b'),
	(16, NULL, 'faluno3', 'fulano@fluno.de.tal', '827ccb0eea8a706c4c34a16891f84e7b'),
	(17, NULL, 'Teste', 'teste@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(18, NULL, 'Teste 1', 'teste1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(19, NULL, 'Joao', 'joao@joao.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(21, NULL, 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(22, NULL, 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(23, NULL, 'aluno', 'aluno@aluno.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(24, NULL, 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(25, NULL, 'aluno', 'aluno@aluno.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(26, NULL, 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(27, NULL, 'aluno', 'aluno@aluno.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(28, NULL, 'fulano de tal', 'fulano@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(29, NULL, 'fulano de tals', 'fulanodetals@fulanodetal.com', '827ccb0eea8a706c4c34a16891f84e7b'),
	(30, NULL, 'Leo', 'leo@gmail.com', '12345');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
