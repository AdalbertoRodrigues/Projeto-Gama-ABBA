use SpringWebYoutube;

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `observacao` longtext,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

insert into administradores(email, nome, observacao, senha)values('abba@teste.com', 'ABBA', 'treinamento k8s', '123456');

select * from administradores;