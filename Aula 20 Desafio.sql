use DB_T04301_PAULO_SOSA;

/*
CREATE TABLE PedidosKarrot ( 
     id INT AUTO_INCREMENT PRIMARY KEY, 
     cliente VARCHAR(50), 
     produto VARCHAR(50), 
     data_pedido DATE, 
     hora_pedido TIME,  
     preco DECIMAL(6,2),
     observacao VARCHAR(100) 
);
 
 INSERT INTO PedidosKarrot (cliente, produto, data_pedido, hora_pedido, preco, observacao) VALUES
('Ana Paula', 'Café Expresso', '2025-07-19', '08:10:00', 6.50, 'Com açúcar'),
('Bruno Costa', 'Cappuccino', '2025-07-19', '08:35:00', 8.00, 'Leite vegetal'),
('Carla Dias', 'Latte', '2025-07-19', '09:05:00', 7.50, 'Sem espuma'),
('Daniela Souza', 'Croissant', '2025-07-18', '10:15:00', 5.00, 'Com queijo'),
('Eduardo Lima', 'Chá Gelado', '2025-07-18', '11:20:00', 6.00, 'Com limão'),
('Fernanda Alves', 'Café Expresso', '2025-07-17', '14:30:00', 6.50, 'Sem açúcar'),
('Gabriel Silva', 'Pão de Queijo', '2025-07-16', '08:50:00', 4.00, 'Quentinho'),
('Heloísa Martins', 'Café Expresso', '2025-07-15', '07:45:00', 6.50, 'Com leite'),
('Igor Monteiro', 'Latte', '2025-07-14', '09:20:00', 7.50, 'Espuma extra'),
('Juliana Mendes', 'Cappuccino', '2025-07-14', '10:50:00', 8.00, 'Com canela'),
('Karen Rocha', 'Café Gelado', '2025-07-13', '16:00:00', 6.00, 'Com caramelo'),
('Lucas Prado', 'Chá Verde', '2025-07-13', '17:25:00', 6.00, 'Bem quente'),
('Mariana Borges', 'Pão de Queijo', '2025-07-13', '08:15:00', 4.00, 'Sem sal'),
('Nicolas Duarte', 'Croissant', '2025-07-12', '12:45:00', 5.00, 'Simples'),
('Olívia Ribeiro', 'Cappuccino', '2025-07-12', '13:00:00', 8.00, 'Com leite'),
('Paulo Vitor', 'Café Expresso', '2025-07-11', '08:05:00', 6.50, 'Forte'),
('Quésia Freitas', 'Latte', '2025-07-10', '11:40:00', 7.50, 'Com baunilha'),
('Rodrigo Lopes', 'Chá Gelado', '2025-07-10', '12:10:00', 6.00, 'Com hortelã'),
('Sara Oliveira', 'Café Expresso', '2025-07-10', '09:55:00', 6.50, 'Duplo'),
('Thiago Nunes', 'Cappuccino', '2025-07-10', '10:15:00', 8.00, 'Meio amargo');
*/

-- 1 mostrar quantos pedidos foram feito por data do pedido
-- CORRETO
select data_pedido as 'Data do Pedido', count(data_pedido) as 'Total de Pedidos' from PedidosKarrot
	GROUP BY 
data_pedido
	ORDER BY
data_pedido;


-- 2 mostrar a soma por produto dos  pedidos que contem a palavra leite na observação
-- ESTAVA ERRADO
select produto as Produto, count(produto) as Total, sum(preco) from PedidosKarrot
	where observacao like '%leite%'
	GROUP BY
produto
	ORDER BY
produto;


-- 3 mostre a média de preços dos pedidos feitos no turno da manha (antes das 12h), agrupado por produto 
-- ESTAVA ERRADO
select produto, ROUND(AVG(preco),2) AS 'Preço Médio' from PedidosKarrot
		where
hora_pedido<'12:00:00'
    GROUP BY
produto
	order by
    2;

 -- 4 mostrar qual foi o menor e o maior valor cobrado para cada produto dos clientes, cujo o sobrenome termine com a palavra 'a'
-- ERRADO, FALTA COMPREENDER AS RESOLUÇÕES

select CLIENTE, MIN(preco), MAX(preco) from PedidosKarrot
where cliente like '%a'
GROUP BY CLIENTE;


 -- quais os produtos tiveram mais de 3 pedidos ? having após o group by
-- CORRETO
 
 select produto, COUNT(produto) from PedidosKarrot
	GROUP BY
produto
	HAVING count(produto)>3;
    
    
 