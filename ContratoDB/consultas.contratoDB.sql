select * from contrato where situacao in ("Quitado");

delete from contrato where situacao in ("Quitado") limit 4;