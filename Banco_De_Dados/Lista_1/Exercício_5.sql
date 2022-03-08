CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Curso(
	idCurso CHAR(2) primary key,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(30)
);


INSERT INTO Curso VALUES
	('1', 'Análise e desenvolvimento de sistema', 'ADS', 'Gerson'),
	('2', 'Sistema de informação', 'SSI', 'Jonas'),
    ('3', 'Ciência da computação', 'CCO', 'Pedro');


-- Exibir todos os dados da tabela.
SELECT * FROM Curso;

-- Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM Curso WHERE nome = 'ADS';

-- Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM Curso WHERE nome = 'Sistema de informação';

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM Curso ORDER BY 'coordenador' DESC;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE 'G%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '_e%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra
SELECT * FROM Curso WHERE nome LIKE '%o_';

-- Elimine a tabela.
DROP TABLE Curso;

-- Elimine o banco de dados
DROP DATABASE sprint1;