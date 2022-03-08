CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Musica(
	idMusica INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(40),
	artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica VALUES
(null, 'Animals', 'Maroon Five', 'POP'),
(null, 'Sugar', 'Marron Five', 'POP'),
(null, 'Butter', 'BTS', 'KPOP'),
(null, 'Big Bang', 'BANG BANG BANG', 'KPOP'),
(null, 'Homura', 'LiSA', 'JPOP'),
(null, 'Akuma no Ko', 'Higuchi Ai', 'JPOP'),
(null, 'Ligação', 'NXZERO', 'Gospel');


-- Exibir todos os dados da tabela
SELECT * FROM Musica;

-- Adicionar o campo curtidas do tipo int na tabela
ALTER TABLE Musica ADD COLUMN curtidas INT;

-- Atualizar o campo curtidas de todas as músicas inseridas
UPDATE Musica SET curtidas = 400 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 350 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 600 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 550 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 700 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 640 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 900 WHERE idMusica = 7;

-- Modificar o campo artista do tamanho 40 para o tamanho 80
ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80);

-- Atualizar a quantidade de curtidas da música com id=1
UPDATE Musica SET curtidas = 450 WHERE idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE Musica SET curtidas = 500 WHERE idMusica in (2, 3);
-- OU
UPDATE Musica SET curtidas = 500 WHERE idMusica = 2 or idMusica = 3;

-- Atualizar o nome da música com o id=5
UPDATE Musica SET titulo = 'Unlasting' WHERE idMusica = 5;

-- Excluir a música com o id=4
DELETE FROM Musica WHERE idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk
SELECT * FROM Musica WHERE genero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20
SELECT * FROM Musica WHERE curtidas >=20;

-- Descrever os campos da tabela mostrando a atualização do campo artista
DESC Musica;

-- Limpar os dados da tabela;
TRUNCATE Musica;

-- Excluir database
DROP DATABASE sprint1;