create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categorias(
id bigint auto_increment,
aves varchar(255),
frutas varchar(255),
descricao varchar(255),
primary key (id)
);

insert into tb_categorias(aves,frutas,descricao) 
values("Frango","Melão","Compre 1 ganhe o outro.");
insert into tb_categorias(aves,frutas,descricao) 
values("Peru","Mamão","Dois pelo preço de 1");
insert into tb_categorias(aves,frutas,descricao) 
values("Codorna","Banana","Compre 1 ganhe o outro.");
insert into tb_categorias(aves,frutas,descricao) 
values("Passarinha","Uva","Compre 1 ganhe o outro.");
insert into tb_categorias(aves,frutas,descricao) 
values("Galinha","Cajú","Compre 1 ganhe o outro.");
select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor double not null,
quantidade int not null,
qualidade char(5) not null,
id_classe bigint,
primary key(id),
foreign key (id_classe) references tb_categorias(id)
);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Seara",68.90,10,"A",5);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Mauricea",180.90,20,"B",3);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Aves.com",289.0,2,"E",2);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Bankete",30.90,1,"F",1);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Seara",68.90,10,"A",4);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Seara",68.90,10,"A",3);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Mauricea",503.90,110,"A",3);
insert into tb_produtos(nome,valor,quantidade,qualidade,id_classe)
values("Seara",347.90,38,"A",4);
select * from tb_produtos;
select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor >= 50.00 and valor <= 150.00;
select nome,valor,quantidade,qualidade from tb_produtos where nome like "%C%";

select * from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_classe;
select tb_categorias.aves, tb_categorias.frutas from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_classe;
