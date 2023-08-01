CREATE TABLE tb_clientes(
	id_cliente INTEGER PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	data_nascimento DATE NOT NULL
);

INSERT INTO tb_clientes VALUES 
(1234, 'Alana', 'alana@gmail.com', 85992547685,'2000-01-01'),
(1289,'Clara', 'clara@gmail.com', 85992547689,'1990-12-20'),
(1265,'Sergio', 'sergio@gmail.com', 85992547689,'1999-09-17'),
(1256,'Francisco', 'francisco@gmail.com', 85992547687,'1978-07-14'),
(1245,'Lucas', 'lucas@gmail.com', 85992547682,'1985-04-03');