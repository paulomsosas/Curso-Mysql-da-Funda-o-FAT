use DB_T04301_PAULO_SOSA;

CREATE TABLE TB_VISITANTES
	(
    VIS_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIS_NOME VARCHAR(50) NOT NULL,
    VIS_CIDADE VARCHAR(50) NOT NULL,
    VIS_IDADE INT,
    VIS_DIAVISITA DATE
    );

INSERT INTO TB_VISITANTES(VIS_NOME, VIS_CIDADE, VIS_IDADE, VIS_DIAVISITA)
	VALUES
		('Paulo','Poços de Caldas',54,'25-06-26'),
        ('Ivanete','Xique-Xique',62,'25-06-26'),
        ('Daniel','São Paulo',31,'25-06-26'),
        ('Chris','São Paulo',29,'25-06-26'),
        ('Fábio','São Paulo',50,'25-06-26'),
        ('kAT','São Paulo',4,'25-06-26')
        ;
            
    select * from TB_VISITANTES;
    
    select * from TB_VISITANTES where VIS_CIDADE LIKE 'Poços%';
    
    START TRANSACTION;
    
    UPDATE TB_VISITANTES SET VIS_CIDADE = 'Coração' where VIS_NOME ='Ivanete';
    
    deleTE	FROM TB_VISITANTES WHERE VIS_IDADE = 4;
    
    SELECT * FROM TB_VISITANTES;
    
    ROLLBACK;