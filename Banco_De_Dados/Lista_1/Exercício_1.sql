CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Atleta (
idAtleta CHAR(2) primary key,
	nome VARCHAR(40),
	modalidade VARCHAR(40),
	qtdMedalha CHAR(2)
	);

INSERT INTO Atleta VALUES
	('1', 'Donald', 'Atletismo', '7');

INSERT INTO Atleta VALUES
	('2', 'Douglas', 'Volei', '4'),
    ('3', 'Miguel', 'Esgrima', '3'),
    ('4', 'Pedro', 'Tiro', '3'),
    ('5', 'Rafael', 'Tiro', '0');

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM Atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM Atleta WHERE modalidade = 'tiro';

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM Atleta ORDER BY modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente
SELECT * FROM Atleta ORDER BY qtdMedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM Atleta WHERE nome LIKE '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra
SELECT * FROM Atleta WHERE nome LIKE 'd%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o
SELECT * FROM Atleta WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r
SELECT * FROM Atleta WHERE nome LIKE '%r_';

-- Eliminar a tabela
DROP TABLE Atleta;

-- Eliminar banco de dados
DROP DATABASE sprint1;