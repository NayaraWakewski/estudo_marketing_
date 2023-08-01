CREATE TABLE tb_compras(
	id_compra INTEGER PRIMARY KEY,
	id_cliente SERIAL NOT NULL,
	produto VARCHAR(100) NOT NULL,
	valor NUMERIC(10,2) NOT NULL,
	data_compra DATE NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente)
);

INSERT INTO tb_compras VALUES 
(0001, 1234, 'toalha da barbie', 70.20, '2023-04-12'),
(0002, 1245, 'conjunto de cama da barbie', 327.00,'2023-05-23'),
(0003, 1256, 'toalha da barbie', 70.20,'2023-07-01'),
(0004, 1265, 'lençol rosa', 78.00,'2023-06-05'),
(0005, 1289, 'edredom matel barbie', 278.00,'2023-04-14'),
(0006, 1234, 'fronha rosa', 20.20 ,'2023-05-15'),
(0007, 1245, 'colcha de cama rosa pink', 124.00,'2023-05-12'),
(0008, 1234, 'toalha banhão da barbie', 185.00,'2023-05-02'),
(0009, 1245, 'toalha banhão da barbie', 185.00,'2023-06-29'),
(0010, 1256, 'lençol rosa', 78.00 ,'2023-07-24'),
(0011, 1265, 'edredom do ken', 278.00 ,'2023-03-01'),
(0012, 1234, 'edredom castelo encantado da barbie', 278.00 ,'2023-07-14'),
(0013, 1289, 'lençol de elastico rosa chiclete', 67.00 ,'2023-07-14'),
(0014, 1245, 'fronha rosa chiclete', 57.00 ,'2023-06-1-'),
(0015, 1289, 'toalha de praia barbie e ken', 132.00 ,'2023-04-14');

SELECT * FROM tb_compras;