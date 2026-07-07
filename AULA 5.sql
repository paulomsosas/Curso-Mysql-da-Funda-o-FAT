create database IF NOT EXISTS DB_T04301_PAULO_SOSA;
USE DB_T04301_PAULO_SOSA;
CREATE table TB_CLIENTE (
	CLI_ID int primary key,
    CLI_NOME varchar(50),
    CLI_IDADE int
);
SELECT * FROM TB_CLIENTE;

insert into TB_CLIENTE(cli_id,cli_nome,cli_idade)
	values 
		(1,'Paulo',54),
        (2,'Ivanete',62);