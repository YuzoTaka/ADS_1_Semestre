-- CRIAR O BANCO DE DADOS
CREATE DATABASE faculdade;

-- USAR O BANCO DE DADOS
USE faculdade;

-- CRIAR A TABELA ALUNO
CREATE TABLE Aluno (
-- REGRA DE NEGÓCIO, 
-- NORMALMENTE A CHAVE PRIMÁRIO É DO TIPO INT(INTEIRO)
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(100),
bairro VARCHAR(50),
email VARCHAR(60)
);

-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR DADOS NA TABELA ALUNO
INSERT INTO Aluno VALUES 
	('01221031', 'Maciel', 'Pirituba', 'maciel@sptech.school');
    
-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR VÁRIOS ALUNOS NO MESMO COMANDO
INSERT INTO Aluno VALUES 
	('01221141', 'Matheus', 'Paraíso', 'matheus@sptech.school'),
    ('01221116', 'Yuri', 'Vila Alpina', 'yuri@sptech.school'),
    ('01221117', 'Nildo', 'Consolação', 'nildo@sptech.school');
    
-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- EXIBIR OS DADOS DOS ALUNOS EM ORDEM CRESCENTE, PELO NOME
SELECT * FROM Aluno ORDER BY nome;

-- EXIBIR OS DADOS COM OS CAMPOS ALTERNADOS
SELECT ra, nome, bairro, email FROM Aluno;
SELECT ra, nome, email, bairro FROM Aluno;

-- EXIBIR O BAIRRO DOS ALUNOS ORDENADOS PELO NOME
SELECT bairro FROM Aluno ORDER BY nome;

-- ORDEM DECRESCENTE
SELECT * FROM Aluno ORDER BY nome DESC;
SELECT * FROM Aluno ORDER BY ra DESC;

-- EXIBIR APENAS OS DADOS DO ALUNO Matheus
SELECT * FROM Aluno WHERE nome = 'Matheus';
SELECT * FROM Aluno WHERE ra = '01221141';
SELECT * FROM Aluno WHERE bairro = 'Paraíso';
SELECT * FROM Aluno WHERE email = 'matheus@sptech.school';

-- EXIBIR OS NOMES QUE TERMINAM COM s
SELECT nome FROM Aluno WHERE nome LIKE '%s';
SELECT nome FROM Aluno WHERE nome LIKE 'Y%';
SELECT nome FROM Aluno WHERE nome LIKE '%u%';
SELECT nome FROM Aluno WHERE nome LIKE '_u%';
SELECT nome FROM Aluno WHERE nome LIKE '%l_';

INSERT INTO Aluno VALUES ('01221999', 'Samuel', null, null);

-- ATUALIZAR O BAIRRO DO SAMUEL
UPDATE Aluno SET bairro = 'Centro' WHERE ra = '01221999';
SELECT * FROM Aluno;
update Aluno set email = 'samuel@sptech.school' where
 ra = '01221999';
 
-- EXCLUIR O ALUNO NILDÃO
DELETE FROM Aluno WHERE ra = '01221117'; 

-- EXCLUIR A TABELA ALUNO
-- DROP TABLE Aluno;

-- Aula 03 - Mais comandos SQL

/* Revisão Aula Passada 
CREATE DATABASE
USE
CREATE TABLE
INSERT INTO
SELECT
SELECT COM WHERE
SELECT COM WHERE E LIKE
SELECT COM ORDER BY
UPDATE Aluno SET campoAtualizado = ???? WHERE ID = ?????;
DELETE FROM nomedaTabela WHERE ID = ???;
DROP TABLE
DESC nomeTabela; descreve os campos da tabela
*/

-- DESCREVE OS CAMPOS/ESTRUTURA DA TABELA
DESC Aluno;
DESCRIBE Aluno;

SELECT * FROM Aluno ORDER BY nome;

-- ALTER TABLE
-- ATUALIZA/MODIFICA A ESTRUTURA DA TABELA

-- INT 10 DÍGITOS 1234567890
CREATE TABLE Empresa (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(100),
responsavel VARCHAR(80)
);

-- Descreve os campos/estrutura da tabela Empresa
DESC Empresa;

-- Insere valores na tabela Empresa
-- INSERT INTO nomeTabela VALUES (campo1,campo2,campo3...);
INSERT INTO Empresa VALUES (null, 'C6 Bank', 'Paulo');

SELECT * FROM Empresa;

-- Inserir dados na tabela Empresa, informando os campos
INSERT INTO Empresa (nome, responsavel) VALUES 
	('Safra', 'Franklin');

-- ALTER TABLE RENAME COLUMN
-- Renomear o campo
ALTER TABLE Empresa RENAME COLUMN nome TO nomeEmpresa;

DESC Empresa;
SELECT * FROM Empresa;
-- ALTER TABLE ADD COLUMN
-- INTEIRO = INT 10 DÍGITOS
-- FLOAT = FLOAT 7 DÍGITOS 32 BITS
-- DOUBLE = DOUBLE 15 DÍGITOS 64 BITS
-- DECIMAL = DECIMAL(10,2) 28 DÍGITOS 128 BITS 
-- EXEMPLO DECIMAL 12345678,90
-- EXEMPLO DECIMAL(5,3) 12,345

ALTER TABLE Empresa ADD COLUMN salario DECIMAL(10,2);

DESC Empresa; 
SELECT * FROM Empresa;

-- ATUALIZAR OS SALÁRIOS DOS RESPONSÁVEIS
UPDATE Empresa SET salario = 1.50 WHERE id = 1;
UPDATE Empresa SET salario = 150 WHERE id = 2;

-- ATUALIZAR VÁRIOS REGISTROS COM APENAS UM COMANDO
-- UTILIZANDO O OR
UPDATE Empresa SET salario = 2.99 
	WHERE id = 2 OR id = 1;
-- UTILIZANDO O IN
UPDATE Empresa SET salario = 5.99 WHERE id in (1,2);

-- EXEMPLO DE OR E AND
SELECT * FROM Aluno;
INSERT INTO Aluno VALUES 
	('01221999', 'Vivian', 'Centro', null),
    ('01221888', 'Vivian', 'Paraíso', null);

SELECT * FROM Aluno WHERE nome = 'Vivian';
SELECT * FROM Aluno WHERE nome = 'Vivian' AND bairro = 'Centro';

-- add column
-- rename column
-- drop column
ALTER TABLE Empresa DROP COLUMN salario;
desc Empresa;
select * from Empresa;

-- modify column
ALTER TABLE Empresa MODIFY COLUMN nomeEmpresa VARCHAR(75);

-- TRUNCATE TABLE
-- LIMPA OS REGISTROS E CONFIGURAÇÕES DA TABELA

SELECT * FROM Empresa;
DELETE FROM Empresa WHERE id = 1 or id = 2;

INSERT INTO Empresa (nomeEmpresa) VALUES ('BandTec International');
    
TRUNCATE TABLE Empresa;

INSERT INTO Empresa VALUES 
	(null, 'C6 Bank', null),
    (null, 'Safra', null);
    
SELECT * FROM Empresa;

DELETE FROM Empresa WHERE id = 2;

INSERT INTO Empresa (nomeEmpresa) VALUES ('Accenture');
INSERT INTO Empresa (id, nomeEmpresa) VALUES (2, 'Deloitte');

ALTER TABLE Empresa ADD COLUMN dtInicio DATE;
-- DATE ('YYYY-MM-DD')
-- DATETIME ('YYYY-MM-DD HH:MM:SS')
-- TIME ('HH:MM:SS')

UPDATE Empresa SET dtInicio = '2016-01-01' WHERE id = 1;
SELECT * FROM Empresa;

ALTER TABLE Empresa MODIFY COLUMN dtInicio DATETIME;
UPDATE Empresa SET dtInicio = '2022-02-23 11:49:00'
	WHERE id = 2;

ALTER TABLE Empresa DROP COLUMN dtInicio;

-- Bons estudos! Prova dia 09/03.

SELECT * FROM aluno;
SELECT * FROM empresa;

ALTER TABLE aluno ADD COLUMN fkEmpresa INT;
ALTER TABLE aluno ADD FOREIGN KEY (fkEmpresa)
REFERENCES Empresa (idEmpresa);
-- adicionei a chave estrangeira fkEmpresa
-- referenciando o idEmpresa da tabela Empresa
desc aluno;

UPDATE aluno SET fkEmpresa = 1 WHERE ra = '01221031';

SELECT aluno.ra, empresa.nome FROM aluno
	JOIN empresa ON empresa.idEmpresa = aluno.fkEmpresa
    WHERE empresa.nome = 'C6 BANK';
    
INSERT INTO aluno (ra, nome, fkEmpresa) VALUES
('01221017', 'Yuzo', 1),
('01221111', 'Ademir', '2'),
('01221222', 'Maruel', '2');
