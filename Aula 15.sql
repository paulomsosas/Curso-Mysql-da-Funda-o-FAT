/*
use DB_T04301_PAULO_SOSA;

-- ELIMINANDO A TABELA CASO JA EXISTA
DROP TABLE IF EXISTS TB_PRODUTOS_PAD;

-- CRIANDO A TABELA
CREATE TABLE TB_PRODUTOS_PAD (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(5,2),
    estoque INT
);

-- INSERT PARA RESOLVER OS EXERCICIOS
INSERT INTO TB_PRODUTOS_PAD (nome, preco, estoque) VALUES
-- Pães
('Pão Francês', 1.00, 50),
('Pão de Queijo', 2.50, 15),
('Pão Integral', 6.00, 18),
('Pão Australiano', 8.50, 12),

-- Bolos
('Bolo de Chocolate', 8.00, 10),
('Bolo de Cenoura', 6.50, 25),
('Bolo Gelado', 11.00, 5),
('Bolo de Fubá', 5.00, 22),
('Mini Bolo de Morango', 7.50, 8),

-- Salgados
('Coxinha', 4.50, 30),
('Esfiha', 3.00, 28),
('Quibe', 3.50, 35),
('Empada', 6.00, 14),
('Croissant', 7.00, 40),
('Croissant de Chocolate', 9.50, 20),

-- Bebidas
('Café', 3.50, 30),
('Café Expresso', 5.00, 18),
('Suco Natural', 4.00, 18),
('Suco de Laranja', 6.50, 10),
('Refrigerante', 5.50, 22),
('Água Mineral', 2.00, 60),

-- Extras
('Sanduíche Natural', 9.00, 12),
('Sanduíche de Frango', 10.00, 9),
('Torrada', 2.50, 25);

*/
select * from TB_PRODUTOS_PAD where preco>=5 order by preco;

select * from TB_PRODUTOS_PAD where nome like '%bolo%';

select * from TB_PRODUTOS_PAD where estoque < 20;

-- parte 2

select * from TB_PRODUTOS_PAD where preco BETWEEN 3 and 10;
select * from TB_PRODUTOS_PAD where preco >= 3 and preco <= 10;

select * from TB_PRODUTOS_PAD where nome like 'pao%';

select * from TB_PRODUTOS_PAD where nome like	'%croissant%' and estoque >= 30;