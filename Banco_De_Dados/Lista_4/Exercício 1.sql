CREATE DATABASE sprint1;

USE sprint1;

-- Configurar a chave estrangeira na tabela conforme sua modelagem (Pode fazer no comando CREATE TABLE);

CREATE TABLE professor(
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(30),
    especialidade1 VARCHAR(40),
    especialidade2 VARCHAR(40)
);

CREATE TABLE disciplina(
    idDisciplina INT PRIMARY KEY AUTO_INCREMENT,
    nomeDisc VARCHAR(40),
    fkProfessor INT,
    FOREIGN KEY(fkProfessor) REFERENCES professor(idProfessor)
);


INSERT INTO professor(nome, sobrenome, especialidade1, especialidade2) VALUES
('Carlos', 'Buckman', 'Banco de Dados', 'regra de 3'),
('Robertinha', 'Strange', 'Arq. Comp', 'bhaskara'),
('Naruto', 'Bolt', 'multiplicação', 'cubo mágico'),
('Marcon', 'Phoenix', 'Soma', 'GameShark'),
('Pedro', 'Logman', 'minecraft', 'JS'),
('Matheusa', 'Postman', 'HTML', 'arduíno');

INSERT INTO disciplina(nomeDisc, fkProfessor) VALUES
('matemática', 1),
('ingles', 2),
('física', 3);

UPDATE Disciplina SET fkProfessor = 1 WHERE idDisciplina = 1;
UPDATE Disciplina SET fkProfessor = 2 WHERE idDisciplina = 2;
UPDATE Disciplina SET fkProfessor = 3 WHERE idDisciplina = 3;

SELECT * FROM professor;
SELECT * FROM disciplina;

-- Exibir os professores e suas respectivas disciplinas;
SELECT *
    FROM disciplina as d 
    JOIN professor as p 
    ON d.idDisciplina = d.fkProfessor;


-- Exibir apenas o nome da disciplina e o nome do respectivo professor;
SELECT d.nomeDisc, p.nome
    FROM disciplina as d
    JOIN professor as p
    ON p.idProfessor = d.fkProfessor;

-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;
SELECT d.nomeDisc, p.*
    FROM disciplina as d
    JOIN professor as p
    ON p.idProfessor = d.fkProfessor
    WHERE p.sobrenome = 'Phoenix';


-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado professor, ordenado de forma crescente pela especialidade1;
SELECT p.nome, d.nomeDisc
    FROM disciplina as d
    JOIN professor as p 
    ON d.fkProfessor = p.idProfessor
    WHERE p.nome = 'Carlos';
    
-- LEFT/RIGHT JOIN
    
SELECT * FROM professor LEFT JOIN disciplina ON idProfessor = fkProfessor;
    
    



