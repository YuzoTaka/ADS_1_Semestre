CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Atleta (
	idAtleta INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    modalidade varchar(40),
    qtdMedalha INT
);

INSERT INTO Atleta (nome, modalidade, qtdMedalha) VALUES 
	('Fernando', 'Volei', 4),
    ('Amanda', 'Skate', 6),
    ('Carlos', 'Natação', 2),
    ('Fernanda', 'Futebol', 5),
    ('Mariana', 'Tenis', 4);

DESC Atleta;

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- • Atualizar a quantidade de medalhas do atleta com id=1
UPDATE Atleta SET qtdMedalha = 3 WHERE idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3
UPDATE Atleta SET qtdMedalha = 5 WHERE idAtleta = 2 OR idAtleta = 3;

-- Atualizar o nome do atleta com o id=4
UPDATE Atleta SET nome = 'Rafael' WHERE idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date
ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

-- Atualizar a data de nascimento de todos os atletas
UPDATE Atleta SET dtNasc = '1995-06-11' WHERE idAtleta = 1;
UPDATE Atleta SET dtNasc = '1993-01-01' WHERE idAtleta = 2;
UPDATE Atleta SET dtNasc = '1984-04-16' WHERE idAtleta = 3;
UPDATE Atleta SET dtNasc = '1980-12-11' WHERE idAtleta = 4;
UPDATE Atleta SET dtNasc = '1971-01-13' WHERE idAtleta = 5;

-- Excluir o atleta com o id=5
DELETE FROM Atleta WHERE idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação
SELECT * FROM Atleta WHERE modalidade <> 'Natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60
ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade
DESC Atleta;

-- Limpar os dados da tabela
TRUNCATE TABLE Atleta;


CREATE TABLE Musica(
	idMusica CHAR(2) PRIMARY KEY,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica VALUES
(1, 'Shape of You', 'Ed Sheeran', 'POP'),
(2, 'Cedo ou tarde', 'NXZero', 'Gospel'),
(3, 'Homura', 'LiSA', 'JPOP'),
(4, 'Butter', 'BTS', 'KPOP'),
(5, 'Sugar', 'Marrom 5', 'POP'),
(6, 'Stay', 'Justin Bieber', 'POP'),
(7, 'Não temos tempo', 'Nossa toca','POP');

-- Exibir todos os dados da tabela.
SELECT * FROM Musica;

-- Adicionar o campo curtidas do tipo int na tabela
ALTER TABLE Musica ADD COLUMN curtidas INT;

-- Atualizar o campo curtidas de todas as músicas inseridas
UPDATE Musica SET curtidas = 500 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 500 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 700 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 800 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 900 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 600 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 800 WHERE idMusica = 7;

-- Modificar o campo artista do tamanho 40 para o tamanho 80
ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80);

-- Atualizar a quantidade de curtidas da música com id=1
UPDATE Musica SET curtidas = 400 WHERE idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3
UPDATE Musica SET curtidas = 550 WHERE idMusica in (2, 3);

-- Atualizar o nome da música com o id=5
UPDATE Musica SET titulo = 'PayPhone' WHERE idMusica = 5;

-- Excluir a música com o id=4
DELETE FROM Musica WHERE idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk
SELECT * FROM Musica WHERE genero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20
SELECT * FROM Musica WHERE curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista
DESC Musica;

-- Limpar os dados da tabela
TRUNCATE Musica;


CREATE TABLE Filme (
	idFilme CHAR(2) PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);


INSERT INTO Filme VALUES
(1, 'SpiderMan No way home', '	Ação', 'Jon Watts'),
(2, 'Gasoline Alley', 'Suspense', 'Edward Drake'),
(3, 'Pânico', 'Terror', 'Tyler Gillett'),
(4,'The in between', 'Romance', 'Arie Posin'),
(5,'The wolf and the Lion', 'Drama', 'Gilles de Maistre'),
(6, 'O massacre da serra elétrica', 'Terror', 'David Blue Garcia'),
(7, 'Peter`s To Do List', 'Ação', 'Jon Watts');

-- Exibir todos os dados da tabela
SELECT * FROM Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela
ALTER TABLE Filme ADD protagonista VARCHAR(50);

-- Atualizar o campo protagonista de todas os filmes inseridos
UPDATE Filme SET protagonista = 'Spider man' WHERE idFilme = 1;
UPDATE Filme SET protagonista = 'Bruce Willis' WHERE idFilme = 2;
UPDATE Filme SET protagonista = 'Neve Campbell' WHERE idFilme = 3;
UPDATE Filme SET protagonista = 'Joey King' WHERE idFilme = 4;
UPDATE Filme SET protagonista = 'Graham Greene' WHERE idFilme = 5;
UPDATE Filme SET protagonista = 'Sarah Yarkin' WHERE idFilme = 6;
UPDATE Filme SET protagonista = 'Spider man' WHERE idFilme = 7;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150
ALTER TABLE Filme MODIFY COLUMN diretor VARCHAR(150);

-- Atualizar o diretor do filme com id=5
UPDATE Filme SET diretor = 'Steven Spielberg' WHERE idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7
UPDATE Filme SET diretor = 'Stanley Kubrick' WHERE idFilme in (2, 7);

-- Atualizar o título do filme com o id=6
UPDATE Filme SET titulo = 'Tejano' WHERE idFilme = 6;

-- Excluir o filme com o id=3
DELETE FROM Filme WHERE idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama
SELECT * FROM Filme WHERE genero <> 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense
SELECT * FROM Filme WHERE genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESC Filme;

-- Limpar os dados da tabela
TRUNCATE Filme;


CREATE TABLE Professor (
	idProfessor CHAR(2) PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor VALUES
	(1, 'Gabriel', 'Banco de Dados', '1980-10-15'),
    (2, 'Ricardo', 'TI', '1960-06-11'),
    (3, 'Roberta', 'Arq Comp', '1999-05-08'),
    (4, 'Bruna', 'Banco de Dados', '1991-04-14'),
    (5, 'Edson', 'PI', '1993-12-31');

-- Exibir todos os dados da tabela
SELECT * FROM Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’
ALTER TABLE Professor ADD Função VARCHAR(50);
ALTER TABLE Professor ADD CHECK (função = 'monitor' or função = 'assistente' or função = 'títular');

-- Atualizar os professores inseridos e suas respectivas funções
UPDATE Professor SET função = 'monitor' WHERE idProfessor = 1;
UPDATE Professor SET função = 'assistente' WHERE idProfessor = 2;
UPDATE Professor SET função = 'monitor' WHERE idProfessor = 3;
UPDATE Professor SET função = 'assistente' WHERE idProfessor = 4;
UPDATE Professor SET função = 'títular' WHERE idProfessor = 5;

-- Inserir um novo professor
INSERT INTO Professor VALUES
(6, 'Claudio', 'TI', '1990-02-16', 'títular');

-- Excluir o professor onde o idProfessor é igual a 5
DELETE FROM Professor WHERE idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares
SELECT nome FROM Professor WHERE função LIKE 'títular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores
SELECT especialidade, dtNasc FROM Professor WHERE função LIKE 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3
UPDATE Professor SET dtNasc = '2002-06-11' WHERE idProfessor = 3;

-- Limpar a tabela Professor
TRUNCATE Professor;


CREATE TABLE Curso (
	idCurso CHAR(2) PRIMARY KEY,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(50)
);

INSERT INTO Curso VALUES
(1, 'Analise e Desenvolvimento de Sistema', 'ADS', 'Gerson'),
(2, 'Sistema de Informaçao', 'SSI', 'Fernando'),
(3, 'Ciencias da Computaçao', 'CCO', 'Claudia');


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

