create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categoria(
id bigint auto_increment,
remedios varchar(255) not null,
descricao varchar(255), 
primary key (id)
);
insert into tb_categoria(remedios,descricao) 
values("Sonrisal","Sonrisal é indicado para azia, má digestão e acidez estomacal que se apresentam concomitantemente com dor de cabeça.");
insert into tb_categoria(remedios,descricao) 
values("Dipirona","A dipirona é um anti-inflamatório não-esteroidal com ação analgésica e antitérmica. Ela é indicada para agir contra febre, dor de cabeça, dor muscular e cólicas.");
insert into tb_categoria(remedios,descricao) 
values("Nimesulida","Ajuda no tratamento de dor aguda, osteoartrite e dor menstrual.");
insert into tb_categoria(remedios,descricao) 
values("Rivotril","O Rivotril é um ansiolítico. Ou seja, um tranquilizante do grupo dos benzodiazepínicos. ");
insert into tb_categoria(remedios,descricao) 
values("Ibuprofeno","Ele efetivamente alivia a dor e inflamação em condições como dor muscular, dor nas articulações, dor menstrual e dor de dente.");
select * from tb_categoria;
delete from tb_categoria where id = 1;

create table tb_produtos(
id bigint auto_increment,
tipo varchar(255),
valores double not null,
marca varchar(255),
contraIndicacao varchar (255),
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_categoria(id)
);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Generico",12.50,"Medley","Alergicos",4);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Analgésicos",70.20,"Pfizer","Hipertensos",2);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Antitérmicos",68.00,"Astrazenica","Sistema nervoso",2);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Anti-heméticos",88.50,"Medley","Não contém",5);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Antidiarréicos",103.30,"Pfzer","Alergicos",3);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Generico",6.70,"Franks","Diabéticos",4);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Antitérmico",150.45,"Medley","Depressivos",3);
insert into tb_produtos(tipo,valores,marca,contraIndicacao,classe_id)
values("Generico",2.50,"Astrez","Alergicos",5);

select * from tb_produtos;
drop table tb_produtos;
delete from tb_produtos where id = 1;
select * from tb_produtos where valores > 50.00;
select * from tb_produtos where valores >= 5.00 and valores <= 60.00;

select tipo from tb_produtos where tipo like "%c%";

select * from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.classe_id;

select tb_produtos.tipo, tb_categoria.remedios, tb_categoria.descricao from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.classe_id where tipo = "Ibuprofeno";



