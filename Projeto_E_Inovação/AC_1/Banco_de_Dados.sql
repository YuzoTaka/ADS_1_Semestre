CREATE DATABASE SmartParking;

USE SmartParking;

CREATE TABLE Adm(
	idADM INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60),
    email VARCHAR(60),
    senha VARCHAR(60),
    estabelecimento VARCHAR(60)
);

CREATE TABLE Sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    hrEntrada DATETIME,
    hrSaida DATETIME,
    ocupada BOOLEAN
);

DESC Sensor;

DESC Sensor;
