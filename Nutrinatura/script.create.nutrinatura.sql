-- drop schema nutrinatura_bd;

create schema nutrinatura_bd;
use nutrinatura_bd;

create table categoria(
cod_cat int not null auto_increment,
nome_cat varchar(15) not null,
constraint pk_categoria primary key (cod_cat));

create table produto(
cod_produto int not null auto_increment,
nome_produto varchar(20) not null,
prazo_validade tinyint not null,
cod_cat int not null,
constraint pk_produto primary key(cod_produto),
constraint fk_produto_categoria foreign key(cod_cat)
 references categoria(cod_cat));
 
create table ingrediente(
cod_ingrediente int not null auto_increment,
nome_ingrediente varchar(25) not null,
constraint pk_ingrediente primary key(cod_ingrediente));

create table composicao(
cod_comp int not null auto_increment,
quantidade varchar(3) not null,
cod_produto int not null,
cod_ingrediente int not null,
constraint pk_composicao primary key(cod_comp),
constraint fk_composicao_produto foreign key(cod_produto)
 references produto(cod_produto),
constraint fk_composicao_ingrediente foreign key(cod_ingrediente)
 references ingrediente(cod_ingrediente));
 
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
valor_final decimal(5,2) null,
cod_produto int not null,
cod_pedido int not null,
constraint pk_itemp primary key(cod_intemp),
constraint fk_intemp_produto foreign key(cod_produto) references produto(cod_produto),
constraint fk_intemp_pedido foreign key(cod_pedido) references pedido(cod_pedido));


use nutrinatura_bd;

insert into categoria(nome_cat) values 
("Bebida"), ("Sanduiche"), ("Torta"),
("Sobremesa"), ("Sopa");

insert into produto(nome_produto,prazo_validade,cod_cat) values 
("Suco de Manga",2,1),
("Torta de Castanha",5,3),
("Suco de Caju",1,1),
("Sopa de Cebola",3,5),
("Sopa de Repolho",4,5),
("Sanduiche de Gilo",2,2),
("Suco de Limao",1,1);

insert into ingrediente(nome_ingrediente) values
("Açucar Mascavo"), ("Limao"), ("Gilo"), ("Pao Integral"),
("Pao de Cereal"), ("Castanha"), ("Cebola"), ("Leite de Soja"),
("Manga"), ("Repolho"), ("Caju"), ("Tomate"), ("Manjericao"),
("Oregano");

insert into cliente (nome_cliente, cpf_cliente, email) values
("jose", "12345678912", "jose@gmail.com"),
("maria", "23456789012", "maria@yahoo.com"),
("Andre", "34567890123", "andre@hotmail.com"),
("Marcos", "45678901234", "marcos@gmail.com"),
("joana", "56789012345", "joana@gmail.com"),
("Vitor", "67890123456", "vitor@hotmail.com"),
("Gustavo", "78901234567", "gustavo@gmail.com"),
("Claudia", "89012345678","claudia@gmail.com");

insert into pedido(data_pedido, cod_cliente) values ('2021-05-20',2),
('2021-04-10',1),
('2021-03-05',4),
('2021-05-21',2),
('2021-06-10',3),
('2021-05-20',4);

insert into item_pedido(quantidade, preco, valor_final,cod_produto,cod_pedido) values
(2,10,null,1,2),
(3,2,null,3,4),
(1,4,null,2,1),
(2,7,null,5,6),
(4,5,null,7,3),
(4,10,null,2,5),
(2,9,null,4,6),
(3,10,null,2,2),
(1,8,null,6,3),
(1,4,null,6,4),
(3,4,null,7,2),
(2,6,null,5,1),
(2,6,null,5,2),
(4,5,null,1,1),
(5,10,null,3,2),
(3,5,null,3,5),
(2,10,null,1,3),
(2,6,null,2,2),
(1,2,null,4,4),
(1,7,null,1,6),
(2,8,null,4,6);




