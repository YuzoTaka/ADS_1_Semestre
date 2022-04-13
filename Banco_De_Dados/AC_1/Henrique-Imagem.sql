-- Crie um banco de dados chamado Continuada1. 
CREATE DATABASE Continuada1;

-- Selecione o banco de dados Continuada1. 
USE Continuada1;

-- Exercício 1
/* Criar a tabela chamada Imagem para conter os dados: 
idImagem,
titulo (tamanho 100),
tamanho (tipo double, ex: 272.45),
dtImagem (onde irá guardar a data que a imagem foi tirada, do tipo DATE),
resolucao (onde irá guardar a resolução da imagem, exemplo: 1080x1920).

Sendo idImagem um valor numérico do tipo inteiro e chave primária da tabela.
*/
 
CREATE TABLE Imagem (
	idImagem INT PRIMARY KEY,
	titulo VARCHAR(100),
    tamanho DOUBLE(5,2),
    dtImagem DATE,
    resolucao VARCHAR(10)
);

-- Exercício 2

-- Inserir pelo menos 5 imagens
INSERT INTO Imagem VALUES
(1, 'Palhaço', '262.5', '1998-05-14', '720x1080'),
(2, 'Gato', '155.2', '1971-01-14', '840x1120'),
(3, 'Flores', '130.8', '1980-03-20', '1920x1080'),
(4, 'Familia', '120.42', '2000-08-31', '500x600'),
(5, 'Lazer', '272.43', '1994-12-31', '820x600');


-- Exercício 3

-- Adicionar o campo localizacao (tamanho 120) na tabela, onde irá guardar aonde a foto foi tirada.
ALTER TABLE Imagem ADD COLUMN localizacao VARCHAR(120);

-- Atualizar todas as localizações das imagens inseridas na questão 2.
UPDATE Imagem SET localizacao = 'São Paulo' WHERE idImagem = 1;
UPDATE Imagem SET localizacao = 'Londres' WHERE idImagem = 2;
UPDATE Imagem SET localizacao = 'Holanda' WHERE idImagem = 3;
UPDATE Imagem SET localizacao = 'Orlando' WHERE idImagem = 4;
UPDATE Imagem SET localizacao = 'Rio de Janeiro' WHERE idImagem = 5;


-- Exercício 4

-- a) Exibir todos os dados da tabela. 
SELECT * FROM Imagem;

-- b) Exibir apenas os titulos e os tamanhos das imagens. 
SELECT titulo, tamanho FROM Imagem;

-- c) Exibir apenas os dados das imagens de uma determinada localização. 
SELECT * FROM Imagem WHERE localizacao = 'São Paulo';

-- d) Exibir apenas os dados das imagens de uma determinada resolução. 
SELECT * FROM Imagem WHERE resolucao = '1920x1080';

-- e) Exibir os dados da tabela ordenados pela data em ordem crescente. 
SELECT * FROM Imagem ORDER BY dtImagem;

-- f) Exibir os dados da tabela ordenados pelo titulo em ordem decrescente. 
SELECT * FROM Imagem ORDER BY titulo DESC;

-- g) Exibir os dados da tabela, das imagens cujo titulo comece com uma determinada letra. 
SELECT * FROM Imagem WHERE titulo LIKE 'F%';

-- h) Exibir os dados da tabela, das imagens cujo tamanho termine com um determinado número.
SELECT * FROM Imagem WHERE tamanho LIKE '%2';

-- i) Exibir os dados da tabela, das imagens cujo titulo tenha como segunda letra uma determinada letra.
SELECT * FROM Imagem WHERE titulo LIKE '_a%';

-- j) Exibir os dados da tabela, das imagens cujo resolução tenha como penúltimo numero um determinado numero. 
SELECT * FROM Imagem WHERE resolucao like '%8_';

-- k) Atualize o tamanho de uma imagem. Exiba novamente os dados da tabela após a atualização
UPDATE Imagem SET tamanho = '140.21' WHERE idImagem = 3;
SELECT * FROM Imagem;

-- l) Exclua alguma imagem. Exiba novamente os dados da tabela após a exclusão. 
DELETE FROM Imagem WHERE idImagem = 5;
SELECT * FROM Imagem;


-- Exercício 5

-- O campo titulo está muito pequeno (tamanho 100), é necessário aumentar o tamanho do campo para 250.
ALTER TABLE Imagem MODIFY COLUMN titulo VARCHAR(250);

-- Efetue o comando para excluir o banco de dados do MySQL Server
DROP DATABASE Continuada1;
