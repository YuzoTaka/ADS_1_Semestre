CREATE DATABASE lista5;

USE lista5;

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

SELECT * FROM cliente;

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

--


DROP DATABASE lista5;
