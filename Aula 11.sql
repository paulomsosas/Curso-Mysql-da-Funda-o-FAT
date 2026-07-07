use DB_T04301_PAULO_SOSA;

/* 
-- CRIANDO A TABELA DE CONTATOS
CREATE TABLE TB_CONTATOS_TESTE_DML (
 id_contato INT AUTO_INCREMENT PRIMARY KEY,
    nome_contato VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);
-- INSERINDO REGISTROS NA TABELA DE CONTATOS
INSERT INTO TB_CONTATOS_TESTE_DML (nome_contato, telefone, email)
VALUES ('LUIZA', '(11) 99999-8888', 'luiza@email.com'),
       ('PETER', '(12) 98888-7777', 'peter@email.com'),
       ('PEDRO', '(13) 97418-7474', 'pedro@email.com'),
       ('VANESSA', '(14) 93333-2222', 'vanessa@email.com'),
       ('TATIANE', '(15) 92222-0000', 'tatiane@email.com');
       
-- CONSULTA A TABELA DE CONTATOS
SELECT * FROM TB_CONTATOS_TESTE_DML;

-- UPDATE - ATUALIZANDO/ALTERANDO/MODIFICANDO
UPDATE TB_CONTATOS_TESTE_DML
SET telefone = '(13) 97418-7575'
WHERE id_contato = 3;
 
 */
 
 -- Criando a tabela clientes
CREATE TABLE tb_conta_cliente_AR (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(100) NOT NULL,
saldo DECIMAL(10,2) NOT NULL
);

-- Inserindo registros na tabela conta cliente
INSERT INTO tb_conta_cliente_AR (nome_cliente, saldo)
VALUES ('Fernanda', '1000'),
       ('Alexandre', '800');

-- Consultar a tabela clientes
SELECT * FROM tb_conta_cliente_AR;

-- Usando os comandos TCL
START TRANSACTION;

-- Atualizar o Saldo da Fernanda colocando 300,00 reais
UPDATE tb_conta_cliente_AR
SET saldo = saldo + 300
WHERE id_cliente = 1;

-- Confirmar transaçao
COMMIT;

-- Confirmar saldo dos clientes
SELECT * FROM tb_conta_cliente_AR;

-- Tentativa de creditar 300,00 para o Alexandre
-- inicio
START TRANSACTION;

UPDATE tb_conta_cliente_AR
SET saldo = saldo + 300
WHERE id_cliente = 2;

-- Desfazer a transação
ROLLBACK;
 
 -- Consultar a tabela clientes
SELECT * FROM tb_conta_cliente_AR;

-- Exemplo 3 - Credito em uma conta e debito em outra conta
START TRANSACTION;

-- 1 PASSO - Atualizar o saldo do Alexandre 
UPDATE tb_conta_cliente_AR
SET saldo = saldo + 700
WHERE id_cliente = 2;

-- Ponto de Salvamento
SAVEPOINT PONTO_SAVE_1;

-- 2 PASSO - Debitar o saldo da Fernanda
UPDATE tb_conta_cliente_AR
SET saldo = saldo - 200
WHERE id_cliente = 1;

-- Desfazer a opção de débito na conta da Fernanda
ROLLBACK TO SAVEPOINT PONTO_SAVE_1;

-- Encerrar as informações
COMMIT;

START TRANSACTION;
-- DELETE FROM
DELETE FROM tb_conta_cliente_AR;
ROLLBACK;

START TRANSACTION;
-- TRUNCATE TABLE NÃO TEM RETORNO
TRUNCATE TABLE tb_conta_cliente_AR;
ROLLBACK;