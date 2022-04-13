CREATE DATABASE Continuada2;

USE Continuada2;

-- Questão 2 - (2 pontos)
CREATE TABLE hotel(
	idHotel INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    fkMatriz INT,
    FOREIGN KEY(fkMatriz) REFERENCES hotel(idHotel)
);

CREATE TABLE quarto(
	idQuarto INT AUTO_INCREMENT,
    fkHotel INT,
    PRIMARY KEY(idQuarto, fKhotel),
    nome VARCHAR(45),
    andar VARCHAR(45),
    tipo VARCHAR(45),
    FOREIGN KEY(fkHotel) REFERENCES hotel(idHotel)
);

ALTER TABLE quarto ADD CHECK (tipo in('Casal', 'Solteiro'));

-- Questão 3 - (1 ponto)
-- Inserir pelo menos 5 hotéis e 5 quartos;
INSERT INTO hotel(nome, endereco) VALUES
('SpTech', 'Rua Haddock Lobo'),
('StarWars', 'Rua Jedai'),
('Marvel', 'Rua Spider Man'),
('DC', 'Rua BatMan'),
('Jump', 'Rua One Piece');

INSERT INTO quarto(fkHotel, nome, andar, tipo) VALUES
(3, 'Stan Lee', '3B', 'Solteiro'),
(2, 'Yoda', '2A', 'Casal'),
(4, 'Aqua Man', '1A', 'Solteiro'),
(1, 'ADS', '5B', 'Solteiro'),
(5, 'Naruto', '4A', 'Casal');

UPDATE hotel SET fkMatriz = 4 WHERE idHotel = 1;
UPDATE hotel SET fkMatriz = 5 WHERE idHotel = 2;
UPDATE hotel SET fkMatriz = 2 WHERE idHotel = 3;
UPDATE hotel SET fkMatriz = 3 WHERE idHotel = 4;
UPDATE hotel SET fkMatriz = 1 WHERE idHotel = 5;

-- Questão 4 - (3 pontos)
-- a) Exibir todos os dados das tabelas separadamente. 
SELECT * FROM hotel;
SELECT * FROM quarto;

-- b) Exibir os dados dos hotéis e seus respectivos quartos.
SELECT * FROM hotel JOIN quarto ON idHotel = fkHotel;

--  c) Exibir apenas o nome do hotel e o nome dos respectivos quartos do tipo 'solteiro';
SELECT hotel.nome, quarto.nome FROM hotel JOIN quarto ON idHotel = fkHotel WHERE quarto.tipo = 'Solteiro';

-- d) Exibir os dados dos hotéis e sua respectiva matriz.
SELECT * FROM hotel AS hotel JOIN hotel AS matriz ON hotel.idHotel = matriz.fkMatriz;

-- e) Exibir apenas o nome e o andar de um determinado quarto que contém uma determinado caracter;
SELECT nome, andar FROM quarto WHERE nome LIKE 'S%';

-- f) Atualize o tipo de algum quarto. Exiba novamente os dados da tabela após a atualização. 
UPDATE quarto SET tipo = 'Casal' WHERE idQuarto = 3;
SELECT * FROM quarto;

-- g) Exclua algum quarto da tabela. Exiba novamente os dados da tabela após a exclusão. 
DELETE FROM quarto WHERE idQuarto = 5;
SELECT * FROM quarto;

-- Questão 5
-- Exibir os dados dos hotéis, sua respectiva matriz e quartos. Pode escolher os campos e apelidá-los caso seja necessário. 
SELECT hotel.nome AS Nome_Hotel, matriz.nome AS Nome_Matriz, quarto.nome AS Nome_Quarto, quarto.andar AS Andar FROM hotel AS hotel 
JOIN hotel AS matriz ON hotel.idHotel = matriz.fkMatriz
JOIN quarto AS quarto ON hotel.idHotel = quarto.fkHotel;

-- Efetue o comando para excluir o banco de dados do MySQL Server (Schema). 
DROP DATABASE Continuada2;




