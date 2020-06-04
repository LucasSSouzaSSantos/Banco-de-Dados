create table pessoa_assiste_curso(
    id int not null auto_increment,
    data date,
    idpessoas int,
    idcursos int,
    primary key (id),
    foreign key (idpessoas) references pessoas(id),
    foreign key (idcursos) references cursos(idcursos)    
) default charset = utf8;

insert into pessoa_assiste_curso (default,'1','2');

select * from pessoas p join pessoa_assiste_curso a on p.id =
a.idpessoas;

select p.nome, c.nome from pessoas p join pessoa_assiste_curso a on p.id = a.idpessoas join cursos c 
on a.idcursos = c.idcursos;

	  
	   0	 		
	   -			
	 / | \				
	   |				
	   ->>			
	  / \			
	_/   \_				


	   @			
	   -			
	 / | \				
	   |				
	   #			
	  / \			
	_/   \_













