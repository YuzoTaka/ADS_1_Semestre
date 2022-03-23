CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE professor(
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(30),
    especialidade1 VARCHAR(40),
    especialidade2 VARCHAR(40),
    fkDisciplina INT,
    FOREIGN KEY (fkDisciplina) REFERENCES disciplina(idDisciplina)
);

CREATE TABLE disciplina(
    idDisciplina INT PRIMARY KEY AUTO_INCREMENT,
    nomeDisc VARCHAR(40)
);

INSERT INTO professor(nome, sobrenome, especialidade1, especialidade2) VALUES
('Carlos', 'Buckman', 'Banco de Dados', 'regra de 3'),
('Robertinha', 'Strange', 'Arq. COmp', 'bhaskara'),
('Naruto', 'Bolt', 'multiplicação', 'cubo mágico'),
('Marcon', 'Phoenix', 'Soma', 'GameShark'),
('Podro', 'Logman', 'minecraft', 'JS'),
('Matheusa', 'Postman', 'HTML', 'arduíno');

INSERT INTO disciplina(nomeDisc) VALUES
('matemática'),
('ingles'),
('física'),
('arte urbana');

UPDATE professor SET fkDisciplina = 1 WHERE = 1;
UPDATE professor SET fkDisciplina = 3 WHERE = 2;
UPDATE professor SET fkDisciplina = 4 WHERE = 3;
UPDATE professor SET fkDisciplina = 2 WHERE = 4;
UPDATE professor SET fkDisciplina = 1 WHERE = 5;
UPDATE professor SET fkDisciplina = 2 WHERE = 6;

