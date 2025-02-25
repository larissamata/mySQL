CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos
(id BIGINT AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
sobrenome VARCHAR (100) NOT NULL,
materia VARCHAR(100) NOT NULL,
nota DECIMAL (4,2) NOT NULL,
professorx VARCHAR (200) NOT NULL,
PRIMARY KEY (id) );

INSERT INTO tb_alunos
(nome, sobrenome, materia, nota, professor) VALUES
("Nicolas", "Vargas", "Inglês", 08.00, "Claudio"),
("Melissa", "Silva Medeiros", "Literatura", 07.00, "Junior"),
("Ana Clara", "Rodrigues de Souza", "Matemática", 10.00, "Maria"),
("Geovanna", "Manuele de Ferraz", "História", 09.50, "Gilvan"),
("Pedro", "dos Santos", "Inglês", 09.25, "Claudio"),
("Luiza", "Rodrigues Mello", "Português", 02.00, "Luan"),
("Bruno", "Ferreira Martins", "História", 05.25, "Gilvan"),
("Jennifer", "Correia", "Literatura", 10.00, "Junior");

ALTER TABLE tb_alunos
CHANGE COLUMN professorx professor VARCHAR(200) NOT NULL;

INSERT INTO tb_alunos
(nome, sobrenome, materia, nota, professor) VALUES
("Nicolas", "Vargas", "Inglês", 08.00, "Claudio"),
("Melissa", "Silva Medeiros", "Literatura", 07.00, "Junior"),
("Ana Clara", "Rodrigues de Souza", "Matemática", 10.00, "Maria"),
("Geovanna", "Manuele de Ferraz", "História", 09.50, "Gilvan"),
("Pedro", "dos Santos", "Inglês", 09.25, "Claudio"),
("Luiza", "Rodrigues Mello", "Português", 02.00, "Luan"),
("Bruno", "Ferreira Martins", "História", 05.25, "Gilvan"),
("Jennifer", "Correia", "Literatura", 10.00, "Junior");

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

CREATE VIEW notamaxima AS 
SELECT id, nome, nota
FROM tb_alunos
WHERE nota = 10;


SELECT * FROM notamaxima;

