-- TODOS OS COMANDOS MYSQL
/* CREATE DATABASE
CREATE DATABASE "nome";
*/

/* USE
USE "Nome_Data_Base";
*/

/* CREATE TABLE
CREATE TABLE "nome_Tabela"(
	idNome INT PRIMARY KEY AUTO_INCREMENT,
    nome CHAR/VARCHAR(50),
    dt DATE/TIME/DATETIME DEFAULT CURRENT_TIMESTAMP,
    preco DECIMAL DEFAULT 1.99,
    tipo VARCHAR(50),
    CONSTRAINT "nomeCheck" CHECK (tipo in('tipo1', 'tipo2', 'tipo3', ...)),
    CONSTRAINT "nomeCheck" CHECK (tipo = 'tipo1' or tipo = 'tipo2' or tipo = 'tipo3' or ...),
)	AUTO_INCREMENT = 100;
*/

/* INSERT INTO
INSERT INTO "nome_tabela" (nome, dt, preco, tipo) VALUES
('nome1', 'yyyy-mm-dd', '5.90', 'tipo1'),
('nome1', 'yyyy-mm-dd', 'null', 'tipo2'),
('nome1', 'yyyy-mm-dd', '0.90', 'tipo3');
*/

/* UPDATE
UPDATE "nome_tabela" SET "campo" = "alteração" WHERE idNome = "idNome"
*/

/* ALTER TABLE
ALTER TABLE "nome_tabela" ADD COLUMN "nome_coluna"+"descrição"
ALTER TABLE "nome_tabela" MODIFY COLUMN "nome_coluna"+"descrição nova"
ALTER TABLE "nome_tabela" DROP COLUMN "nome_coluna"
ALTER TABLE "nome_tabela" RENAME COLUMN "nome_coluna" TO "nome_coluna_novo"
*/

/* DIGITOS
INT
FLOAT
DOUBLE
DECIMAL
CHAR
VARCHAR
*/

ALTER TABLE aluno ADD FOREIGN KEY (fkEmpresa)
REFERENCES Empresa (idEmpresa);

SELECT aluno.nome, empresa.nome FROM aluno
	JOIN empresa ON empresa.idEmpresa = aluno.fkEmpresa;
    
    
