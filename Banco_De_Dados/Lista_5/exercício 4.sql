CREATE database treinador;

USE treinador;

CREATE TABLE nadador(
	idNadador INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40),
    estado VARCHAR(40),
    dtNasc DATE,
    fkTreinador INT,
    FOREIGN KEY(fkTreinador) REFERENCES treinador(idTreinador)
) AUTO_INCREMENT = 100;

CREATE TABLE treinador(
	idTreinador INT PRIMARY KEY AUTO_INCREMENT,
    nomeTreinador VARCHAR(40),
    telefone CHAR(10),
    email VARCHAR(50)
) AUTO_INCREMENT = 10;

CREATE TABLE Novato(
	idNovato INT AUTO_INCREMENT,
    fkTreinador INT,
    PRIMARY KEY(idNovato, fkTreinador),
    nome VARCHAR(40),
    telefone CHAR(10),
    email VARCHAR(50),
    FOREIGN KEY(fkTreinador) REFERENCES treinador(idTreinador)    
);

INSERT INTO nadador(nome, estado, dtNasc) VALUES
('Júlio', 'SP', '1991-06-11'),
('Marcela', 'RJ', '1997-11-06'),
('Marcelo', 'MG', '1995-05-08'),
('Vinícius', 'AC', '1999-12-31');

INSERT INTO treinador(nomeTreinador, telefone, email, fkNadador) VALUES
('Pedro', '98167-1271', 'pedrinho22@mail.com.br', 100),
('roberto', '98162-1221', 'r0bert0@mail.com.br', 100),
('Bruna', '95121-8767', 'brun1nh@mail.com.br', 101),
('Guilherme', '99912-1168', 'guilherme@mail.com.br', 102),
('Isabella', '95141-3121', 'isabe11a@mail.com.br', 103);

INSERT INTO novato(nome, telefone, email, fkTreinador) VALUES
('Jéssica', '97612-1212', 'jessica@mail.com', 10),
('Lucas', '97162-4969', 'lucas@mail.com', 10),
('Lincoln', '97162-6156', 'lincoln@mail.com', 11),
('Letícia', '97162-4321', 'leticia@mail.com', 12),
('Leandro', '97162-8872', 'leandro@mail.com', 13),
('Edson', '97162-9194', 'edson@mail.com', 14);

-- Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM treinador;
SELECT * FROM nadador;
SELECT * FROM novato;

--  Exibir os dados dos treinadores e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador ON idNadador = fkNadador;

-- Exibir os dados de um determinado treinador (informar o nome do treinador na consulta) e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador on idNadador = fkNadador WHERE nomeTreinador = 'Guilherme';

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores.
SELECT * FROM novato JOIN treinador ON idTreinador = fkTreinador;

/* Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores, 
porém somente de um determinado treinador orientador (informar o nome do treinador na consulta).
*/
SELECT * FROM novato JOIN treinador ON idTreinador = fkTreinador WHERE nomeTreinador = 'Pedro';

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
SELECT * FROM treinador JOIN nadador ON idNadador = fkNadador JOIN novato ON idTreinador = fkTreinador;

-- Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos respectivos nadadores e os dados do seu treinador orientador.
SELECT * FROM novato JOIN treinador ON idTreinador = fkTreinador JOIN nadador ON idNadador = fkNadador WHERE novato.nome = 'Jéssica';


DROP DATABASE treinador;





