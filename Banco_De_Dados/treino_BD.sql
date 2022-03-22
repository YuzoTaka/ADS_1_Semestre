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
('Ahri', 'mago'),
('Akali', 'assassino'),
('Akshan', 'atirador'),
('Alistar', 'suporte'),
('Amumu', 'Tanque'),
('Anivia', 'Mago'),
('Aphelios', 'Atirador'),
('Azir', 'Mago'),
('Braum', 'Suporte'),
('Darius', 'Lutador'),
('Camille', 'Lutador'),
('Gnar', 'Lutador'),
('Ekko', 'Mago'),
('Irelia', 'Lutador'),
('Jayce', 'Lutador'),
('Jinx', 'Atirador'),
('Katarina', 'Assassino'),
('LeBlanc', 'Assassino'),
('Yasuo', 'Lutador'),
('Yone', 'Lutador'),
('Zed', 'Assassino'),
('Zeri', 'Atirador');

ALTER TABLE Campeao ADD COLUMN fkRegiao INT;
ALTER TABLE Campeao ADD FOREIGN KEY (fkRegiao) REFERENCES Runeterra(idRuneterra);



SELECT * FROM Runeterra;
SELECT * FROM Campeao;

DESC Campeao;


    
    
