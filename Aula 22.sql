

DROP table Pedidos;

CREATE TABLE Pedidos (     
id_pedido INT PRIMARY KEY AUTO_INCREMENT,     
nome_cliente VARCHAR(100),     
produto VARCHAR(100),     
valor DECIMAL(10,2),     
desconto DECIMAL(10,2),     
forma_pagamento VARCHAR(50) );

INSERT INTO Pedidos (nome_cliente, produto, valor, desconto, forma_pagamento) 
	VALUES 
('Ana Silva', 'Notebook', 3500.00, 200.00, 'Cartão'), 
('Bruno Lima', 'Mouse', 80.00, NULL, 'Pix'), 
('Carlos Souza', 'Teclado', 150.00, 0.00, 'Boleto'), 
('Daniela Rocha', 'Monitor', 1200.00, 100.00, 'Cartão'), 
('Eduardo Mendes', 'Headset', 300.00, NULL, 'Pix'), 
('Fernanda Alves', 'Cadeira Gamer', 900.00, 50.00, 'Boleto'), 
('Gabriel Costa', 'Webcam', 250.00, 0.00, 'Cartão'), 
('Helena Martins', 'Notebook', 4000.00, NULL, 'Cartão'), 
('Igor Santos', 'Mouse Pad', 40.00, 5.00, 'Pix'), 
('Juliana Freitas', 'Monitor', 1100.00, 0.00, 'Boleto');
  
-- 1 if mostrar nome do cliente, valor, informar alto se valor > 1000 ou baixo 
  
select nome_cliente as Cliente, valor as Valor, 
	if(valor > 1000 , 'Alto','Baixo') as Gasto
from Pedidos
	order by valor;

  
-- 2 if mostrar cliente, forma pagto, informar à vista para pix ou parcelado

select nome_cliente as Cliente,forma_pagamento as 'Forma de Pagto.',
	if(forma_pagamento = 'Pix','À Vista','Parcelado') as Pagto
from Pedidos
	order by forma_pagamento;  
  

-- 3 case classificar pedidos <100 muito barato,100 a 500 médio, 500 a 2000 caro,> 2000 muito caro
  
select nome_cliente as Cliente,produto as Produto,valor as Valor,
	CASE
		WHEN valor < 100 THEN 'Barato'
		WHEN valor < 500 THEN 'Médio'
        WHEN valor <2000 THEN 'Caro'
        ELSE 'Muito Caro'
    END as 'Qualificação'
	
 from Pedidos
	ORDER BY valor;
  
  -- 4 case criar coluna cateroria produto, informática para notebook, mouse, teclado, webcam
  -- móveis para cadeira gamer
-- outros para restante

select nome_cliente as Cliente,produto as Produto,
	CASE
		WHEN produto IN ('Notebook','Mouse','Teclado','Webcam') THEN 'Informática'
        WHEN produto = 'Cadeira Gamer' THEN 'Móveis'
        ELSE 'Outros'
	END as 'Categorio de Produto'
    from Pedidos
		order by produto;


-- 5 ifnull mostrar cliente, desconto, se for null mostrar 0

select nome_cliente as Cliente, ifnull( desconto,0 )as Desconto from Pedidos;
