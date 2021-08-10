use nutrinatura_bd;

create table cliente( 
cod_cliente int not null auto_increment,
nome_cliente varchar(35) not null,
cpf_cliente char(11) unique not null,
email varchar(50) not null,
constraint pk_cliente primary key(cod_cliente)
);

create table pedido(
cod_pedido int not null auto_increment,
data_pedido date not null,
cod_cliente int not null,
constraint pk_pedido primary key(cod_pedido),
constraint fk_pedido_cliente foreign key(cod_cliente) references cliente(cod_cliente)
);

create table item_pedido(
cod_intemp int not null auto_increment,
quantidade int not null,
preco decimal(5,2) not null,
valor_final decimal(5,2) not null,
cod_produto int not null,
cod_pedido int not null,
constraint pk_itemp primary key(cod_intemp),
constraint fk_intemp_produto foreign key(cod_produto) references produto(cod_produto),
constraint fk_intemp_pedido foreign key(cod_pedido) references pedido(cod_pedido)
);