use ContratoDB;


insert into servico(nome_servico)
values("Manutencao Computador"),
("Conserto Tomada"),
("Pintura Parede"),
("Instalacao Internet"),
("Troca Torneira"),
("Manutencao Arcondicionado");


-- insere dados na tabela contratante


insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Bodega do Ze", "11122233344401","Maceio","AL");
insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Frios Center", "11122233344402","Salvador","BA");
insert into contratante(nome_contratante,cnpj)
values("Padaria BomPao", "11122233344407");
insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Central da Carne", "11122233344403","Maceio","AL");
insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Pizzaria Antiga", "11122233344404","Recife","PE");
insert into contratante(nome_contratante,cnpj)
values("Bicho Brabo Pet", "11122233344408");
insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Sorveteria Quentinha", "11122233344405","Maceio","AL");
insert into contratante(nome_contratante,cnpj,cidade,estado)
values("Escola Online", "11122233344406","Salvador","BA");
insert into contratante(nome_contratante,cnpj)
values("Confeitaria Cacau", "11122233344409");


insert into contrato(valor_contrato, data_inicio, data_fim, situacao, cod_contratante)
values(1500,'20-05-10','21-05-09',"Quitado",3),
(2500,'19-04-03','22-06-10',"Quitado",3),
(1000,'20-06-10','21-10-09',"Pagando",2),
(1500,'20-05-11','21-05-09',"Atrazo",1),
(1250,'20-07-12','21-07-13',"Quitado",4),
(1350,'19-08-14','21-08-05',"Pagando",7),
(1300,'20-05-20','21-05-09',"Quitado",8),
(2500,'20-07-21','22-07-29',"Pagando",9),
(2000,'20-10-12','21-05-09',"Atrazo",2),
(1500,'20-03-13','22-08-19',"Pagando",5);


-- inserir dados na tabela cobertura
insert into cobertura values(1,4);
insert into cobertura values(1,6);
insert into cobertura values(2,4);
insert into cobertura values(3,6);
insert into cobertura values(4,2);
insert into cobertura values(5,1);
insert into cobertura values(6,5);
insert into cobertura values(7,4);
insert into cobertura values(8,5);
insert into cobertura values(9,4);
insert into cobertura values(10,3);
insert into cobertura values(1,2);
insert into cobertura values(2,2);
insert into cobertura values(3,5);
insert into cobertura values(4,4);
insert into cobertura values(6,6);
insert into cobertura values(3,3);