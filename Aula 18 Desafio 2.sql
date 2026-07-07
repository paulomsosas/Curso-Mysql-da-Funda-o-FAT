use DB_T04301_PAULO_SOSA;

-- CRIANDO A TABELA FUNCIONARIOS
CREATE TABLE tb_funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    salario DECIMAL(10,2)
);

-- CRIANDO A TABELA FAIXA
CREATE TABLE tb_faixa_salarial (
    id_faixa INT PRIMARY KEY,
    nivel VARCHAR(50),
    salario_min DECIMAL(10,2),
    salario_max DECIMAL(10,2)
);


-- Funcionários
INSERT INTO tb_funcionarios (id_funcionario, nome_funcionario, salario) VALUES
(1, 'Ana', 1800.00),
(2, 'Bruno', 2500.00),
(3, 'Carlos', 3200.00),
(4, 'Daniela', 4500.00),
(5, 'Eduardo', 5200.00),
(6, 'Fernanda', 7000.00);

-- Faixas salariais
INSERT INTO tb_faixa_salarial (id_faixa, nivel, salario_min, salario_max) VALUES
(1, 'Junior', 0, 2000),
(2, 'Pleno', 2001, 5000),
(3, 'Senior', 5001, 99999);


-- mostrar nome de funcionários com nível salarial (junior, pleno ou senior)

select nome_funcionario as Funcionário, salario as Salário, nivel as Nível from tb_funcionarios as f
	join
tb_faixa_salarial as s on f.salario BETWEEN s.salario_min and s.salario_max;