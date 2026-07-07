use DB_T04301_PAULO_SOSA;



-- CRIANDO A TABELA DE CLIENTES SCORE
CREATE TABLE TB_CLIENTES_SCORE (
	cliente_id INT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    score_credito INT NOT NULL
);

-- INSERINDO OS REGISTROS
INSERT INTO TB_CLIENTES_SCORE (cliente_id, nome, score_credito)
VALUES (1, 'João', 750),
       (2, 'Maria', 520),
       (3, 'Pedro', 890),
       (4, 'Ana', 610);
       
-- CRIAR A TABELA DE FAIXA DE CREDITO
CREATE TABLE TB_FAIXA_CREDITO (
	faixa_id INT PRIMARY KEY,
    score_min INT NOT NULL,
    score_max INT NOT NULL,
    risco VARCHAR(10) NOT NULL
);

INSERT INTO TB_FAIXA_CREDITO (faixa_id, score_min, score_max, risco)
VALUES (1, 0, 599, 'Baixo'),
       (2, 600, 799, 'Médio'),
       (3, 800, 999, 'Alto');
       
-- CONSULTA AS TABELAS
SELECT CLI.nome,
       CLI.score_credito,
       FAIXA.risco
FROM TB_CLIENTES_SCORE AS CLI
JOIN TB_FAIXA_CREDITO AS FAIXA
ON CLI.score_credito BETWEEN FAIXA.score_min AND FAIXA.score_max
ORDER BY CLI.score_credito ASC;
