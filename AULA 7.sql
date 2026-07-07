use DB_T04301_PAULO_SOSA;


CREATE TABLE TB_VENDAS (
	VEN_ID INT AUTO_INCREMENT PRIMARY KEY,
    VEN_DATA DATE,
    VEN_PROD INT,
    VEN_CLIENTE INT,
    VEN_VALOR decimal(5,2),
    FOREIGN KEY (VEN_PROD) REFERENCES TB_PRODUTOS(PRD_ID),
    FOREIGN KEY (VEN_CLIENTE) REFERENCES TB_CLIENTE(CLI_ID)
);

select * from mysql.user where user like 'paulo%';

create user 'paulo_sosa'@'%' identified by 'Nenhum';

grant all privileges on DB_T04301_PAULO_SOSA.* to 'paulo_sosa'@'%';

ALTER USER 'paulo_sosa'@'%' identified BY 'ALTERADA';

revoke select ON DB_T04301_PAULO_SOSA.TB_CLIENTES from 'paulo_sosa'@'%';
