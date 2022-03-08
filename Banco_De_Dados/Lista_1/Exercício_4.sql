CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Professor (
	idProfessor CHAR(1) primary key,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor VALUES
 ('1', 'Vivian', 'Banco de Dados', '2003-02-17'),
 ('2', 'Frizza', 'Algoritmo', '2003-03-22'),
 ('3', 'Thiago', 'TI', '2003-04-10'),
 ('4', 'Kaline', 'Socio', '2003-05-08'),
 ('5', 'Thiago', 'Socio', '2003-06-25'),
 ('6', 'Eduardo', 'ArqComp', '2003-07-30');


-- Exibir todos os dados da tabela.
SELECT * FROM Professor;

-- Exibir apenas as especialidades dos professores.
SELECT especialidade FROM Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM Professor WHERE especialidade = 'Socio';

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM Professor ORDER BY dtNasc DESC;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE 'v%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra
SELECT * FROM Professor WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE '_a%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM Professor WHERE nome LIKE '%z_';

-- Elimine a tabela.
DROP TABLE Professor;

-- Elimine o banco de dados
DROP DATABASE sprint1;