use DB_T04301_PAULO_SOSA;

/*
CREATE TABLE PEDIDOS20 (
	PED_ID INT PRIMARY KEY,
    PED_CLIENTE VARCHAR(50) NOT NULL,
    PED_PRODUTO VARCHAR(50) NOT NULL,
    PED_VALOR DECIMAL(5,2) NOT NULL,
    PED_DATA_PEDIDO DATE
);

INSERT INTO PEDIDOS20(PED_ID,PED_CLIENTE,PED_PRODUTO,PED_VALOR,PED_DATA_PEDIDO) VALUES
(1, 'Ana', 'Hamburguer', 12.50, '2025-07-10'),
(2, 'Lucas', 'Coxinha', 5.00, '2025-07-10'),
(3, 'Beatriz', 'Suco', 4.00, '2025-07-10'),
(4, 'Carlos', 'Hamburguer', 12.50, '2025-07-10'),
(5, 'Ana', 'Refrigerante', 6.00, '2025-07-11'),
(6, 'Lucas', 'Hamburguer', 12.50, '2025-07-11'),
(7, 'Beatriz', 'Refrigerante', 6.00, '2025-07-11'),
(8, 'Carlos', 'Coxinha', 5.00, '2025-07-11'),
(9, 'Ana', 'Coxinha', 5.00, '2025-07-12'),
(10, 'Lucas', 'Suco', 4.00, '2025-07-12'),
(11, 'Beatriz', 'Hamburguer', 12.50, '2025-07-12'),
(12, 'Carlos', 'Refrigerante', 6.00, '2025-07-12'),
(13, 'Ana', 'Hamburguer', 12.50, '2025-07-13'),
(14, 'Lucas', 'Coxinha', 5.00, '2025-07-13'),
(15, 'Beatriz', 'Coxinha', 5.00, '2025-07-13'),
(16, 'Carlos', 'Suco', 4.00, '2025-07-13'),
(17, 'Ana', 'Suco', 4.00, '2025-07-14'),
(18, 'Lucas', 'Refrigerante', 6.00, '2025-07-14'),
(19, 'Beatriz', 'Suco', 4.00, '2025-07-14'),
(20, 'Carlos', 'Hamburguer', 12.50, '2025-07-14'),
(21, 'Ana', 'Coxinha', 5.00, '2025-07-15'),
(22, 'Lucas', 'Hamburguer', 12.50, '2025-07-15'),
(23, 'Beatriz', 'Refrigerante', 6.00, '2025-07-15'),
(24, 'Carlos', 'Coxinha', 5.00, '2025-07-15'),
(25, 'Ana', 'Hamburguer', 12.50, '2025-07-16'),
(26, 'Lucas', 'Coxinha', 5.00, '2025-07-16'),
(27, 'Beatriz', 'Hamburguer', 12.50, '2025-07-16'),
(28, 'Carlos', 'Suco', 4.00, '2025-07-16'),
(29, 'Lucas', 'Suco', 4.00, '2025-07-17'),
(30, 'Beatriz', 'Coxinha', 5.00, '2025-07-17');
 
 */
 
 -- total pedidos clientes
 
 select PED_CLIENTE, count(*) from PEDIDOS20
	GROUP  by
PED_CLIENTE;

