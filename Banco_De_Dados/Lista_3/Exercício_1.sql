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