CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Filme(
	idFilme INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme VALUES
(null, 'SpiderMan No way home', '	Ação', 'Jon Watts'),
(null, 'Gasoline Alley', 'Suspense', 'Edward Drake'),
(null, 'Pânico', 'Terror', 'Tyler Gillett'),
(null,'The in between', 'Romance', 'Arie Posin'),
(null,'The wolf and the Lion', 'Drama', 'Gilles de Maistre'),
(null, 'O massacre da serra elétrica', 'Terror', 'David Blue Garcia'),
(null, 'Peter`s To Do List', 'Ação', 'Jon Watts');

-- Exibir todos os dados da tabela.
SELECT * FROM Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela
ALTER TABLE Filme ADD COLUMN protagonista VARCHAR(50);

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
UPDATE Filme SET diretor = 'Stanley Kubrick' WHERE idFilme in (2, 3);
-- OU
UPDATE Filme SET diretor = 'Stanley Kubrick' WHERE idFilme = 2 or idFilme = 3;

-- Atualizar o título do filme com o id=6
UPDATE Filme SET titulo = 'Tejano' WHERE idFilme = 6;

-- Excluir o filme com o id=3;
DELETE FROM Filme WHERE idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama
SELECT * FROM Filme WHERE genero <> 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’
SELECT * FROM Filme WHERE genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor
DESC Filme;

-- Limpar os dados da tabela
TRUNCATE Filme;

-- Excluir database
DROP DATABASE sprint1;