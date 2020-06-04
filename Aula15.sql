A base teoria dessa aula está na aula14.sql

MyISAM
InnoDB
XtraDB

As InnoDB e XtraDB suportam as ACID

	      Atomica
	      Consistência
	      Isolamento
	      Durabilidade

		   
+---------+	    /\           +---------+ 
|Pessoas  |n_______/  \_________1|curso    |
+---------+        \  /          +---------+
|		    \/  		|
|       	  prefere  		|
|		  	                |		
|	                                |                          
|--°id(ch primária)   			|--°idcurso(ch primária)	
|--°nome	      			|--°nome	
|--°profissao	      			|--°descricao	
|--°nascimento	      			|--°carga
|--°sexo	      			|--°totaulas
|--°peso	      			|--°ano
|--°altura	      
|--°nacionalidade
|--°idcurso(ch estrangeira)     

Adicicionando a foreign key

Adicicionando um novo campo e nesse novo campo será a nossa chave 
estrangeira.
alter table pessoas
add column cursopreferido int;

informando que a chave estrangeira é cursopreferido
alter table pessoas 
add foreign key (cursopreferido)
references cursos(idcurso);

No campo chave(Key) aparece agora a palavra MUL, especificando que é
uma chave multipla que seria uma chave estrangeira.

Agora vamos adicionar os cursos de cada aluno:
update pessoas set cursopreferido = '6' where id = '1';

Integridade Referencial

delete from cursos where idcursos = '6';

fazendo um junção entre a tabela cursos e pessoas;

select pessoas.nome, cursos.nome, cursos.ano
from pessoas join cursos on cursos.idcursos = pessoas.cursopreferido;

+----+--------------------------------+-----------+------+
| id | nome                           | nome      | ano  |                                           
+----+--------------------------------+-----------+------+ 
|  1 | Lucas                          | MySQL     | 2016 |                                          
|  2 | Joao                           | HTML5     | 2014 |                                          
|  3 | Maria                          | Algoritmo | 2014 |                                          
|  4 | Ana                            | Photoshop | 2014 |                                          
|  5 | Luiza                          | PHP       | 2015 |                                          
|  6 | Luiz                           | Java      | 2015 |                                          
|  7 | Carmelo                        | MySQL     | 2016 |                                          
|  8 | Bruna                          | World     | 2016 |                                          
|  9 | Joana                          | HTML5     | 2014 |                                          
| 10 | João da Silva                  | Algoritmo | 2014 |                                          
| 11 | Ana Carla                      | Photoshop | 2014 |                                          
| 12 | Ana Maria                      | PHP       | 2015 |                                          
| 13 | Joõa Henrique                  | Java      | 2015 |                                          
| 14 | Jennifer Soares da Silva       | MySQL     | 2016 |                                          
| 15 | Raul Gil da Silva              | World     | 2016 |                                          
| 16 | Deodorio da Fonseca            | HTML5     | 2014 |                                          
| 17 | Camila Vitoria de Souza Santos | Algoritmo | 2014 |
| 18 | Diego Lopes da Silva           | Photoshop | 2014 |
| 19 | Paulo Henrique                 | PHP       | 2015 |
| 20 | Romena Regina da Silva         | Java      | 2015 |
| 21 | Fernando Lima                  | MySQL     | 2016 |
| 22 | Carmém Lúcia                   | World     | 2016 |
| 23 | João Carlos da Silva           | HTML5     | 2014 |
| 24 | Guilherme Pereira dos Santos   | Algoritmo | 2014 |
+----+--------------------------------+-----------+------+
24 rows in set (0.005 sec)


sempre que usar o join tem que usar o on para dar sentido

MariaDB [cadastro]> select id, pessoas.nome, cursos.nome, cursos.ano from pessoas join cursos on 
cursos.idcursos = pessoas.cursopreferido order by pessoas.nome;                                      
                                                                                                    
+----+--------------------------------+-----------+------+                                           
| id | nome                           | nome      | ano  |                                          
+----+--------------------------------+-----------+------+                                         
|  4 | Ana                            | Photoshop | 2014 |                                          
| 11 | Ana Carla                      | Photoshop | 2014 |                                          
| 12 | Ana Maria                      | PHP       | 2015 |                                          
|  8 | Bruna                          | World     | 2016 |                                          
| 17 | Camila Vitoria de Souza Santos | Algoritmo | 2014 |                                          
|  7 | Carmelo                        | MySQL     | 2016 |                                          
| 22 | Carmém Lúcia                   | World     | 2016 |                                          
| 16 | Deodorio da Fonseca            | HTML5     | 2014 |                                          
| 18 | Diego Lopes da Silva           | Photoshop | 2014 |                                          
| 21 | Fernando Lima                  | MySQL     | 2016 |                                          
| 24 | Guilherme Pereira dos Santos   | Algoritmo | 2014 |                                          
| 14 | Jennifer Soares da Silva       | MySQL     | 2016 |                                          
|  9 | Joana                          | HTML5     | 2014 |                                          
|  2 | Joao                           | HTML5     | 2014 |                                          
| 23 | João Carlos da Silva           | HTML5     | 2014 |                                          
| 10 | João da Silva                  | Algoritmo | 2014 |
| 13 | Joõa Henrique                  | Java      | 2015 |
|  1 | Lucas                          | MySQL     | 2016 |
|  6 | Luiz                           | Java      | 2015 |
|  5 | Luiza                          | PHP       | 2015 |
|  3 | Maria                          | Algoritmo | 2014 |
| 19 | Paulo Henrique                 | PHP       | 2015 |
| 15 | Raul Gil da Silva              | World     | 2016 |
| 20 | Romena Regina da Silva         | Java      | 2015 |
+----+--------------------------------+-----------+------+
24 rows in set (0.005 sec)

Como dar apelido para as tabelas cursos e pessoas

select p.nome, c.nome , c.ano from pessoas as p join cursos as c 
on c.idcursos = p.cursopreferido order by p.nome;

se eu quiser mostrar todas as pessoas mesmo as que não querem nada
o que fazer ?

Eu tenho uma tabela à esquerda do join e uma à direita.

select p.nome, c.nome , c.ano from pessoas as p left outer join
cursos as c on c.idcursos = p.cursopreferido order by p.nome;

se eu quiser mostrar as pessoas que não escolheram curso nenhum,eu
vou ter que usar o outer join, mas para isso eu tenho que escolher 
uma tabela como preferencial ou a tabela à direita ou a tabela à 
esquerda.
você pode considerar pessoas como preferencial ou cursos como 
preferencial

+--------------------------------+-----------+------+
| nome                           | nome      | ano  |
+--------------------------------+-----------+------+
| Lucas                          | MySQL     | 2016 |
| Joao                           | HTML5     | 2014 |
| Maria                          | Algoritmo | 2014 |
| Ana                            | Photoshop | 2014 |
| Luiza                          | PHP       | 2015 |
| Luiz                           | Java      | 2015 |
| Carmelo                        | MySQL     | 2016 |
| Bruna                          | World     | 2016 |
| Joana                          | HTML5     | 2014 |
| João da Silva                  | Algoritmo | 2014 |
| Ana Carla                      | Photoshop | 2014 |
| Ana Maria                      | PHP       | 2015 |
| Joõa Henrique                  | Java      | 2015 |
| Jennifer Soares da Silva       | MySQL     | 2016 |
| Raul Gil da Silva              | World     | 2016 |
| Deodorio da Fonseca            | HTML5     | 2014 |
| Camila Vitoria de Souza Santos | Algoritmo | 2014 |
| Diego Lopes da Silva           | Photoshop | 2014 |
| Paulo Henrique                 | PHP       | 2015 |
| Romena Regina da Silva         | Java      | 2015 |
| Fernando Lima                  | MySQL     | 2016 |
| Carmém Lúcia                   | World     | 2016 |
| João Carlos da Silva           | HTML5     | 2014 |
| Guilherme Pereira dos Santos   | Algoritmo | 2014 |
+--------------------------------+-----------+------+
24 rows in set (0.004 sec)

A tabela acima mostrou o resultado do comando "select p.nome, c.nome , c.ano from pessoas as p left
outer join cursos as c on c.idcursos = p.cursopreferido"

Contudo, não mostrou nada diferente do comando anterior que mostrava o id, o nome, nome dos cursos e
ano; pois, todos os individuos da minha tabela escolheram um curso. Entretanto, caso algum estivesse
preferido não escolher nenhum cursos, esse comando mostraria todas as pessoas cadastradas.











