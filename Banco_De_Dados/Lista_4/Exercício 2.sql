CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE curso(
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla CHAR(3),
    coordenador VARCHAR(50)
);

CREATE TABLE professor(
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    matéria VARCHAR(45),
    fkCurso INT,
    FOREIGN KEY (fkCurso) REFERENCES Curso (idCurso)
);

INSERT INTO professor(nome, matéria, fkCurso) VALUES
    ('Ricarda', 'Banco de dados', 1),
    ('Rochelle', 'Algoritmo', 1),
    ('Moreno', 'T.I', 3),
    ('Loreno', 'Arq Comp', 2);

INSERT INTO curso(nome, sigla, coordenador) VALUES
    ('Análise e Desenvolvimento de Sistema', 'ADS', 'Torero'),
    ('Sistema da Informação', 'SIS', 'Konan'),
    ('Ciências da Computação', 'CCO', 'Jéssico');

-- Faça um JOIN entre as duas tabelas
SELECT 
    CONCAT(p.nome, ' - ', p.matéria),
    CONCAT(c.nome , ' - ', c.sigla)
    FROM professor as p
    JOIN curso as c 
    ON p.fkCurso = c.idCurso;

-- Faça um JOIN com WHERE entre as duas tabelas;
SELECT
    CONCAT(p.nome, ' - ', p.matéria),
    CONCAT(c.nome, ' - ', c.sigla)
    FROM professor as p 
    JOIN curso as c 
    ON p.fkCurso = c.idCurso
    WHERE c.sigla = 'ADS';

-- Crie um campo com a restrição (constraint) de CHECK
ALTER TABLE professor ADD COLUMN tipo VARCHAR(30);
ALTER TABLE professor ADD CHECK (tipo = 'monitor' or tipo = 'professor' or tipo = 'assistente');

UPDATE professor SET tipo = 'monitor' WHERE idProfessor = 1;
UPDATE professor SET tipo = 'professor' WHERE idProfessor = 2;
UPDATE professor SET tipo = 'assistente' WHERE idProfessor = 3;
UPDATE professor SET tipo = 'professor' WHERE idProfessor = 4;
