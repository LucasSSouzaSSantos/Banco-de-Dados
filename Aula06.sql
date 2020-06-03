describe ou disc cadastro;

> Adicionar um novo compo dentro da tabela pessoa:

alter table pessoas 
add column profissao varchar(10);

> Eliminar uma coluna:

drop column profissao;

> adicionar a coluna profissao depois da coluna nome da tabela pessoa:

alter table pessoas
add column varchar(10) after nome;

> adicionar a coluna codigo na primeira posição

alter table pessoas
add column codigo int first;

obs.: A palavra column é opcional

> Modificando a quantidade de caractere do campo profissão

alter table pessoas
modify column profissao varchar(20) not null default '';

> modicando o nome da coluna:

alter table pessoas
change column profissao prof varchar(20);

> Modificar o nome da tabela
alter table pessoas
rename to gafanhotos;

Mais uma tabela...

create table if not exists cursos(
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2020'
) default charset = utf8;

alter table cursos
add column idcursos int first;

alter table cursos
add primary key(idcursos);

> Apagando uma tabela

drop table cursos; 
