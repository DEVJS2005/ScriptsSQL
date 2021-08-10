Create database ContratoDB;

use ContratoDB;

create table contratante(
cod_contratante int not null auto_increment primary key,
nome_contratante varchar(45) not null,
cnpj char(14) not null unique,
cidade varchar(40) not null default'Aracaju',
estado char(2) not null default 'SE'
);
create table contrato(
numero_contrato int primary key not null auto_increment,
valor_contrato decimal(8,2) not null,
data_inicio date not null,
data_fim date not null,
situacao varchar(8) not null,
cod_contratante int not	null,
constraint fk_contrato_contratante foreign key(cod_contratante) references contratante(cod_contratante)
);
create table servico(
cod_servico int primary key not null auto_increment,
nome_servico varchar(30) not null
);
create table cobertura(
numero_contrato int not null,
cod_servico int not null,
primary key(numero_contrato,cod_servico),
constraint fk_cobertura_contrato foreign key(numero_contrato) references contrato(numero_contrato),
constraint fk_cobertura_servico foreign key(cod_servico) references servico(cod_servico)
);