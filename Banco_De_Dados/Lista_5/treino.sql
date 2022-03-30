CREATE DATABASE aula4;

USE aula4;

CREATE TABLE funcionario(
	idFuncio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    salario DOUBLE(10,2), CHECK (salario > 0),
    genero CHAR(1), CHECK (genero in('F', 'M'))
);

INSERT INTO funcionario VALUES
(null, 'Franklin', 1.99, 'M'),
(null, 'João', 1.98, 'F'),
(null, 'Maria', 1.50, 'M');

-- ADD PRIMARY KEY COMPOSTA
CREATE TABLE dependente(
	idDep INT,
    fkFunc INT,
    PRIMARY KEY(idDep, fkFunc),
    nomeDep VARCHAR(45),
    dtNasc DATE,
    FOREIGN KEY (fkFunc) REFERENCES funcionario(idFuncio)
);

INSERT INTO dependente VALUES
(1, 1, 'Laura', '2000-10-13'),
(2, 1, 'Lauro', '1999-10-13'),
(1, 2, 'Josefina', '1995-10-13'),
(1, 3, 'Mário', '1991-10-13');


SELECT idDep, fkFunc, nomeDep, dtNasc FROM dependente ORDER BY fkFunc;


SELECT f.nome as Nome, d.nomeDep as Nome_dependente FROM funcionario as f JOIN dependente as d ON d.fkFunc = f.idFuncio;


SELECT * FROM funcionario JOIN dependente ON idFuncio = fkFunc;

INSERT INTO funcionario VALUES
(null, 'Vivian', 0.99, 'F'),
(null, 'Viviano', 0.90, 'M');

-- Mostrar os dados do funcionarios que possuem ou não dependentes
SELECT * FROM funcionario RIGHT JOIN dependente ON idFuncio = fkFunc;

-- Mostar os dados dos funcionarios que não possuem dependentes
SELECT * FROM funcionario LEFT JOIN dependente ON idFuncio = fkFunc WHERE fkFunc is null;

-- ADD foreign key da própria tabela
ALTER TABLE funcionario ADD COLUMN fkSupervisor INT, 
ADD FOREIGN KEY (fkSupervisor) REFERENCES funcionario(idFuncio);

UPDATE funcionario SET fkSupervisor = 1 WHERE idFuncio in (2,3);

SELECT * FROM funcionario JOIN dependente ON idFuncio = fkFunc;

-- Mostrar o nome do funcionario e seu respectivo supervisor
SELECT * FROM funcionario as funcionario JOIN funcionario as supervisor ON supervisor.idFuncio = funcionario.fkSupervisor; 

