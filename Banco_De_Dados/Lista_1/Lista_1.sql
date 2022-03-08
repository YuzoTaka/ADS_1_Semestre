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




CREATE TABLE Professor (
	idProfessor CHAR(1) primary key,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor VALUES
 ('1', 'Vivian', 'Banco de Dados', '2003-02-17'),
 ('2', 'Frizza', 'Algoritmo', '2003-03-22'),
 ('3', 'Thiago', 'TI', '2003-04-10'),
 ('4', 'Kaline', 'Socio', '2003-05-08'),
 ('5', 'Thiago', 'Socio', '2003-06-25'),
 ('6', 'Eduardo', 'ArqComp', '2003-07-30');


-- Exibir todos os dados da tabela.
SELECT * FROM Professor;

-- Exibir apenas as especialidades dos professores.
SELECT especialidade FROM Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM Professor WHERE especialidade = 'Socio';

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM Professor ORDER BY dtNasc DESC;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE 'v%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra
SELECT * FROM Professor WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE '_a%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE '%z_';

-- Elimine a tabela.
DROP TABLE Professor;




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



CREATE TABLE Revista(
	idRevista INT(1) primary key auto_increment,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO Revista VALUES
(null, 'Vogue', null),
(null, 'Veja', null),
(null, 'Nature', null),
(null, 'Science', null);

-- Exibir todos os dados da tabela
SELECT * FROM Revista;

UPDATE Revista SET categoria = 'Moda' WHERE idRevista = 1;
UPDATE Revista SET categoria = 'Notícia' WHERE idRevista = 2;
UPDATE Revista SET categoria = 'Ciência' WHERE idRevista = 3;
UPDATE Revista SET categoria = 'Ciência' WHERE idRevista = 4;

INSERT INTO Revista VALUES
(null, 'PlayReplay', 'Jogos'),
(null, 'Money', 'Investimento'),
(null, 'Sports', 'Esporte');

-- Exibir todos os dados da tabela
SELECT * FROM Revista;

-- Exibir a descrição da estrutura da tabela
DESC Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE Revista
CHANGE categoria categoria VARCHAR (40);

-- Exibir novamente a descrição da estrutura da tabela
DESC Revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE Revista
ADD Periodicidade VARCHAR(15);

--  Exibir os dados da tabela
SELECT * FROM Revista;

-- Excluir a coluna periodicidade da tabela
ALTER TABLE Revista
DROP periodicidade;


-- EXCLUIR O BANCO DE DADOS SPRINT1*
DROP DATABASE sprint1;













