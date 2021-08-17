/*
DELIMITER $$
CREATE PROCEDURE 
BEGIN

END $$
DELIMITER ;
*/
select * from aluno;
select * from disciplina;
select * from boletim;


delimiter $$
create procedure insertAluno(in matriculaA int, nomeA varchar(30),serieA char(1))
BEGIN	
insert into aluno values (matriculaA,nomeA,serieA);
END $$
delimiter ; 
call insertAluno(110,"André Silva",1);

delimiter $$
create procedure AlterarSerie(in SerieA char(1), matriculaA int)	
begin
update aluno set serie = serieA where matricula = matriculaA; 
end $$
delimiter ;
call AlterarSerie(2,105)[

DELIMITER $$
CREATE PROCEDURE ConsultaAluno(in matriculaA int)
BEGIN
select * from aluno	where matricula = matriculaA;
END $$
DELIMITER ;

call ConsultaAluno(102);
call ConsultaAluno(104);
call ConsultaAluno(110);

delimiter $$
create procedure ConsultAlunosSerie(in serieA char)
begin
select * from aluno where serie = serieA;
end $$
delimiter ;

call ConsultAlunosSerie(1);
call ConsultAlunosSerie(2);
call ConsultAlunosSerie(3);

delimiter $$
create procedure CadastroDisciplina(in codDisci int,nomeDisci varchar(40),cargaH int)
begin 
insert into disciplina values (codDisci,nomeDisci,cargaH);
end $$
delimiter ;

call CadastroDisciplina(5,"Programação Orientada a Objeto",10);
call CadastroDisciplina(6,"Teste de Software",10);

delimiter $$
create procedure AlterarCargaH(in cargaH int,codDiscip int)
begin
update disciplina set carga_horaria = cargaH where cod_discip = codDiscip;
end $$
delimiter ;

call AlterarCargaH(200,5);
call AlterarCargaH(80,6);

delimiter $$
create procedure criarBoletim(in codBoletim int, matriculaA int, codDiscip int)
begin
insert into boletim values (codBoletim,null,null,matriculaA,codDiscip);
end $$
delimiter ;

call criarBoletim(34,110,5);
call criarBoletim(35,110,6);
call criarBoletim(36,110,3);


delimiter $$
create procedure lancarNotaUM(in nota_umA decimal(3,1),matriculaA int,codDiscip int)
begin
update boletim set nota_um = nota_umA where matricula = matriculaA and cod_discip = codDiscip;  
end $$ 
delimiter ;
call lancarNotaUM(5.0,101,1);
call lancarNotaUM(6.0,104,2);

delimiter $$
create procedure lancarNotaDOIS(in nota_doisA decimal(3,1),matriculaA int,codDiscip int)
begin
update boletim set nota_um = nota_doisA where matricula = matriculaA and cod_discip = codDiscip;  
end $$ 
delimiter ;
call lancarNotaDOIS(2.0,105,4);
call lancarNotaDOIS(5.0,106,1);
delimiter $$
create procedure lancarNotas(in nota_umA decimal(3,1),nota_doisA decimal(3,1),matriculaA int,codDiscip int)
begin
update boletim set nota_um = nota_umA,nota_dois = nota_doisA   where matricula = matriculaA and cod_discip = codDiscip;  
end $$ 
delimiter ;
call lancarNotas(7.0,9.6,101,3);
call lancarNotas(5.0,9.6,106,3);
call lancarNotas(7.2,9.4,108,2);
call lancarNotas(7.9,9.7,108,3);
call lancarNotas(8.0,9.0,110,5);
call lancarNotas(4.0,8.6,110,6);
call lancarNotas(7.0,9.6,110,3);

select * from boletim where nota_dois is null;

DELIMITER $$
CREATE PROCEDURE emitirBoletim(in mat int)
begin
select cod_boletim, nome_discip, nome, nota_um, nota_dois, (nota_um + nota_dois)/2 as media
from boletim
inner join disciplina on boletim.cod_discip = disciplina.cod_discip
inner join aluno on boletim.matricula = aluno.matricula
where boletim.matricula = mat;
end
$$
DELIMITER ;

call emitirBoletim(109);

 