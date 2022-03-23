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

UPDATE Campeao SET fkRegiao = 11 WHERE idCampeao = 1;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 2;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 3;
UPDATE Campeao SET fkRegiao = 12 WHERE idCampeao = 4;
UPDATE Campeao SET fkRegiao = 11 WHERE idCampeao = 5;
UPDATE Campeao SET fkRegiao = 12 WHERE idCampeao = 6;
UPDATE Campeao SET fkRegiao = 9 WHERE idCampeao = 7;
UPDATE Campeao SET fkRegiao = 11 WHERE idCampeao = 8;
UPDATE Campeao SET fkRegiao = 12 WHERE idCampeao = 9;
UPDATE Campeao SET fkRegiao = 9 WHERE idCampeao = 10;
UPDATE Campeao SET fkRegiao = 3 WHERE idCampeao = 11;
UPDATE Campeao SET fkRegiao = 5 WHERE idCampeao = 12;
UPDATE Campeao SET fkRegiao = 9 WHERE idCampeao = 13;
UPDATE Campeao SET fkRegiao = 6 WHERE idCampeao = 14;
UPDATE Campeao SET fkRegiao = 5 WHERE idCampeao = 15;
UPDATE Campeao SET fkRegiao = 6 WHERE idCampeao = 16;
UPDATE Campeao SET fkRegiao = 3 WHERE idCampeao = 17;
UPDATE Campeao SET fkRegiao = 3 WHERE idCampeao = 18;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 19;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 20;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 21;
UPDATE Campeao SET fkRegiao = 2 WHERE idCampeao = 22;
UPDATE Campeao SET fkRegiao = 6 WHERE idCampeao = 23;


SELECT Campeao.nome, Runeterra.regiao FROM Campeao JOIN Runeterra ON Runeterra.idRuneterra = Campeao.fkRegiao order by idCampeao;

SELECT Campeao.idCampeao, Runeterra.regiao FROM Campeao JOIN Runeterra ON Runeterra.idRuneterra = Campeao.idCampeao;

SELECT Campeao.nome, Campeao.funcao, Runeterra.regiao FROM Campeao JOIN Runeterra ON Runeterra.idRuneterra = Campeao.idCampeao WHERE funcao = 'mago';



SELECT * FROM Runeterra;
SELECT * FROM Campeao; 



DESC Campeao;


    
    
