USE sprint3;

ALTER TABLE matricula ADD nota DOUBLE;

UPDATE matricula SET nota = 7.4 WHERE idMatricula = 1;
UPDATE matricula SET nota = 9.2 WHERE idMatricula = 2;
UPDATE matricula SET nota = 8.5 WHERE idMatricula = 3;
UPDATE matricula SET nota = 8 WHERE idMatricula = 4;

-- QTTD DE REGISTROS NO CAMPO
UPDATE matricula SET nivel = null WHERE idMatricula = 2;
SELECT COUNT(nivel) FROM matricula;
SELECT COUNT(nivel), COUNT(dtInicio) FROM matricula;

-- NUMERO DE LINHAS(COUNT)
SELECT COUNT(nota) FROM matricula;

-- SOMAR(SUM)
SELECT SUM(nota) FROM matricula;

-- MEDIA(AVG)
SELECT AVG(nota) FROM matricula;

-- MINIMA(min)|MÁXIMA(max)
SELECT MIN(nota) FROM matricula;
SELECT MAX(nota) FROM matricula;
SELECT MIN(nota) 'Nota mínima', MAX(nota) 'Nota máxima' FROM matricula;

-- ARREDONDAR(ROUND)
SELECT ROUND(AVG(nota), 2) 'Média das notas' FROM matricula;

-- NÃO ARREDONDAR(TRUNCATE)
SELECT TRUNCATE(AVG(nota), 2) FROM matricula;

-- SOMA DAS NOTAS AGRUPADAS POR ALUNOS(GROUP BY)
SELECT nome, SUM(nota) FROM aluno JOIN matricula ON fkAluno = ra GROUP BY nome ORDER BY min(nota);
SELECT nome 'Aluno', SUM(nota) 'Soma', AVG(nota) 'Media', MIN(nota) 'Mínima', MAX(nota) 'Máxima' FROM aluno JOIN matricula ON fkAluno = ra GROUP BY nome;

-- USANDO CONCAT
SELECT CONCAT('A menor nota foi ', MIN(nota),
 ' e a maior nota foi ', MAX(nota), 
 ', com uma media de ', ROUND(AVG(nota), 2)) 'Histórinha'
 FROM matricula;
 
SELECT CONCAT('O(A) aluno(a) ', nome, ' teve a nota mais baixa com ', MIN(nota), ' e a maior nota foi de ', MAX(nota), ' tendo uma média de ', ROUND(AVG(nota),2)) 'Historinha' 
FROM aluno JOIN matricula ON ra = fkAluno GROUP BY nome;
