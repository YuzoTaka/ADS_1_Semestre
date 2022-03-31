CREATE DATABASE ex1;

USE ex1;

CREATE TABLE pet (
	idPet INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(15),
    nome VARCHAR(30),
    raca VARCHAR(30),
    dtNasc DATE,
    fkCliente INT,
    FOREIGN KEY (fkCliente) REFERENCES cliente(idCliente)
    ) AUTO_INCREMENT = 101;


CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    sobrenome VARCHAR(30),
    telefonefixo CHAR(9),
    telefoneCel CHAR(10),
    endereco VARCHAR(90)
);

INSERT INTO cliente VALUES
(null, 'Joana', 'Felix', '7121-1854', '98765-1234', 'Rua Alfredeto'),
(null, 'Marcelon', 'Felix', '1234-1234', '93456-5678', 'Rua 11 de Junho'),
(null, 'Alejandra', 'Lorem', '5167-8272', '98789-4132', 'Rua Frederico Maneul');

INSERT INTO pet VALUES
(null, 'gato', 'Cookie', 'Munchkin', '2015-06-11', 1),
(null, 'cachorro', 'Bolacha', 'Corgi', '2015-11-15', 1),
(null, 'coelho', 'Perna-longa', 'Rex', '2016-09-01', 2),
(null, 'passaro', 'Frô', 'Canário', '2016-09-25', 3);


-- - Altere o tamanho da coluna nome do cliente.
ALTER TABLE cliente MODIFY nome VARCHAR(50);

-- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo: cachorro).
SELECT * FROM pet WHERE tipo = 'gato';

-- Exibir apenas os nomes e as datas de nascimento dos pets
SELECT nome, dtNasc FROM pet;

-- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
SELECT * FROM pet ORDER BY nome;

-- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.
SELECT * FROM cliente ORDER BY endereco DESC;

-- Exibir os dados dos pets cujo nome comece com uma determinada letra.
SELECT * FROM pet WHERE nome like 'F%';

--  Exibir os dados dos clientes que têm o mesmo sobrenome.
SELECT * FROM cliente WHERE sobrenome = 'Felix';

--  Alterar o telefone de um determinado cliente
UPDATE cliente SET telefonefixo = '4132-5712' WHERE idCliente = 2;

-- Exibir os dados dos clientes para verificar se alterou.
SELECT * FROM Cliente;

-- - Exibir os dados dos pets e dos seus respectivos donos.
SELECT * FROM pet JOIN cliente ON fkCliente = idCliente;

-- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente.
SELECT * FROM pet JOIN cliente on fkCliente = idCliente WHERE idCliente = 1;

-- Excluir algum pet.
DELETE FROM pet WHERE idPet = 102;

-- Exibir os dados dos pets para verificar se excluiu
SELECT * FROM pet;

--  Excluir as tabelas.
DROP TABLE pet, cliente;

