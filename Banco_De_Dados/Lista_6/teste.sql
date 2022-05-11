CREATE DATABASE pratCorre8;

USE pratCorre8;

CREATE TABLE cliente(
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    rua VARCHAR(45),
    numero INT,
    fkIndicador INT,
    FOREIGN KEY(fkIndicador) REFERENCES cliente(idCliente)
);

CREATE TABLE produto(
	idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    preco DOUBLE
);

CREATE TABLE venda(
	idVenda INT AUTO_INCREMENT,
    fkCliente INT,
    PRIMARY KEY(idVenda, fkCliente),
    totalVenda DOUBLE,
    dtVenda DATE,
    FOREIGN KEY(fkCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE carrinho(
	fkCliente INT,
    fkProduto INT,
    fkVenda INT,
    FOREIGN KEY(fkCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY(fkProduto) REFERENCES produto(idProduto),
    FOREIGN KEY(fkVenda) REFERENCES venda(idVenda),
    PRIMARY KEY(fkCliente, fkProduto, fkVenda),
    desconto DOUBLE,
    qntdProduto INT
);

INSERT INTO cliente VALUES
(null, 'Rafael', 'rafa@email.com', 'Rua Oliveira', 123, null),
(null, 'Matheus', 'matheus@email.com', 'Rua Rosa', 234, null),
(null, 'Alejandro', 'alejandro@email.com', 'Rua Quispe', 345, null),
(null, 'Yuzo', 'yuzo@email.com', 'Rua Takahashi', 456, null);

UPDATE cliente SET fkIndicador = 1 WHERE idCliente = 2;
UPDATE cliente SET fkIndicador = 3  WHERE idCliente = 4;

INSERT INTO produto VALUES
(null, 'Caneta', 'Azul', '2.50'),
(null, 'Estojo', 'Ben 10', '15.00'),
(null, 'Tesoura', 'Sem ponta', '7.00'),
(null, 'Borracha', 'Multi-color', '4.00'),
(null, 'Lápis', 'HB', '3.00');

INSERT INTO venda VALUES
(null, 1, 6, '2022-05-10'),
(null, 2, 7, '2022-05-03'),
(null, 3, 15, '2022-05-04'),
(null, 4, 5, '2022-05-11');

INSERT INTO venda VALUES
(null, 1, 15, '2022-04-16'),
(null, 2, 6, '2022-04-16'),
(null, 3, 5, '2022-04-16');

INSERT INTO carrinho VALUES
(1, 5, 1, '2.00', 2 ),
(2, 2, 2, '0.50', 1 ),
(3, 1, 4, '1.00', 2 ),
(4, 3, 3, '2.50', 1 );

SELECT * FROM cliente;
SELECT * FROM produto;
SELECT * FROM venda;
SELECT * FROM carrinho;

SELECT c.nome nomeCliente, c.email, v.totalVenda, v.dtVenda 
FROM cliente c JOIN venda v ON c.idCliente = v.fkCliente;

SELECT c.nome nome, c.email, v.totalVenda , v.dtVenda
FROM cliente c JOIN venda v ON c.idCliente = v.fkCliente
WHERE c.nome = 'Rafael';

SELECT i.nome indicador, i.email, c.nome indicado, c.email FROM cliente i JOIN cliente c ON i.idCliente = c.fkIndicador; 

SELECT i.nome indicador, i.email, c.nome indicado, c.email FROM cliente i JOIN cliente c ON i.idCliente = c.fkIndicador WHERE i.nome = 'Alejandro';

SELECT i.nome indicador, i.email, c.nome indicado, c.email, v.totalVenda, p.nome, ca.qntdProduto 
FROM cliente i JOIN cliente c ON i.idCliente = c.fkIndicador
JOIN venda v ON v.fkCliente = i.idCliente
JOIN carrinho ca ON ca.fkCliente = i.idCliente
JOIN produto p ON p.idProduto = ca.fkProduto;

-- DIFERENTE DISTINCT (NÃO PEGA OS REPETIDOS)
SELECT DISTINCT totalVenda FROM venda;
SELECT SUM(DISTINCT totalVenda) FROM venda;
SELECT SUM(totalVenda) FROM venda;

-- GROUP BY
SELECT nome, SUM(totalVenda) Total FROM cliente JOIN venda ON idCliente = fkCliente WHERE nome = 'Rafael' GROUP BY nome;

-- SUBQUERY
SELECT ROUND(AVG(totalVenda), 2) FROM venda;
SELECT nome, AVG(totalVenda) FROM cliente JOIN venda ON idCliente = fkCliente WHERE totalVenda <=(SELECT ROUND(AVG(totalVenda)) FROM venda) GROUP BY nome;

SELECT ROUND(AVG(totalVenda) ,2) FROM venda;
SELECT totalVenda FROM venda;

-- 

DESC cliente;
DESC produto;
DESC venda;
DESC carrinho;
