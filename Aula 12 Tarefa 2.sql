use DB_T04301_PAULO_SOSA;

CREATE TABLE TB_CLIENTES12(
 CLI_ID INT PRIMARY KEY, 
 CLI_NOME VARCHAR(100), 
 CKI_TEL VARCHAR(20) 
); 

CREATE TABLE TB_PRODUTOS12 ( 
 PRO_ID INT PRIMARY KEY, 
 PRO_NOME VARCHAR(100), 
 PRO_PRECO DECIMAL(5,2) 
);

CREATE TABLE TB_PEDIDOS12( 
 PED_ID INT PRIMARY KEY, 
 PED_IDCLIENTE INT, 
 PED_ID_PROD INT, 
 PED_DATAPEDIDO DATE 
);
 
-- Conteudo para realizar o INSERT nas tabelas

INSERT INTO TB_CLIENTES12 VALUES 
(1, 'Ana Paula', '11999999999'), 
(2, 'Lucas Santos', '11988888888'), 
(3, 'Ana Paula', '11999999999'), -- duplicado 
(4, 'Carlos', NULL), -- sem telefone 
(5, 'MARIA jose', '11912345678');-- nome mal formatado

-- PRODUTOS 

INSERT INTO TB_PRODUTOS12 VALUES 
(1, 'Pizza Calabresa', '35.00'), 
(2, 'Pizza Mussarela', '999.99'), -- preço absurdo 
(3, 'Pizza Marguerita', '-5.00'), -- preço negativo 
(4, 'PIZZA BACON', '40.00'), 
(5, 'Pizza Portuguesa', '0.00'); -- preço zero – 

-- PEDIDOS (sem FK, proposital)
 
INSERT INTO TB_PEDIDOS12 VALUES 
(1, 2, 1, '2024-10-10'), 
(2, 4, 3, '2024-10-12'), 
(3, 7, 2, '2024-10-13'); -- cliente ID 7 não existe
 
 select * from TB_CLIENTES12;
 select * from TB_PRODUTOS12;
 select * from TB_PEDIDOS12;
 
 -- correções
 
 -- campo errado em clientes
 ALTER TABLE TB_CLIENTES12 RENAME COLUMN CKI_TEL TO  CLI_TEL;
 
 
 -- deletar duplicada clientes
 delete from TB_CLIENTES12 where cli_id=3;
 
 -- corrigir MARIA jose para maria jose
 UPDATE TB_CLIENTES12 SET CLI_NOME='Maria Jose' where CLI_NOME = 'MARIA jose';
 
 -- atualizar telefone carlos para '11911112222'
 update TB_CLIENTES12 set cli_tel='11911112222' WHERE CLI_NOME ='Carlos';
 
 START TRANSACTION;
 -- atualizar preços
 select * from TB_PRODUTOS12;
 update TB_PRODUTOS12 set pro_preco=32 where pro_nome like '%mussarela';
 update TB_PRODUTOS12 set pro_preco=36 where pro_nome like '%marguerita';
 update TB_PRODUTOS12 set pro_preco=38 where pro_nome like '%portuguesa';
 
 COMMIT;
 
 -- deletar pedido
 select * from TB_PEDIDOS12;
 
 delete from TB_PEDIDOS12 where PED_IDCLIENTE = 7;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 