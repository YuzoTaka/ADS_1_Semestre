CREATE DATABASE sprint3;

USE sprint3;

CREATE TABLE aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
)AUTO_INCREMENT = 50000;

CREATE TABLE curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nomeCurso VARCHAR(45)
)AUTO_INCREMENT = 100;

CREATE TABLE matricula(
	idMatricula INT AUTO_INCREMENT,
    fkAluno INT,
    fkCurso INT,
    PRIMARY KEY(idMatricula, fkAluno, fkCurso),
    dtInicio DATE,
    nivel CHAR(2),
    FOREIGN KEY(fkAluno) REFERENCES aluno(ra),
    FOREIGN KEY(fkCurso) REFERENCES curso(idCurso)
);

INSERT INTO aluno(nome) VALUES
('Maciel'),
('Mayla'),
('Elissandra');

INSERT INTO curso(nomeCurso) VALUES
('Inglês'),
('Espanhol'),
('Mandarim');

INSERT INTO matricula VALUES
(null, 50000, 100, '2022-05-04', 'B1'),
(null, 50000, 101, '2022-04-05', 'B3'),
(null, 50001, 100, '2022-01-20', 'A3'),
(null, 50002, 102, '2022-03-11', 'I3');


SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM matricula;

SELECT * FROM matricula JOIN aluno ON fkAluno = ra JOIN curso ON fkCurso = idCurso;

SELECT a.nome, c.nomeCurso, m.nivel FROM matricula m JOIN aluno a ON m.fkAluno = a.ra JOIN curso c ON m.fkCurso = c.idCurso;

INSERT INTO aluno VALUES
(null, 'Franklin');

SELECT * FROM aluno LEFT JOIN matricula ON ra = fkAluno LEFT JOIN curso ON fkCurso = idCurso;

INSERT INTO curso VALUES
(null, 'Francês');


SELECT * FROM aluno RIGHT JOIN matricula ON ra = fkAluno RIGHT JOIN curso ON fkCurso = idCurso
WHERE fkCurso IS null 
UNION
SELECT * FROM curso LEFT JOIN matricula ON fkCurso = idCurso LEFT JOIN aluno ON fkAluno = ra
WHERE fkCurso IS null;

SELECT CONCAT('O aluno ', a.nome, ' está matriculado no curso de ', c.nomeCurso, ' no nível ', m.nivel) AS histórinha 
FROM matricula m 
JOIN aluno a ON m.fkAluno = a.ra 
JOIN curso c ON c.idCurso = m.fkCurso
GROUP BY nome;


