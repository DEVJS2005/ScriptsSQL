select *  from contrato where situacao in ("Quitado");

update contrato set valor_contrato= valor_contrato + 100 where situacao = "Atraso" limit 2;

delete from contrato where cod_contratante in (3);
delete from contrato where situacao in ("Quitado") limit 4;