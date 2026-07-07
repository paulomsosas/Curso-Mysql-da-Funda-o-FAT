

-- ESSA SERIA AULA 17, BAGUNÇOU TUDO KK

/*

-- Clientes
CREATE TABLE Clientes ( 
        id_cliente INT PRIMARY KEY, 
        nome VARCHAR(50) 
); 

-- Produtos
CREATE TABLE Produtos ( 
       id_produto INT PRIMARY KEY, 
       nome_produto VARCHAR(50) 
); 

-- Pedidos
CREATE TABLE Pedidos ( 
       id_pedido INT PRIMARY KEY, 
       id_cliente INT,
       id_produto INT 
);

 -- INSERT
 
 -- Clientes 
INSERT INTO Clientes (id_cliente, nome) VALUES 
(1, 'Amanda'), 
(2, 'Bernardo'), 
(3, 'Camila');

 -- Produtos 
INSERT INTO Produtos (id_produto, nome_produto) VALUES 
(101, 'Notebook'), 
(102, 'Mouse'), 
(103, 'Teclado'); 

-- Pedidos 
INSERT INTO Pedidos (id_pedido, id_cliente, id_produto) VALUES 
(1, 1, 101), -- Amanda comprou Notebook 
(2, 2, 102), -- Bernardo comprou Mouse 
(3, 4, 101), -- Cliente inexistente 
(4, 2, 105); -- Produto inexistente

*/

-- inner join
-- MOSTRAR PEDIDOS COM CLIENTE E PRODUTO VÁLIDOS
select  id_pedido,nome,nome_produto from Pedidos AS P
	INNER JOIN
Clientes AS C ON P.id_cliente=C.id_cliente
	INNER JOIN
Produtos AS PRO ON P.id_produto=PRO.id_produto;

-- LEFT JOIN
-- MOSTRAR CLIENTES COM PRODUTOS

SELECT C.id_cliente,nome,PRO.nome_produto,P.id_produto FROM Clientes AS C
	LEFT JOIN
Pedidos AS P ON C.id_cliente=P.id_cliente
	LEFT JOIN
Produtos AS PRO ON P.id_produto=PRO.id_produto;

-- RIGHT JOIN
-- MOSTRAR TODOS OS PEDIDOS 
SELECT id_pedido,nome FROM Clientes AS C 
	RIGHT JOIN
Pedidos AS P ON C.id_cliente=P.id_cliente;

-- EXTRA 1
-- MOSTRAR QUE NAO FEZ PEDIDO

SELECT C.id_cliente,nome FROM Clientes AS C
	LEFT JOIN
Pedidos AS P ON C.id_cliente=P.id_cliente
	WHERE
P.id_cliente IS NULL;

-- PEDIDOS COM PRODUTO INEXISTENTES
SELECT id_pedido,P.id_produto FROM Pedidos AS P
	LEFT JOIN
Produtos AS PRO	ON P.id_produto=PRO.id_produto
	WHERE
PRO.id_produto IS NULL;

-- PRODUTOS NÃO VENDIDOS
SELECT PRO.id_produto,nome_produto FROM Produtos AS PRO
	LEFT JOIN
Pedidos AS P ON PRO.id_produto=P.id_produto
	WHERE
P.id_produto IS NULL;


