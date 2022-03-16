CREATE DATABASE Sprint2;

USE Sprint2;

CREATE TABLE Musica (
	idMusica INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica(titulo, artista, genero) VALUES
('Cedo ou Tarde', 'NXZERO', 'Gospel Brasileiro'),
('Fire', 'BTS', 'KPOP'),
('MONEY', 'LISA', 'KPOP'),
('Perfect', 'Ed Sheeran', 'POP'),
('Animals', 'Maroon 5', 'POP');

CREATE TABLE Album (
	idAlbum INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    tipo VARCHAR(40),
    CONSTRAINT chkTipo CHECK (tipo in('físico', 'digital')),
    dtLancamento DATE
);

INSERT INTO Album(nome, tipo, dtLancamento) VALUES
('Sky', 'físico', '2003-06-19'),
('Nature', 'digital', '2015-11-13'),
('Ocean', 'físico', '2018-12-31');

-- Exibir todos os dados das tabelas separadamente;
SELECT * FROM Musica;
SELECT * FROM Album;

-- Atualizar os álbuns de cada música
ALTER TABLE Musica ADD COLUMN fkAlbum INT;
ALTER TABLE Musica ADD FOREIGN KEY (fkAlbum) REFERENCES Album(idAlbum);

-- Atualizar os álbuns de cada música
UPDATE Musica SET fkAlbum = 1 WHERE idMusica = 1;
UPDATE Musica SET fkAlbum = 2 WHERE idMusica = 2;
UPDATE Musica SET fkAlbum = 3 WHERE idMusica = 3;
UPDATE Musica SET fkAlbum = 2 WHERE idMusica = 4;
UPDATE Musica SET fkAlbum = 1 WHERE idMusica = 5;

-- Exibir as músicas e seus respectivos álbuns;
SELECT Musica.*, Album.nome FROM Musica JOIN Album ON Album.idAlbum = Musica.fkAlbum;

-- Exibir somente o título da música e o nome do seu respectivo álbum;
SELECT Musica.titulo, Album.nome FROM Musica JOIN Album ON Album.idALbum = fkAlbum;

-- Exibir os dados das músicas e seu respectivo álbum, de um determinado tipo.
SELECT Musica.*, Album.nome FROM Musica JOIN Album ON Album.idALbum = fkAlbum WHERE Album.nome = 'Sky';






