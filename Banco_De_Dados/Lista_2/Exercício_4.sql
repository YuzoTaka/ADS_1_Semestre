CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE Professor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
	especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor VALUES
	(null, 'Gabriel', 'Banco de Dados', '1980-10-15'),
    (null, 'Ricardo', 'TI', '1960-06-11'),
    (null, 'Roberta', 'Arq Comp', '1999-05-08'),
    (null, 'Bruna', 'Banco de Dados', '1991-04-14'),
    (null, 'Edson', 'PI', '1993-12-31'),
    (null, 'Rafaela', 'SocioEmo', '2000-06-11');
    

-- Exibir todos os dados da tabela
SELECT * FROM Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular
ALTER TABLE Professor ADD COLUMN Funcao VARCHAR(50);
ALTER TABLE Professor ADD CHECK (Funcao = 'monitor' or Funcao = 'assistente' or Funcao = 'titular');

-- Atualizar os professores inseridos e suas respectivas funções
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 1;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 2;
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 3;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 4;
UPDATE Professor SET funcao = 'titular' WHERE idProfessor = 5;

-- Inserir um novo professor
INSERT INTO Professor VALUES
(null, 'Luis', 'TI', '1994-12-31', 'monitor');

-- Excluir o professor onde o idProfessor é igual a 5 
DELETE FROM Professor WHERE idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares
SELECT * FROM Professor WHERE funcao = 'titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores
SELECT especialidade, dtNasc FROM Professor WHERE funcao = 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3
UPDATE Professor SET dtNasc = '1989-01-14' WHERE idProfessor = 3;

-- Descrever os campos da tabela
DESC Professor;

-- Limpar a tabela Professor
TRUNCATE Professor;

-- Excluir banco de dados
DROP DATABASE sprint1;