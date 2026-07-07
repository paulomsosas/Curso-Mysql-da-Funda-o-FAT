
/* TABELAS

CREATE TABLE tb_clientes_eletronic ( 
            id INT PRIMARY KEY AUTO_INCREMENT, 
            nome VARCHAR(50), 
            cidade VARCHAR(50), 
            idade INT, 
            ativo BOOLEAN 
); 


CREATE TABLE tb_produtos_eletronic ( 
          id INT PRIMARY KEY AUTO_INCREMENT, 
          nome VARCHAR(100), 
          categoria VARCHAR(50), 
          preco DECIMAL(10,2) 
);

INSERT INTO tb_clientes_eletronic (nome, cidade, idade, ativo) 
VALUES ('João', 'São Paulo', 25, 1), 
               ('Maria', 'Santos', 30, 1), 
               ('Bruno', 'Campinas', 19, 0), 
               ('Ana', 'São Paulo', 40, 1), 
               ('Carla', 'Campinas', 25, 0), 
               ('Marcos', 'São Bernardo', 33, 1),
               ('Fernanda', 'Santos', 22, 1); 


INSERT INTO tb_produtos_eletronic (nome, categoria, preco) 
VALUES ('Fone Bluetooth', 'Eletrônicos', 120.00), 
               ('Mouse Gamer', 'Informática', 80.00),
               ('Capa Celular', 'Acessórios', 30.00), 
               ('Notebook', 'Eletrônicos', 2500.00),
               ('Teclado', 'Informática', 150.00),
               ('Carregador Turbo', 'Acessórios', 60.00), 
               ('Suporte de Celular', 'Acessórios', 25.00); 
               */
 
 SELECT * FROM tb_produtos_eletronic WHERE PRECO >= 100;
 
 SELECT * FROM tb_clientes_eletronic WHERE IDADE > 25 and CIDADE LIKE '%SAO PAULO%' OR CIDADE LIKE '%CAMPINAS%' AND IDADE > 25;
 
 SELECT * FROM tb_produtos_eletronic WHERE CATEGORIA IN('ACESSÓRIOS','INFORMÁTICA');
 
 