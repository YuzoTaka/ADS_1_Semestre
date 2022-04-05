CREATE database treinador;

USE treinador;

CREATE TABLE treinador(
	idTreinador INT PRIMARY KEY AUTO_INCREMENT,
    nomeTreinador VARCHAR(40),
    telefone CHAR(10),
    email VARCHAR(50)
) AUTO_INCREMENT = 10;

CREATE TABLE nadador(
	idNadador INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40),
    estado VARCHAR(40),
    dtNasc DATE,
    fkTreinador INT,
    FOREIGN KEY(fkTreinador) REFERENCES treinador(idTreinador)
) AUTO_INCREMENT = 100;




INSERT INTO nadador(nome, estado, dtNasc, fkTreinador) VALUES
('Júlio', 'SP', '1991-06-11', 10),
('Marcela', 'RJ', '1997-11-06', 10),
('Marcelo', 'MG', '1995-05-08', 11),
('Vinícius', 'AC', '1999-12-31', 12);

INSERT INTO treinador(nomeTreinador, telefone, email) VALUES
('Pedro', '98167-1271', 'pedrinho22@mail.com.br'),
('Roberto', '98162-1221', 'r0bert0@mail.com.br'),
('Bruna', '95121-8767', 'brun1nh@mail.com.br'),
('Guilherme', '99912-1168', 'guilherme@mail.com.br'),
('Isabella', '95141-3121', 'isabe11a@mail.com.br');

-- Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM nadador;
SELECT * FROM treinador;


ALTER TABLE treinador ADD fkNovato INT,
ADD FOREIGN KEY(fkNovato) REFERENCES treinador(idTreinador);

UPDATE treinador SET fkNovato = 10 WHERE idTreinador = 10;
UPDATE treinador SET fkNovato = 10 WHERE idTreinador = 11;
UPDATE treinador SET fkNovato = 11 WHERE idTreinador = 12;
UPDATE treinador SET fkNovato = 12 WHERE idTreinador = 13;
UPDATE treinador SET fkNovato = 13 WHERE idTreinador = 14;

--  Exibir os dados dos treinadores e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador ON idTreinador = fkTreinador;

-- Exibir os dados de um determinado treinador (informar o nome do treinador na consulta) e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador on idTreinador = fkTreinador WHERE nomeTreinador = 'Guilherme';

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores.
SELECT * FROM treinador JOIN treinador as novato ON treinador.idTreinador = novato.fkNovato;

/* Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores, 
porém somente de um determinado treinador orientador (informar o nome do treinador na consulta).
*/
SELECT * FROM treinador JOIN treinador AS novato ON novato.idTreinador = treinador.fkNovato WHERE treinador.nomeTreinador = 'Pedro';

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
/*SELECT * FROM treinador JOIN nadador ON idTreinador = fkTreinador;
Não consegui fazer.
*/
-- Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos respectivos nadadores e os dados do seu treinador orientador.
SELECT * FROM treinador JOIN treinador as novato ON treinador.idTreinador = novato.fkNovato WHERE treinador.nomeTreinador = 'roberto';


DROP DATABASE treinador;





