CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Revista(
	idRevista INT(1) primary key auto_increment,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO Revista VALUES
(null, 'Vogue', null),
(null, 'Veja', null),
(null, 'Nature', null),
(null, 'Science', null);

-- Exibir todos os dados da tabela
SELECT * FROM Revista;

UPDATE Revista SET categoria = 'Moda' WHERE idRevista = 1;
UPDATE Revista SET categoria = 'Notícia' WHERE idRevista = 2;
UPDATE Revista SET categoria = 'Ciência' WHERE idRevista = 3;
UPDATE Revista SET categoria = 'Ciência' WHERE idRevista = 4;

INSERT INTO Revista VALUES
(null, 'PlayReplay', 'Jogos'),
(null, 'Money', 'Investimento'),
(null, 'Sports', 'Esporte');

-- Exibir todos os dados da tabela
SELECT * FROM Revista;

-- Exibir a descrição da estrutura da tabela
DESC Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE Revista
CHANGE categoria categoria VARCHAR (40);

-- Exibir novamente a descrição da estrutura da tabela
DESC Revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE Revista ADD Periodicidade VARCHAR(15);

--  Exibir os dados da tabela
SELECT * FROM Revista;

-- Excluir a coluna periodicidade da tabela
ALTER TABLE Revista DROP periodicidade;

-- Elimine a tabela
DROP TABLE Revista;

-- Elimine o banco de dados
DROP DATABASE sprint1;

