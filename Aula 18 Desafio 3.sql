use DB_T04301_PAULO_SOSA;

-- ELIMANDO TABELAS COASO JA EXISTAM
DROP TABLE IF EXISTS tb_departamentos;
DROP TABLE IF EXISTS tb_funcionarios;
DROP TABLE IF EXISTS tb_faixa_salarial;

-- CRIANDO A TABELA DEPART
CREATE TABLE tb_departamentos (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100)
);

-- CRIANDO A TABELA FUNCIONARIO
CREATE TABLE tb_funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    salario DECIMAL(10,2),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES tb_departamentos(id_departamento)
);

-- CRIANDO A TABELA FAIXA SALARIAL
CREATE TABLE tb_faixa_salarial (
    id_faixa INT PRIMARY KEY,
    nivel VARCHAR(50),
    salario_min DECIMAL(10,2),
    salario_max DECIMAL(10,2)
);

-- Departamentos
INSERT INTO tb_departamentos (id_departamento, nome_departamento) VALUES
(1, 'Financeiro'),
(2, 'RH'),
(3, 'TI'),
(4, 'Vendas'),
(5, 'Inovação');

-- Funcionários
INSERT INTO tb_funcionarios (id_funcionario, nome_funcionario, salario, id_departamento) VALUES
(1, 'Ana', 1800.00, 1),
(2, 'Bruno', 2500.00, 4), -- Vendas (Pleno)
(3, 'Carlos', 3200.00, 2),
(4, 'Daniela', 4500.00, 4), -- Vendas (Pleno)
(5, 'Eduardo', 5200.00, 3),
(6, 'Fernanda', 7000.00, 4);

-- Faixas salariais
INSERT INTO tb_faixa_salarial (id_faixa, nivel, salario_min, salario_max) VALUES
(1, 'Junior', 0, 2000),
(2, 'Pleno', 2001, 5000),
(3, 'Senior', 5001, 99999);
 

-- listar todos funcionário pleno do dep. vendas

SELECT nome_departamento as Departamento, nome_funcionario as Funcionário, nivel as Nível from tb_funcionarios as f
	join
tb_faixa_salarial as s on f.salario BETWEEN s.salario_min and s.salario_max
	join
tb_departamentos as d on f.id_departamento=d.id_departamento
	where
s.nivel = 'pleno' 
	and
d.nome_departamento like '%vendas%';


