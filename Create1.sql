
##Usar bd existente
use sgbd_empresa_rh;

##Criar tabela
create table tb_colaboradore(
id bigint auto_increment,
nome varchar(20) not null,
idade int not null,
genero varchar (255),
salario double not null,
funcao varchar (255),
primary key(id)
);

##Exibir tabelas
select * from tb_colaboradore;

##Inserir atributos
insert into tb_colaboradore(nome,idade,genero,salario,funcao) 
values ("Maria", 20, "no-binary", 4000, "AnalistaJr");

insert into tb_colaboradore(nome,idade,genero,salario,funcao) 
values ("José", 43, "Masc", 1100, "T.I");

insert into tb_colaboradore(nome,idade,genero,salario,funcao) 
values ("Rafaela", 53, "Fem", 4500, "Procuradora");

insert into tb_colaboradore(nome,idade,genero,salario,funcao) 
values ("Bruno", 18, "Masc", 900, "Estágiarie");

insert into tb_colaboradore(nome,idade,genero,salario,funcao) 
values ("Saline", 24, "Fem", 30000, "Assistente");

##Visualizar informações especificas
select * from tb_colaboradore where salario > 2000;
select * from tb_colaboradore where salario < 2000;


##Atualização de dados
update tb_colaboradore set nome = "Julia" where id = 1;
update tb_colaboradore set idade = 39  where id = 1;
update tb_colaboradore set salario = 24000 where id = 1;
update tb_colaboradore set funcao = "Psicologa" where id = 1;

##Deletar informações da tabela
delete from tb_colaboradore where id = 6;
















