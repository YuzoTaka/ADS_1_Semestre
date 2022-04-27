CREATE DATABASE treino;

USE treino;

CREATE TABLE projeto(
    idProjeto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descrição VARCHAR(50)
);

CREATE TABLE aluno(
    RA INT PRIMARY KEY AUTO_INCREMENT,
    fkRepresentante INT,
    Nome VARCHAR(45),
    telefone CHAR(10),
    fkProjeto INT,
    FOREIGN KEY(fkRepresentante) REFERENCES aluno(RA),
    FOREIGN KEY(fkProjeto) REFERENCES projeto(idProjeto)
);


CREATE TABLE acompanhantes(
    idAcomp INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    relação VARCHAR(45),
    fkAluno INT,
    FOREIGN KEY(fkAluno) REFERENCES aluno(RA)
);

INSERT INTO projeto(nome, descrição) VALUES
('GreenHouse', 'Estufas'),
('SmartParking', 'Estacionamento'),
('SmartMarket', 'Mercado');

-- Aluno
INSERT INTO aluno VALUES
(null, null, 'Marcelo', '91234-5678', 1),
(null, null, 'Pedro', '94132-6987', 2);

-- Aluno representante
INSERT INTO aluno VALUES
(null, 1, 'Pablo', '96851-1721', 2),
(null, 2, 'Paula','99987-1123', 3);

INSERT INTO acompanhantes(nome, relação, fkAluno) VALUES
('Bruno', 'Irmão', 1),
('Vitor' , 'Pai', 2),
('Carla' , 'namorada', 3);

-- - Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM aluno;
SELECT * FROM acompanhantes;
SELECT * FROM projeto;

-- - Exibir os dados dos alunos e dos projetos correspondentes.
SELECT * FROM aluno JOIN projeto ON fkProjeto = idProjeto;

-- Exibir os dados dos alunos e dos seus acompanhantes.
SELECT * FROM aluno JOIN acompanhantes ON fkAluno = RA;

-- Exibir os dados dos alunos e dos seus representantes.
SELECT * FROM aluno AS aluno JOIN aluno AS representante ON aluno.RA = representante.fkRepresentante;

-- - Exibir os dados dos alunos e dos projetos correspondentes, mas somente de um determinado projeto (indicar o nome do projeto na consulta)
SELECT * FROM aluno JOIN projeto ON fkProjeto = idProjeto WHERE projeto.nome = 'GreenHouse';

-- Exibir os dados dos alunos, dos projetos correspondentes e dos seus acompanhantes.
SELECT * FROM aluno JOIN projeto ON fkProjeto = idProjeto JOIN acompanhantes ON fkAluno = RA;

ALTER TABLE aluno ADD COLUMN sobrenome VARCHAR(45);
ALTER TABLE acompanhantes ADD COLUMN sobrenome VARCHAR(45);

UPDATE aluno SET sobrenome = 'Rosa' WHERE RA = 1;
UPDATE aluno SET sobrenome = 'Silva' WHERE RA = 2;
UPDATE aluno SET sobrenome = 'Oliveira' WHERE RA = 3;

UPDATE acompanhantes SET sobrenome = 'Costas' WHERE idAcomp = 1;
UPDATE acompanhantes SET sobrenome = 'Borges' WHERE idAcomp = 2;
UPDATE acompanhantes SET sobrenome = 'Cardoso' WHERE idAcomp = 3;

ALTER TABLE aluno ADD COLUMN genero CHAR(1);
ALTER TABLE aluno ADD CONSTRAINT chkGenero CHECK (genero in('M', 'F'));
ALTER TABLE aluno ADD check (genero in ('F','M'));

ALTER TABLE aluno DROP COLUMN genero;

UPDATE aluno SET genero = 'M' WHERE RA = 1;
UPDATE aluno SET genero = 'F' WHERE RA = 2;
DESC aluno;

SELECT CONCAT(nome, ' ', sobrenome)as Nome_completo  FROM aluno;


SELECT CONCAT(aluno.nome, ' ', aluno.sobrenome) AS nome_completo, 
CONCAT(acompanhantes.nome, ' ', acompanhantes.sobrenome) AS nome_completo 
FROM aluno JOIN acompanhantes ON fkAluno = RA;


SELECT * FROM aluno;
DROP DATABASE treino;