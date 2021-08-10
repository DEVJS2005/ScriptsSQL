
select * from produto;

select * from categoria;

select * from ingrediente;

select * from produto where	cod_produto = 23;

select * from produto
 where cod_produto > 20
    and cod_produto < 25;
    
select * from produto
  where cod_produto
    between 22 and 25;

select * from produto 
      where prazo_validade in ("2 d","4 d");
      
select * from produto 
  where prazo_validade = "2 d" or cod_cat = 3;
  
select * from produto where nome_produto like "Suco%";
/*
Criar a consulta que retorne todas as opções de sopas do cardápio.
*/

select * from produto where nome_produto like "Sopa%";


select * from produto where nome_produto like "%a" order by nome_produto desc;

select * from produto where cod_cat order by cod_cat,nome_produto desc;




