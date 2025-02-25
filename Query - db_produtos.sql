CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos
(id BIGINT AUTO_INCREMENT,
produto VARCHAR (100) NOT NULL,
categoria VARCHAR (100) NOT NULL,
preco_venda DECIMAL (10,2) NOT NULL,
estoque int NOT NULL,
validade DATE NOT NULL,
PRIMARY KEY (id) );

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(produto, categoria, preco_venda, estoque, validade) VALUES
("Milho", "Enlatados", 4.50, 1500, "2027-01-30"),
("Ervilha", "Enlatados", 3.48, 2000, "2028-08-18"),
("Maçã", "Frutas", 1.00, 3000, "2025-03-05"),
("Requeijão", "Resfriados", 4.50, 1500, "2026-01-31"),
("Sal", "Temperos", 2.00, 4000, "2029-09-10"),
("Espaguete", "Massas", 2.41, 7000, "2027-12-05"),
("Carne Moída", "Carnes", 36.0, 1500, "2025-03-20"),
("Manteiga", "Resfriados", 8.50, 400, "2025-04-01");

SELECT * FROM tb_produtos WHERE preco_venda > 500;

SELECT * FROM tb_produtos WHERE preco_venda < 500;

UPDATE tb_produtos SET estoque = 300 WHERE id = 2;

SELECT * FROM tb_produtos;
