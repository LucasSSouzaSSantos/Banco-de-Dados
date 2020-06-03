Manipular Registro, linha, Tupla

select * from gafanhotos;

obs.: tudo que estiver em linha é considerado registro e tudo que 
estiver em coluna são os atributos ou campos.

select * from cursos;
insert into cursos values
('1', 'HTML4','Curso de HTM5','40', '37','2014'),
('2', 'Algoritmo','Lógica de Programação','20', '15','2014'),
('3', 'Photoshop','Dicas de Photoshop','10', '20','2014'),
('4', 'PGP','Curso de PHP para Iniciantes','40', '20','2010'),
('5', 'Jarva','Introdução à Linguagem Java','10', '29','2000'),
('6', 'MySQL','Banco de Dados MySQL',' 30', '15','2016'),
('7', 'World','Curso Completo de World','40', '30','2016'),
('8', 'Sapateado','Danças Ritmicas','40', '30','2018'),
('9', 'Cozinha Árabe','Aprenda a fazer kibe','40', '30','2018'),
('10', 'YouTuber','Gerar polêmica e ganhar inscrito','5', '2','2018');

> Modificando a linha 1
update cursos 
set nome ='HTM5' 
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5';

> comando pra excluir linha
delete from cursos
where idcursos = '8';

> Apagar todas as linhas da tabela 
trucate table cursos;



