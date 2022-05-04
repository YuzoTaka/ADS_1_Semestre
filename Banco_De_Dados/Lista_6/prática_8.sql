CREATE DATABASE prat8;

USE prat8;

CREATE TABLE cliente(
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    fkIndicacao INT,
    nome VARCHAR(45),
    email VARCHAR(50),
    rua VARCHAR(45),
    cep CHAR(9),
    FOREIGN KEY(fkIndicacao) REFERENCES cliente(idCliente)
);

CREATE TABLE venda(
	idVenda INT PRIMARY KEY AUTO_INCREMENT,
    fkCliente INT,
    valorTotal DECIMAL(10,2),
    dt DATE,
    FOREIGN KEY(fkCliente) REFERENCES cliente(idCliente)
);


CREATE TABLE produto(
	idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao VARCHAR(50),
    preco DECIMAL(10,2)
);

CREATE TABLE pedido(
	idPedido INT AUTO_INCREMENT,
    fkVenda INT,
    fkProduto INT,
    quantidade INT,
    desconto DECIMAL(10,2),
    PRIMARY KEY(idPedido, fkVenda, fkProduto),
    FOREIGN KEY(fkVenda) REFERENCES venda(idVenda),
    FOREIGN KEY(fkProduto) REFERENCES produto(idProduto)
);

INSERT INTO cliente VALUES
(null, null, 'Marcos', 'marcos@email.com', 'Rua Antônio', '123456789'),
(null, 1, 'Mario', 'mario@email.com', 'Rua Bros', '987654321'),
(null, 2, 'Mc', 'mc@email.com', 'Rua Poze', '876545678'),
(null, 3, 'Tom', 'tom@email.com', 'Rua Jerry', '21213456');

INSERT INTO produto VALUES
(null, 'Cadeira', 'Gamer RGB', '99.99'),
(null, 'Água', 'Gaseificada', '6.00'),
(null, 'Monitor', 'Ultra wide', '200.60'),
(null, 'Camiseta', 'Ben 10', '40.25');

INSERT INTO venda VALUES
(null, 1, '2022-02-11'),
(null, 2, '2022-04-26'),
(null, 3, '2022-05-01'),
(null, 4, '2022-02-28');

UPDATE venda SET valorTotal = 90 WHERE idVenda = 1;
UPDATE venda SET valorTotal = 50 WHERE idVenda = 2;
UPDATE venda SET valorTotal = 65 WHERE idVenda = 3;
UPDATE venda SET valorTotal = 200 WHERE idVenda = 4;

INSERT INTO pedido VALUES
(null, 1, 4, 3, 15),
(null, 2, 3, 6, 6),
(null, 3, 2, 1, 40),
(null, 4, 1, 5, 0);

-- Exibir todos os dados de cada tabela criada, separadamente
SELECT * FROM cliente;
SELECT * FROM venda;
SELECT * FROM produto;
SELECT * FROM pedido;

-- 	 Exibir os dados dos clientes e os dados de suas respectivas vendas
SELECT * FROM cliente JOIN venda ON idCliente = fkCliente;

-- Exibir os dados de um determinado cliente (informar o nome do cliente na consulta) e os dados de suas respectivas vendas.
SELECT * FROM cliente JOIN venda ON idCliente = fkCliente WHERE nome = 'Tom';

-- Exibir os dados dos clientes e de suas respectivas indicações de clientes
SELECT  * FROM cliente c JOIN cliente i ON c.idCliente = i.fkIndicacao;

/* Exibir os dados dos clientes indicados e os dados dos respectivos clientes
indicadores, porém somente de um determinado cliente indicador (informar o nome
do cliente que indicou na consulta).
*/
SELECT * FROM cliente c JOIN cliente i ON c.idCliente = i.fkIndicacao WHERE c.nome = 'Mario';

/*
Exibir os dados dos clientes, os dados dos respectivos clientes que indicaram, os
dados das respectivas vendas e dos produtos.
*/
SELECT * FROM cliente c 
JOIN cliente i ON c.idCliente = i.fkIndicacao 
JOIN venda ON fkCliente = c.idCliente 
JOIN pedido ON pedido.fkVenda = venda.idVenda
JOIN produto ON idProduto = fkProduto;

-- Exibir apenas a data da venda, o nome do produto e a quantidade do produto uma determinada venda.
SELECT v.dt, pro.nome, pe.quantidade FROM venda v 
JOIN pedido pe ON pe.fkVenda = v.idVenda
JOIN produto pro ON pro.idProduto = pe.fkProduto;

--  Exibir apenas o nome do produto, o valor do produto e a soma da quantidade de produtos vendidos agrupados pelo nome do produto.
SELECT pro.nome, pro.preco, SUM(quantidade) quantidade FROM produto pro JOIN pedido pe ON pro.idProduto = pe.fkProduto;

/* Inserir dados de um novo cliente. 
Exibir os dados dos clientes, das respectivas vendas, e os clientes que não realizaram nenhuma venda.
*/
INSERT INTO cliente VALUES
(null, null, 'Loid', 'loid@email.com', 'Rua Forgeer', '678543678');

SELECT * FROM cliente JOIN venda ON idCliente = fkCliente
UNION
SELECT * FROM cliente LEFT JOIN venda ON idCliente = fkCliente;

--  Exibir o valor mínimo e o valor máximo dos preços dos produtos;
SELECT MIN(preco), MAX(preco) FROM produto;

--  Exibir a soma e a média dos preços dos produtos;
SELECT SUM(preco), AVG(preco) FROM produto;

--  Exibir a quantidade de preços acima da média entre todos os produtos;
SELECT preco FROM produto WHERE preco>=(SELECT AVG(preco) FROM produto);

-- Exibir a soma dos preços distintos dos produtos
SELECT nome, SUM(preco) FROM produto GROUP BY nome;

-- Exibir a soma dos preços dos produtos agrupado por uma determinada venda
SELECT nome, SUM(preco) FROM produto WHERE nome = 'Camiseta';

-- EXIBIR O VALOR TOTAL
SELECT COUNT;


