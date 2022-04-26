create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
cardapio char(50) not null,
descricao varchar(255) not null,
primary key (id)
);
insert into tb_categorias(cardapio,descricao) 
values("Doce", "Exibição do menu adocicado");
insert into tb_categorias(cardapio,descricao) 
values("Meio-doce", "Exibição do menu agridoce");
insert into tb_categorias(cardapio,descricao) 
values("Amarga", "Exibição do menu contendo sabores amargos");
insert into tb_categorias(cardapio,descricao) 
values("Salgada", "Exibição do menu contendo sabores salgados");
insert into tb_categorias(cardapio,descricao) 
values("Meio-salgada", "Exibição do menu com pizzas meio a meio");



create table tb_pizzas(
id bigint,
sabor char(50) not null,
tamanho char(50) not null,
preferencias char(50),
formato char(50) not null,
pizza_id bigint,
foreign key (pizza_id) references tb_categorias(id)
);

alter table tb_pizzas add valor int not null;
alter table tb_pizzas change valor valor varchar(255);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Chocolate","pequena","sem MM's","Quadrada",1,29.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Chocolate com solgadinho","Grande","Mais salgadinho e menos chocolate","Redonda",2,32.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Beringela","pequena","Com bastante azeite","Quadrada",3,24.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Portuguesa","Média","Com muita cebola","Retangular",4,22.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Chocolate duplo", "Grande","Com + Nutella","Quadrada",5,41.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Batata doce com manteiga","Média","Manteiga integral","Redonda",5,25.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor)
values("Mussarela","Grande","Sem cebora","Redonda",4,42.90);

insert into tb_pizzas(sabor,tamanho,preferencias,formato,pizza_id,valor) 
values("Charque","pequena","De primeira","Quadrada",4,16.90);

select * from tb_pizzas;

select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor > 50.00 and 100.00;

select sabor from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id;

select tb_pizzas.sabor, tb_categorias.cardapio, tb_categorias.descricao from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id where categorias = 'Salgada';