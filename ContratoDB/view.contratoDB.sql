select * from contrato;

create view numero_contrato AS
select nome_contratante,numero_contrato, contrato.cod_contratante,valor_contrato,situacao,data_inicio,data_fim 
from contrato inner join contratante 
on contrato.cod_contratante = contratante.cod_contratante;

create view cod_nome AS
select servico.nome_servico, cobertura.cod_servico, count(*) from cobertura 
inner join servico on cobertura.cod_servico = servico.cod_servico group by cod_servico; 

create view contrato_contratante AS
select  nome_contratante, contrato.cod_contratante, count(*) from contrato 
inner join contratante on contrato.cod_contratante  = contratante.cod_contratante
group by cod_contratante ;

create view numero_contrato AS
select  nome_servico,valor_contrato, situacao,cod_contratante 
from contrato inner join servico on contrato.cod_contratante = servico.cod_servico ;

select * from servico;

create view servico_count AS
select servico.nome_servico, cobertura.cod_servico, count(*) from cobertura 
inner join servico on cobertura.cod_servico = servico.cod_servico group by cod_servico;

select * from servico_count;

select * from numero_contrato;