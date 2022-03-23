CREATE DATABASE faculdade;


USE faculdade;

CREATE TABLE Sala(
	idSala INT PRIMARY KEY AUTO_INCREMENT,
    lado VARCHAR(45),
    andar VARCHAR(45)
);

CREATE TABLE notebook(
	idNotebook INT PRIMARY KEY AUTO_INCREMENT,
    faculdade VARCHAR(45),
    unidade VARCHAR(45),
    patrimonio VARCHAR(45),
    so1 VARCHAR(45),
    so2 VARCHAR(45)
);

INSERT INTO Sala(lado, andar) VALUES
	('A', '1'),
	('B', '1'),
	('A', '2'),
	('B', '2'),
	('A', '3'),
	('B', '3'),
	('A', '4'),
	('B', '4');
    
INSERT INTO notebook(faculdade, unidade, patrimonio, so1, so2) VALUES
('SP', 'HDK', '2164', 'windows', 'linux'),
('SP', 'HDK', '2160', 'linux', null),
('SP', 'HDK', '2100', 'IOS', null),
('SP', 'HDK', '1350', 'windows', null);

ALTER TABLE notebook ADD COLUMN fkSala INT;
ALTER TABLE notebook ADD FOREIGN KEY (fkSala) REFERENCES Sala(idSala);

UPDATE notebook SET fkSala = 1 WHERE idNotebook = 1;
UPDATE notebook SET fkSala = 5 WHERE idNotebook = 2;
UPDATE notebook SET fkSala = 3 WHERE idNotebook = 3;
UPDATE notebook SET fkSala = 2 WHERE idNotebook = 4;


SELECT Sala.andar, notebook.so1 FROM Notebook JOIN Sala ON Sala.idSala = notebook.fkSala WHERE andar = '1';
SELECT * FROM Notebook AS note JOIN Sala AS sl ON sl.idSala = note.fkSala;


SELECT andar, lado FROM Sala;
SELECT CONCAT(andar,lado) FROM Sala;

/* ALIASES =(dar um apelido) 
"nome" AS "apelido"
*/

SELECT CONCAT(andar,lado) AS 'Nome Sala' FROM Sala; 


SELECT * FROM notebook AS note;
