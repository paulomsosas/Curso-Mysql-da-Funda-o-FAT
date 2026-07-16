-- Criação da tabela
CREATE TABLE TB_LIVROS (
    id_livro INT PRIMARY KEY,
    livro VARCHAR(150),
    autor VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Inserção de dados (Literatura Brasileira)
INSERT INTO tb_livros (id_livro, livro, autor, preco) VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 29.90),
(2, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 34.50),
(3, 'O Cortiço', 'Aluísio Azevedo', 27.80),
(4, 'Capitães da Areia', 'Jorge Amado', 31.20),
(5, 'Grande Sertão: Veredas', 'João Guimarães Rosa', 45.00),
(6, 'Vidas Secas', 'Graciliano Ramos', 28.90),
(7, 'Iracema', 'José de Alencar', 22.50);

select upper(livro) as Livro, upper(autor) as Autor, preco as Preco from tb_livros;
select lower(livro) as Livro, lower(autor) as Autor, preco as Preco from tb_livros;
select livro, length(livro) from tb_livros;
select livro, right(livro,5) from tb_livros;
SELECT curdate();
select now();
select *,replace(autor,'a','b') as autor2 from tb_livros;

drop TABLE funcionarios;
CREATE TABLE funcionarios  (
    id INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    nome_completo VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE,
    email VARCHAR(100)
);

drop table vendas;
CREATE TABLE vendas (
    id INT,
    id_funcionario INT,
    data_venda DATE,
    valor DECIMAL(10,2),
    quantidade INT,
    observacao VARCHAR(100)
);
 
 INSERT INTO funcionarios VALUES
(1, ' Ana ', 'Silva', NULL, 'Analista', 3000.00, '2023-01-10', 'ana.silva@empresa.com'),
(2, 'Bruno', 'Souza', NULL, 'Gerente', 8000.00, '2020-06-20', NULL),
(3, 'Carlos', ' Pereira ', NULL, 'Analista', 3200.00, '2022-03-15', 'carlos.pereira@empresa.com'),
(4, 'Daniela', 'Costa', NULL, 'Diretora', 15000.00, '2018-11-01', NULL),
(5, 'Eduardo', 'Almeida', NULL, 'Estagiário', 1500.00, '2025-01-05', 'eduardo.almeida@empresa.com');
 
 INSERT INTO vendas VALUES
(1, 1, '2025-04-01', 100.00, 2, ' venda normal '),
(2, 2, '2025-04-10', 500.00, 5, 'Venda urgente'),
(3, 2, '2025-04-15', 200.00, 0, 'erro quantidade'),
(4, 3, '2025-03-20', 50.00, 1, NULL),
(5, 4, '2025-02-10', 1000.00, 10, '  desconto aplicado  '),
(6, 5, '2025-04-18', 80.00, 1, 'nova venda');
 
 select nome, sobrenome, concat(trim(nome),' ',sobrenome) from funcionarios;
 
 update funcionarios set nome=trim(nome),sobrenome=trim(sobrenome);
 update funcionarios set nome_completo= concat(nome,' ',sobrenome);
 
 
 select * from funcionarios;
 select * from vendas;

 
 select *,replace(observacao,'venda','pedido') from vendas;