CREATE DATABASE PraticaFuncionario;

USE PraticaFuncionario;

CREATE TABLE setor(
	idSetor INT PRIMARY KEY AUTO_INCREMENT,
    nomeSetor VARCHAR(40),
    andar INT
);

CREATE TABLE funcionario(
	idFuncio INT PRIMARY KEY AUTO_INCREMENT,
    nomeFuncio VARCHAR(40),
    telefone CHAR(9),
    salario DECIMAL(10,2),
    fkSetor INT,
    FOREIGN KEY(fkSetor) REFERENCES setor(idSetor)
);

CREATE TABLE acompanhante(
	idAcomp INT AUTO_INCREMENT,
    fkFuncio INT,
    PRIMARY KEY(idAcomp, fkFuncio),
    nomeAcomp VARCHAR(40),
    relacao VARCHAR(30),
    dtNasc DATE,
    FOREIGN KEY(fkFuncio) REFERENCES funcionario(idFuncio)
);

INSERT INTO setor(nomeSetor, andar) VALUES
('Comércio', 1),
('Indústria', 2),
('Pecuária', 3),
('Extrativismo', 4);

INSERT INTO funcionario(nomeFuncio, telefone, salario, fkSetor) VALUES
('Raphaela', '3512-6590', 20.00, 1),
('Raphael', '4123-4537', 15.00, 1),
('Larissa', '6478-9821', 25.30, 2),
('Larisso', '6151-2534', 22.35, 3),
('Rodriga', '8712-5621', 30.01, 4);

INSERT INTO acompanhante(nome, relacao, dtNasc, fkFuncio) VALUES
('Marcosa', 'mãe', '2000-10-10', 1),
('Felix', 'namorado', '2000-10-10', 2),
('Laísa', 'esposa', '2000-10-10', 3),
('Hirosha', 'amiga', '2000-10-10', 5);

-- Exibir os dados dos setores e dos seus respectivos funcionários.
SELECT * FROM setor JOIN funcionario ON idSetor = fkSetor;

--  Exibir os dados de um determinado setor (informar o nome do setor na consulta) e dos seus respectivos funcionários.
SELECT * FROM setor JOIN funcionario ON fkSetor = idSetor;

-- Exibir os dados dos funcionários e de seus acompanhantes.
SELECT * FROM funcionario JOIN acompanhante ON idFuncio = fkFuncio;

-- Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de seus acompanhantes.
SELECT * FROM funcionario JOIN acompanhante ON idFuncio = fkFuncio WHERE nomeFuncio = 'Larisso';

-- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes.
SELECT * from funcionario JOIN setor ON idSetor = fkSetor JOIN acompanhante ON idFuncio = fkFuncio;

DESC funcionario;
DESC acompanhante;

SELECT * FROM acompanhante;

DROP database PraticaFuncionario;


