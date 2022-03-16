CREATE DATABASE Sprint2;

USE Sprint2;

CREATE TABLE Atleta (
	idAtleta INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
	qtdMedalha INT
);

INSERT INTO Atleta(nome, modalidade, qtdMedalha) VALUES
('Ademir', 'Volei', 4),
('João', 'Tenis', 2),
('Fernanda', 'Basquete', 1),
('Marcela', 'Natação', 6),
('Pedro', 'Futebol', 4);

CREATE TABLE Pais(
	idPais INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    capital VARCHAR(40)
);

INSERT INTO Pais(nome, capital) VALUES
	('Canada', 'Toronto'),
	('Alemanha', 'Berlim'),
	('Brasil', 'Brasília'),
	('Japão', 'Tokyo');
    
    -- Criar a chave estrangeira na tabela correspondente conforme modelagem;   
ALTER TABLE Atleta ADD COLUMN fkPais INT;
ALTER TABLE Atleta ADD FOREIGN KEY (fkPais) REFERENCES Pais (idPais);

-- Atualizar o país de todos os atletas;
UPDATE Atleta SET fkPais = 1 WHERE idAtleta = 1;
UPDATE Atleta SET fkPais = 2 WHERE idAtleta = 2;
UPDATE Atleta SET fkPais = 3 WHERE idAtleta = 3;
UPDATE Atleta SET fkPais = 4 WHERE idAtleta = 4;
UPDATE Atleta SET fkPais = 2 WHERE idAtleta = 5;

-- Exibir os atletas e seu respectivo país;
SELECT Atleta.nome, Pais.nome FROM Atleta JOIN Pais ON Pais.idPais = Atleta.fkPais;

-- Exibir apenas o nome do atleta e o nome do respectivo país;

SELECT Atleta.nome, Pais.nome FROM Atleta JOIN Pais ON Pais.idPais = Atleta.fkPais WHERE Pais.nome = 'Alemanha';

-- Exibir os dados dos atletas, seus respectivos países, de uma determinada capital;
SELECT Atleta.nome, Pais.nome FROM Atleta JOIN Pais ON Pais.idPais = Atleta.fkPais WHERE Pais.capital = 'Toronto';
