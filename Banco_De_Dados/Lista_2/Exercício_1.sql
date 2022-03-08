CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Atleta (
	idAtleta INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

INSERT INTO Atleta VALUES
(null, 'Bianca', 'Futebol', 4),
(null, 'Marcos', 'Natação', 2),
(null, 'Rafaela', 'Volei', 5),
(null, 'Pedro', 'Basquete', 4),
(null, 'Marcela', 'Atletismo', 3);

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE Atleta SET qtdMedalha = 3 WHERE idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3
UPDATE Atleta SET qtdMedalha = 4 WHERE idAtleta in (2,3);

-- Atualizar o nome do atleta com o id=4;
UPDATE Atleta SET nome = 'Bernardo' WHERE idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date
ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

-- Atualizar a data de nascimento de todos os atletas
UPDATE Atleta SET dtNasc = '2002-06-11' WHERE idAtleta = 1;
UPDATE Atleta SET dtNasc = '1999-03-16' WHERE idAtleta = 2;
UPDATE Atleta SET dtNasc = '1995-12-01' WHERE idAtleta = 3;
UPDATE Atleta SET dtNasc = '2000-09-21' WHERE idAtleta = 4;
UPDATE Atleta SET dtNasc = '1998-03-19' WHERE idAtleta = 5;

-- Excluir o atleta com o id=5
DELETE FROM Atleta WHERE idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação
SELECT * FROM Atleta WHERE modalidade <> 'Natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3
SELECT * FROM Atleta WHERE qtdMedalha >=3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60
ALTER TABLE Atleta MODIFY modalidade VARCHAR(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
DESC Atleta;

-- Limpar os dados da tabela;
TRUNCATE Atleta;

-- Deletar banco de dados;
DROP DATABASE sprint1;







