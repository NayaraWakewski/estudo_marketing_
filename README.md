[![texto alt](https://media.licdn.com/dms/image/C4D16AQGD8xrlsWsOCA/profile-displaybackgroundimage-shrink_350_1400/0/1668865864528?e=1692835200&v=beta&t=Xf4IQvk_e_zZru7hFcy7H09wIYpRrjAfYTvgMXJqquc)](https://digitalcollege.com.br)


# Storytelling: Criando um Banco de Marketing com PostgreSQL - Utilizando o PENTAHO

Era uma vez, uma empresa chamada " MKT Wizards " que desejava melhorar sua compreensão dos clientes e a eficácia de suas campanhas. Para isso, eles decidiram criar um banco de dados para armazenar informações sobre seus clientes e suas compras. Mas como fazer isso da melhor forma possível?


## 🚀 Começando

Neste projeto, realizamos a criação de um banco de dados db_marketing, sendo essa a basse de todo o projeto.

> **Foi dividida a análise em 3 etapas:**

1. **Criação das Tabelas no Postgres**: Nesta etapa, criamos 2 tabelas no PostgreSQL;
   tb_clientes com os campos como id_cliente, nome, email, telefone, data_nascimento.
   tb_compras com os campos id_compra, id_cliente, produto(descrição do produto), valor, data_compra.
   
3. **Inserindo os Dados nas Tbelas**: Nesta etapa, realizamos a inserção de dados nas tabelas.

4. **Elaborando Consultas Simples**: Nessa etapa foi executado consultas simples, obtendo os nomes e e-mails de todos os clientes . Em seguida, descobri quais produtos cada cliente havia comprado e calculado o valor total gasto por alguns clientes específicos .Também encontrei um jeito de viajar no tempo! Com uma consulta mágica, descobrindo quais clientes fizeram compras em um dia específico , trazendo informações úteis para analisar a eficácia de suas campanhas ao longo do tempo.

```sql
---CONSULTAS----

----NOME E EMAIL---

SELECT nome, email
FROM tb_cliente
ORDER BY nome;

---produtos cada cliente havia comprado e --
---calculado o valor total gasto por alguns clientes específicos---

--- TODOS OS CLIENTES----

SELECT c.id_cliente, c.nome,
	ARRAY_AGG(cp.produto) AS produtos_comprados,
	SUM(cp.valor) AS valor_total_gasto
FROM tb_clientes c
LEFT JOIN tb_compras cp ON c.id_cliente = cp.id_cliente
GROUP BY c.id_cliente, c.nome;

--- CLIENTES ESPECIFICOS----

SELECT c.id_cliente, c.nome,
	ARRAY_AGG(cp.produto) AS produtos_comprados,
	SUM(cp.valor) AS valor_total_gasto
FROM tb_clientes c
LEFT JOIN tb_compras cp ON c.id_cliente = cp.id_cliente
WHERE c.id_cliente IN (1234 , 1265)
GROUP BY c.id_cliente, c.nome;
```

4. **Conexão com o Pentaho**: Foi feita a conexão com o Pentaho, para o tratamento dos dados e criação do banco de dados dimensional. 

5. **Criação do Banco de Dados Dimensional**: Depois do tratamento criamos as dim_clientes, dim_produto e fato_compras no pentaho, no formato do arquivo em tabelas do excel.



## 🎁 Expressões de gratidão

* Compartilhe com outras pessoas esse projeto 📢;
* Quer saber mais sobre o projeto? Entre em contato para tomarmos um :coffee:;

---
⌨️ com ❤️ por [Nayara Vakevskii](https://github.com/NayaraWakewski) 😊
