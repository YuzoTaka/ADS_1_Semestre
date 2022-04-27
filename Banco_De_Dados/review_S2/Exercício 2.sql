CREATE DATABASE treino2;

USE treino2;

CREATE TABLE organizador(
	idOrganizador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    rua VARCHAR(45),
    Bairro VARCHAR(45),
    email VARCHAR(45),
    fkExperiente INT,
    FOREIGN KEY(fkExperiente) REFERENCES organizador(idOrganizador)
) ;

CREATE TABLE campanha(
	idCampanha INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(45),
    Instituicao1 VARCHAR(45),
    Instituicao2 VARCHAR(45),
    dtFinal DATE,
    fkOrganizador INT,
    FOREIGN KEY(fkOrganizador) REFERENCES organizador(idOrganizador)
) AUTO_INCREMENT = 500;

ALTER TABLE organizador AUTO_INCREMENT = 30;

-- organizador novato
INSERT INTO organizador(nome, rua, bairro, email) VALUES
('Alexandre', 'Rua Inácio', 'Vila Paulista', 'xandao@mail.com'),
('Rafael', 'Rua Moreira', 'Casa Verde', 'rafa@mail.com'),
('João', 'Rua Diniz', 'Acerto', 'joao@mail.com');

-- organizador experiente
INSERT INTO organizador(nome, rua, bairro, email, fkExperiente) VALUES
('David', 'Rua Lucca', 'Vila Margarida', 'david@mail.com', 30),
('Gustavo', 'Rua Henrique', 'Pantanal', 'gustavo@mail.com', 31),
('Henrique', 'Rua Yuzo', 'Lapa', 'henrique@mail.com', 32);

INSERT INTO campanha(categoria, Instituicao1, Instituicao2, dtFinal, fkOrganizador) VALUES
('vacinação', 'AACD', 'SBT', '2022-04-02', 32),
('Máscara', 'IM', null, '2021-07-10', 30),
('Alimentos', 'IAB', null, '2020-05-08', 31);


-- Exibir os dados dos organizadores e os dados de suas respectivas campanhas.
SELECT * FROM organizador JOIN campanha ON fkOrganizador = idOrganizador;

-- Exibir os dados de um determinado organizador (informar o nome do organizador na consulta) e os dados de suas respectivas campanhas.
SELECT * FROM organizador JOIN campanha ON fkOrganizador = idOrganizador WHERE organizador.nome = 'Alexandre';

-- Exibir os dados dos organizadores novatos e os dados dos respectivos organizadores orientadores.
SELECT * FROM organizador AS novato JOIN organizador AS experiente ON novato.idOrganizador = experiente.fkExperiente;

/** Exibir os dados dos organizadores novatos e os dados dos respectivos
organizadores orientadores, porém somente de um determinado organizador orientador 
(informar o nome do organizador orientador na consulta).**/
SELECT * FROM organizador AS novato JOIN organizador AS experiente ON novato.idOrganizador = experiente.fkExperiente WHERE experiente.nome = 'David';

-- Exibir os dados dos organizadores novatos, os dados das respectivas campanhas organizadas e os dados dos respectivos organizadores orientadores.
SELECT * FROM organizador AS novato JOIN organizador AS experiente ON novato.idOrganizador = experiente.fkExperiente 
JOIN campanha ON novato.idOrganizador = campanha.fkOrganizador;

/** Exibir os dados de um organizador novato (informar o seu nome na consulta),
os dados das respectivas campanhas em que trabalha e os dados do seu
organizador orientador. **/
SELECT * FROM organizador AS novato JOIN organizador AS experiente ON novato.idOrganizador = experiente.fkExperiente
JOIN campanha ON novato.idOrganizador = campanha.fkOrganizador
WHERE novato.nome = 'João';

-- Exibir os nomes dos organizador novato, experiente e a campanha.
SELECT novato.nome AS novato, experiente.nome AS experiente, campanha.categoria AS campanha FROM organizador AS novato 
JOIN organizador AS experiente ON novato.idOrganizador = experiente.fkExperiente
JOIN campanha ON novato.idOrganizador = campanha.fkOrganizador;


