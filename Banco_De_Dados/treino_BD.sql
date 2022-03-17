CREATE DATABASE Runeterra;

USE Runeterra;

CREATE TABLE Runeterra(
	idRuneterra INT PRIMARY KEY AUTO_INCREMENT,
    regiao VARCHAR(50)
);

CREATE TABLE Campeao(
	idCampeao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    funcao VARCHAR(50)
    CONSTRAINT chkfuncao CHECK(funcao in('atirador', 'suporte', 'mago', 'tanque', 'assassino', 'lutador'))
);

INSERT INTO Runeterra(regiao) VALUES
('Ilha das Sombras'),
('Ionia'),
('Noxus'),
('Demacia'),
('Piltover'),
('Zaun'),
('Bandópolis'),
('Vazio'),
('Freljord'),
('Ixtal'),
('Targon'),
('Shurima'),
('Águas de Sentina');

INSERT INTO Campeao(nome, funcao) VALUES
('Aatrox', 'lutador'),
('Ahri', 'mago, assassino'),
('Akali', 'assassino'),
('Akshan', 'atirador'),
('Alistar', 'taque, suporte');



SELECT * FROM Runeterra;

    
    
