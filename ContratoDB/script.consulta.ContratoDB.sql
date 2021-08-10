
select nome_contratante, cnpj, estado from contratante; 

select * from contratante where estado like 'SE%';

select * from contratante where estado not like 'AL%' ;

select numero_contrato,data_inicio, situacao 
from contrato where situacao like "Quitado" or situacao like "Pagando";

select numero_contrato,data_inicio,data_fim,
 situacao 
from contrato where situacao in ("Quitado","Pagando");
/*__________________________________________________________________*/
select * from contrato where valor_contrato> 1500; 

select * from contrato where valor_contrato < 2000 and situacao = "Quitado";

select * from contrato where valor_contrato >= 1000 and valor_contrato <= 1500;

select * from contrato where valor_contrato >= 1500 and valor_contrato <= 3000 and situacao = "Pagando";

select * from contrato where year(data_fim) = 2022;

select * from contrato where year(data_inicio)= 2019 and situacao like "Pagando%";

select * from contrato where year(data_inicio) = 2020 and situacao like "Quitado%";

select * from contratante order by cidade;

select distinct cidade from contratante; 

select count(*) from contratante;

select count(situacao) from contrato where situacao = "Atrazo";

select count(situacao) from contrato where situacao = "Pagando";

select count(situacao) from contrato where situacao = "Quitado";

select situacao,count(*) from contrato group by situacao;
                          /*Consultas Parte 2 */
select estado from contratante group by estado;

select sum(valor_contrato) from contrato;

select avg(valor_contrato) from contrato;

select max(valor_contrato) from contrato;

select min(valor_contrato) from contrato;

select sum(valor_contrato) from contrato where situacao = "Quitado";

select avg(valor_contrato) from contrato where situacao = "Atrazo";

delete from servico where cod_servico = "5";

update contratante set cidade = "Lagarto" where cod_contratante = 3;

update contratante set cidade = "Arapiraca" where cod_contratante = 4;

delete from cobertura where cod_servico = 5;

update contrato  set situacao = "Atraso" where situacao in ("Atrazo") limit 2;

select * from contrato where situacao in ("Atraso")  ;

select * from servico;
select * from contratante;
select * from contrato;
select * from cobertura;
