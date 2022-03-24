CREATE DATABASE sprint1;

USE sprint1;

-- Configurar a chave estrangeira na tabela conforme sua modelagem (Pode fazer no comando CREATE TABLE);
CREATE TABLE disciplina(
    idDisciplina INT PRIMARY KEY AUTO_INCREMENT,
    nomeDisc VARCHAR(40)
);

CREATE TABLE professor(
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(30),
    especialidade1 VARCHAR(40),
    especialidade2 VARCHAR(40),
    fkDisciplina INT,
    FOREIGN KEY (fkDisciplina) REFERENCES disciplina(idDisciplina)
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

UPDATE professor SET fkDisciplina = 1 WHERE idProfessor = 1;
UPDATE professor SET fkDisciplina = 3 WHERE idProfessor = 2;
UPDATE professor SET fkDisciplina = 4 WHERE idProfessor = 3;
UPDATE professor SET fkDisciplina = 2 WHERE idProfessor = 4;
UPDATE professor SET fkDisciplina = 1 WHERE idProfessor = 5;
UPDATE professor SET fkDisciplina = 2 WHERE idProfessor = 6;

-- Exibir os professores e suas respectivas disciplinas;
SELECT p.*, d.nomeDisc 
    FROM professor as p 
    JOIN disciplina as d 
    ON p.fkDisciplina = d.idDisciplina;


-- Exibir apenas o nome da disciplina e o nome do respectivo professor;
SELECT d.nomeDisc, p.nome
    FROM disciplina as d
    JOIN professor as p
    ON d.idDisciplina = p.fkDisciplina;

-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;
SELECT p.*, d.nomeDisc
    FROM professor as p
    JOIN disciplina as d
    ON d.idDisciplina = p.fkDisciplina
    WHERE sobrenome = 'Phoenix';

-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado professor, ordenado de forma crescente pela especialidade1;
SELECT p.especialidade1, d.nomeDisc
    FROM professor as p 
    JOIN disciplina as d 
    ON p.fkDisciplina = d.idDisciplina
    ORDER BY especialidade1;




