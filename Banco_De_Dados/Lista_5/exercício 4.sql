CREATE database treinador;

USE treinador;

CREATE TABLE treinador(
	idTreinador INT PRIMARY KEY AUTO_INCREMENT,
    nomeTreinador VARCHAR(40),
    telefone CHAR(10),
    email VARCHAR(50),
    fkExperiente INT,
    FOREIGN KEY(fkExperiente) REFERENCES treinador(idTreinador)
) AUTO_INCREMENT = 10;

CREATE TABLE nadador(
	idNadador INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40),
    estado CHAR(2),
    dtNasc DATE,
	fkTreinador INT,
    FOREIGN KEY(fkTreinador) REFERENCES treinador(idTreinador)
) AUTO_INCREMENT = 100;

-- INSERINDO UM TREINADOR EXPERIENTE
INSERT INTO treinador VALUES
(null, 'Rafael', '92156-1452', 'rafael@mail.com', null);

-- INSERINDO UM TREINADO NOVATO
INSERT INTO treinador VALUE
(null, 'Franklin', '98761-1487', 'franklin@mail.com', 10); 

INSERT INTO nadador(nome, estado, dtNasc, fkTreinador) VALUES
('Júlio', 'SP', '1991-06-11', 10),
('Marcela', 'RJ', '1997-11-06', 10),
('Marcelo', 'MG', '1995-05-08', 11);


-- Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM treinador;
SELECT * FROM nadador;


--  Exibir os dados dos treinadores e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador ON idTreinador = fkTreinador;

-- Exibir os dados de um determinado treinador (informar o nome do treinador na consulta) e os dados de seus respectivos nadadores.
SELECT * FROM treinador JOIN nadador on idTreinador = fkTreinador WHERE nomeTreinador = 'Rafael';

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores.
SELECT * FROM treinador as novato JOIN treinador AS experiente ON novato.idTreinador = experiente.fkExperiente;

/* Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores, 
porém somente de um determinado treinador orientador (informar o nome do treinador na consulta).
*/
SELECT * FROM treinador AS novato JOIN treinador AS experiente ON novato.idTreinador = experiente.fkExperiente WHERE novato.nomeTreinador = 'Rafael';

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
/*SELECT * FROM treinador JOIN nadador ON idTreinador = fkTreinador;
Não consegui fazer.
*/
-- Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos respectivos nadadores e os dados do seu treinador orientador.
SELECT * FROM treinador JOIN treinador as novato ON treinador.idTreinador = novato.fkNovato WHERE treinador.nomeTreinador = 'roberto';



-- CAI NA PROVA
SELECT * FROM treinador as novato JOIN treinador as experiente ON experiente.idTreinador = novato.fkExperiente JOIN nadador ON novato.idTreinador = nadador.fkTreinador;

-- CAI NA PROVA*******
SELECT novato.nomeTreinador as Treinador,
	experiente.nomeTreinador as Experiente,
	nadador.nome as Nadador
	FROM treinador as novato 
	JOIN treinador as experiente 
	ON experiente.idTreinador = novato.fkExperiente 
	JOIN nadador 
	ON novato.idTreinador = nadador.fkTreinador;


-- SE A TABELA NADADOR FOR DEPENDENTE DA TABELA TREINADOR
CREATE TABLE nadador(
	idNadador INT AUTO_INCREMENT,
    fkTreinador INT,
    PRIMARY KEY(idNadador, fkTreinador),
	nome VARCHAR(40),
    estado CHAR(2),
    dtNasc DATE,
    FOREIGN KEY(fkTreinador) REFERENCES treinador(idTreinador)
) AUTO_INCREMENT = 100;


-- EXEMPLO CONCAT
SELECT CONCAT('O treinador ', novato.nomeTreinador, ' é orientado pelo(a) ', experiente.nomeTreinador, ' e treina o nadador(a) ', nadador.nome, '!') FraseDoDia
	FROM treinador as novato 
	JOIN treinador as experiente 
	ON experiente.idTreinador = novato.fkExperiente 
	JOIN nadador 
	ON novato.idTreinador = nadador.fkTreinador;



DROP DATABASE treinador;





