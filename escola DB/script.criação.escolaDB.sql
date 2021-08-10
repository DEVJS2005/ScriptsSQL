create schema escolaDB;

use escolaDB;


create table Aluno(
matricula int primary key not null,
nome varchar(30) not null,
serie char(1)
);

create table Boletim(
cod_discip int primary key not null,
nome_discip varchar(20) not null
);