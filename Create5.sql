create database db_generation_game_online;
use  db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);
drop table tb_classes;

  create table tb_personagens(
  id bigint auto_increment,
  nome varchar(255) not null,
  cidade varchar (255),
  ataque double not null,
  defesa double not null,
  id_classe bigint,
  primary key (id),
  foreign key (id_classe) references tb_classes(id)
  );
  drop table tb_personagens;
  
insert into tb_classes (classe,descricao) 
values('mago(a/e)','Tem como características principais a Inteligência, que é usado para conjurar suas magias' );
insert into tb_classes (classe,descricao) 
values('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe,descricao) 
values('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestass' );
insert into tb_classes (classe,descricao) 
values('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe,descricao) 
values('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );
select * from tb_classes;
select * from tb_personagens;

insert into tb_personagens (nome,ataque,defesa,id_classe) values ('ash',2000,1500,3);
insert into tb_personagens (nome,cidade,ataque,defesa,id_classe) values ('xena','atenas',1000,1900,5);
insert into tb_personagens (nome,cidade,ataque,defesa,id_classe) values ('thor','argasd',500,3);
insert into tb_personagens (nome,cidade,ataque,defesa,id_classe) values ('chapolin','mexico',1200,3000,2);
insert into tb_personagens (nome,cidade,ataque,defesa,id_classe) values ('lindinha','Townsville',2000,4500,3);


select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa > 1000 and defesa < 2000;
select * from tb_personagens where nome like '%or%';


select * from tb_classes;
select * from tb_personagens;

select * from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.id_classe;

select * from tb_personagens right join 
tb_classes on tb_classes.id = tb_personagens.id_classe;


select tb_personagens.nome, tb_classes.classe, tb_classes.descricao from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.id_classe;

select tb_personagens.nome, tb_classes.classe, tb_classes.descricao from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.id_classe where classe = 'elfo(a/e)';
