START TRANSACTION ;

update TB_PAD_PRODUTOS set PRD_VALOR=prd_valor*1.13;

commit;

select * from TB_PAD_PRODUTOS;

select prd_nome as Original, upper(prd_nome) as Alterado from TB_PAD_PRODUTOS;

select prd_nome as Original, lower(prd_nome) as Alterado from TB_PAD_PRODUTOS;

select prd_nome as Original, length(prd_nome) as  'Quant.Caracteres' from TB_PAD_PRODUTOS;

select prd_nome as Original, left(prd_nome,3) as Primeiras from TB_PAD_PRODUTOS;

select prd_nome as Nome, PRD_VALOR as Valor,  round(prd_valor,0) as Arredondado from TB_PAD_PRODUTOS;



select *,curdate() as Data from TB_PAD_PRODUTOS;