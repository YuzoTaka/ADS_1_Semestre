CREATE DATABASE sprint1;

USE sprint1;


CREATE TABLE Musica(
	idMusica CHAR  (2) primary key,
    titulo VARCHAR (40),
    artista VARCHAR (40),
    genero VARCHAR (40)
);

INSERT INTO Musica VALUES
	('1', 'Firework', 'Katy Perry', 'POP'),
    ('2', 'Kaibutsu', 'Yoasobi', 'JPOP'),
    ('3', 'We will rock you', 'Rolling Stones', 'Rock'),
    ('4', 'Homura', 'LiSA', 'JPOP'),
    ('5', 'Shake it off', 'Taylor Swift', 'POP');
    
INSERT INTO Musica VALUES
	('6', 'Love Story', 'Taylor Swift', 'POP');

--  Exibir todos os dados da tabela
SELECT * FROM Musica;

-- Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM musica WHERE genero = 'JPOP';

-- Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM musica WHERE artista = 'Taylor Swift';

-- Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM musica ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM musica ORDER BY artista DESC;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM musica WHERE titulo like 'k%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM musica WHERE artista like 'L%';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra
SELECT * FROM musica WHERE genero like '_o%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM musica WHERE titulo like '%r_';

-- Elimine a tabela.
DROP TABLE musica;

-- Elimine o banco de dados
DROP DATABASE sprint1;