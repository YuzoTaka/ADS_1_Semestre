CREATE DATABASE ex2;

USE ex2;

CREATE TABLE pessoa(
	idPessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    dtNasc DATE,
    profissão VARCHAR(40)
);

CREATE TABLE gastos(
	idGasto INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    valor DECIMAL(10,2),
    descricao VARCHAR(40),
    fkPessoa INT,
    FOREIGN KEY(fkPessoa) REFERENCES pessoa(idPessoa)
);

INSERT INTO pessoa(nome, dtNasc, profissão) VALUES
('Alejandro', '2000-09-11', 'Dentista'),
('Loreno', '1999-10-14', 'Chef'),
('Matiasa', '2001-06-11', 'Pedreiro'),
('Lincoln', '1996-03-20', 'Músico');

INSERT INTO gastos(data, valor, descricao, fkPessoa) VALUES
('2022-03-27', 50.00, 'Água gourmet', 1),
('2022-02-11', 82.00, 'Caneta Gamer', 2),
('2022-03-03', 20.00, 'Notebook', 3),
('2022-01-14', 35.99, 'Ventilador', 4);

--  Exiba os dados de cada tabela individualmente
SELECT * FROM pessoa;

SELECT * FROM gastos;

-- Exiba somente os dados de cada tabela, mas filtrando por algum dado da tabela.
SELECT * FROM pessoa WHERE profissão = 'Dentista';

SELECT * FROM gastos WHERE descricao = 'Notebook';

-- Exiba os dados das pessoas e dos seus gastos correspondentes.
SELECT * FROM pessoa JOIN gastos ON fkPessoa = idPessoa;

-- Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.
SELECT * FROM pessoa JOIN gastos ON fkPessoa = idPessoa WHERE nome = 'Lincoln';

-- Atualize valores já inseridos na tabela.
UPDATE gastos SET valor = 99.99 WHERE idGasto = 1;
UPDATE gastos SET valor = 80.00 WHERE idGasto = 2;
UPDATE gastos SET valor = 25.50 WHERE idGasto = 3;
UPDATE gastos SET valor = 41.10 WHERE idGasto = 4;

-- Exclua um ou mais registros de alguma tabela.
DELETE FROM gastos WHERE idGasto = 4;

