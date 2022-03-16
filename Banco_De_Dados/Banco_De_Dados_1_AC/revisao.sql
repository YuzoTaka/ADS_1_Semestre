CREATE DATABASE revisao;

USE revisao;

/* DEFALT = SE NÃO COLOCAR NADA, O SQL PREENCHERÁ AUTOMATICAMENTE O CAMPO COM ALGUM VALOR INSERIDO APÓS O DEFAULT.

DEFAULT CURRENT_TIMESTAMP = SE NÃO COLOCAR NADA, O SQL PREENCHERÁ AUTOMATICAMENTE A HORA E DATA QUE ESTÁ NO SISTEMA
 NOT NULL = NÃO PODE SER NULO(EM BRANCO)
 CONSTRAINT SERVE PARA COLOCAR UMA CHECK(RESTRIÇÃO)
 
*/

CREATE TABLE midia(
	idMidia INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tamanho DOUBLE NOT NULL,
    dtMidia DATETIME DEFAULT CURRENT_TIMESTAMP, 
    precoMidia DECIMAL(5,2) DEFAULT 1.99,
    tipo VARCHAR(50), 
    CONSTRAINT chkTipo CHECK (tipo = 'audio' or tipo = 'video' or tipo = 'imagem')
) 	AUTO_INCREMENT = 100;

INSERT INTO midia (nome, tamanho, tipo) VALUES
('foto das antiga', 100.99, 'filme');

-- EXCLUIR A CONSTRAINT CHECK 
ALTER TABLE midia DROP CHECK chkTipo;
-- ADICIONAR O CHECK NOVAMENTO
ALTER TABLE midia ADD CONSTRAINT chkTipo CHECK (tipo = 'audio' or tipo = 'video' or tipo = 'imagem');
ALTER TABLE midia ADD CONSTRAINT chkTipo CHECK (tipo IN('audio', 'video', 'imagem'));

DESC midia;

INSERT INTO midia (nome, tamanho, tipo) VALUES
('foto das antiga', 100.99, 'imagem'),
('video das antiga', 200.50, 'video');



SELECT * FROM midia;

ALTER TABLE midia ADD COLUMN localizacao VARCHAR(120);

UPDATE midia SET localizacao = 'consolação' WHERE idMidia >= 100;	

SELECT nome, tamanho FROM midia;

SELECT * FROM midia WHERE nome = 'video das antiga';
SELECT * FROM midia WHERE preco = 1.99;
SELECT * FROM midia ORDER BY nome;
SELECT * FROM midia ORDER BY nome DESC;
SELECT * FROM midia WHERE nome LIKE 'f%';
SELECT * FROM midia WHERE nome LIKE '%a';
SELECT * FROM midia WHERE nome LIKE '_o%';
SELECT * FROM midia WHERE nome LIKE '%g_';

UPDATE midia SET localizacao = 'Paraiso' WHERE idMidia = 1;

DELETE FROM midia WHERE idMidia = 100;

ALTER TABLE midia MODIFY COLUMN localizacao VARCHAR(80);
