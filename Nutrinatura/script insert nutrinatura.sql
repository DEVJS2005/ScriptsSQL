use nutrinatura_bd;

insert into categoria(nome_cat) value ("Bebida");
insert into categoria(nome_cat) value ("Sanduiche");
insert into categoria(nome_cat) value ("Torta"),
("Sobremesa"),("sopa");

insert into produto(nome_produto,prazo_validade,cod_cat) values 
("Suco de Manga","2 dias",1), 
(" Torta de Castanha","5 dias",3), 
("Suco de caju","1 dia",1),
("Sopa de Cebola","3 dias",4),
("Sopa de Repolho","4 dias",4),
("Sanduiche de Gilo","2 dias",5), 
("Suco de limão","1 dia",1);

insert into ingrediente(nome_ingrediente) values ("Açucar Mascavo"),
("Gilo"),
("Pao integral"),
("Pao cereal"),
("Castanha"),
("Cebola"),
("Leite de Soja"),
("Manga"),
("Repolho"),
("Caju"),
("Tomate"),
("Manjericao"),
("Oregano");

select * from ingrediente; 
