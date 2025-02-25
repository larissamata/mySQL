CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores
(id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cargo VARCHAR (255) NOT NULL,
salario FLOAT NOT NULL,
departamento VARCHAR (255) NOT NULL,
admissao DATE NOT NULL,
PRIMARY KEY (id) );

INSERT INTO tb_colaboradores
(nome, cargo, salario, departamento, admissao) VALUES
("Anne", "Auxiliar Administrativo", 2900.0, "Administração", "2020-05-12"),
("Inácio", "Analista de Redes SN", 7412.0, "TI", "2018-08-01"),
("Luiza", "Jovem Aprendiz", 1800.0, "Administração", "2024-12-19"),
("Carlos", "Gerente de Projetos", 22546.0, "TI", "2025-01-25"),
("Maria", "Recepcionista", 3120.0, "Recepção", "2023-11-30");

SELECT * FROM tb_colaboradores WHERE salario > 2000.0;

SELECT * FROM tb_colaboradores WHERE salario < 2000.0;

UPDATE tb_colaboradores SET salario = 13054.0 WHERE id = 2;

SELECT * FROM tb_colaboradores;