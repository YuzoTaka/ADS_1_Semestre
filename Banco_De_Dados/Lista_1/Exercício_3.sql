CREATE DATABASE sprint1;

USE sprint1;


CREATE TABLE Filme(
	idFilme CHAR(2) primary key,
    título VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme VALUES
('1', 'Avatar', 'sci-fi', 'James Cameron'),
('2', 'Vingadores: Ultimato', 'Ação', 'Joe Russo'),
('3', 'Titanic', 'romance', 'James Cameron'),
('4', 'Star wars, O despertar da força', 'Sci-fi', 'J.J. Abrams'),
('5', 'O Rei Leão', 'Animação', 'Roger Allers'),
('6', 'Os Vingadores', 'Aventura', 'Joss Whedon'),
('7', 'O exorcista', 'Terror', 'William Friedkin');

UPDATE Filme SET genero = 'Sci-fi' WHERE idFilme = '1';

-- Exibir todos os dados da tabela.
SELECT * FROM Filme;

-- Exibir apenas os títulos e os diretores dos filmes
SELECT título, diretor FROM Filme;

-- Exibir apenas os dados dos filmes de um determinado gênero
SELECT * FROM Filme WHERE genero = 'Sci-fi';

-- Exibir apenas os dados dos filmes de um determinado diretor
SELECT * FROM Filme WHERE diretor = 'James Cameron';

-- Exibir os dados da tabela ordenados pelo título do filme
SELECT * FROM Filme ORDER BY título;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente
SELECT * FROM Filme ORDER BY diretor DESC;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM Filme WHERE título like 'o%';

-- Exibir os dados da tabela, dos filmes cujo artista termine com uma determinada letra.

SELECT * FROM Filme WHERE diretor like '%o';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM Filme WHERE genero like '_e%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM Filme WHERE título like '%e_';

-- Elimine a tabela.
DROP TABLE Filme;

-- Elimine o banco de dados
DROP DATABASE sprint1;