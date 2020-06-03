> 'Usando o Operador LIKE'

select * from cursos
where nome LIKE 'P%';

like, in e between são operadores literais.

like significa parecido 
% substitui nenhum ou vários caracteres

A posição do % faz diferença

'wildcards'
 
select * from cursos
where nome like 'a%'
Ele vai mostrar os nomes dos cursos que começam com a 
letra 'a'.

select * from cursos
where nome like '%a'
Ele vai mostrar os nomes dos cursos que terminam com a 
letra 'a'.

select * from cursos
where nome like 'ph%p_';
Esse comando pega todo nome que começa com ph e terminam
com qualquer caractere que tenha antes a letra 'p'.

'>Distinguindo'
select distinct nome from cursos;

select count(*) from cursos; 

select max(carga) from cursos;


  'Exercício:'
  '1) Uma lista com os nomes das mulheres.'
     R-MariaDB [cadastro]> select nome from pessoas
			-> where sexo = 'F';
      +-------+
      | nome  |
      +-------+
      | Maria |
      | Ana   |
      | Luiza |
      | Bruna |
      +-------+
  
  '2) Uma lista com os dados de todos aqueles que nasceram entre
     01/jan/2000 e 31/dez/2015.'
     R -MariaDB [cadastro]> select nome from pessoas
			 -> where nascimento > '2000-01-01' 
			 -> and nascimento < '2015-12-31';
     +-------+
     | nome  |
     +-------+
     | Bruna |
     +-------+
     
  '3) Uma lista com o nome de todos os homens que trabalham como programadores.'
    MariaDB [cadastro]> select nome from pessoas
		     -> where sexo = 'M' and profissao = 'Programador';
      +---------+
      | nome    |
      +---------+
      | Lucas   |
      | Joao    |
      | Luiz    |
      | Carmelo |
      +---------+
  
  '4) Uma lista com os dados de todas as mulheres que nasceram no Brasil
     e que têm seu nome iniciando com a letra J.'
     R-MariaDB [cadastro]> select nome from pessoas
                        -> where nacionalidade = 'Brasil' and sexo = 'F';
      +-------+
      | nome  |
      +-------+
      | Joana |
      +-------+
  '5) Umma lista com o nome e nacionalidade de todos os homens que têm 
     silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.'
     R-MariaDB [cadastro]> select nome, nacionalidade from pessoas
			-> where nome like '%silva%'
			-> and nacionalidade != 'Brasil'
			-> and peso < 100;
      +----------------+---------------+
      | nome           | nacionalidade |
      +----------------+---------------+
      | João da Silva  | Filândia      |
      +----------------+---------------+

  '6) Qual é a maior altura entre homens que moram no Brasil?'
    R-MariaDB [cadastro]> select max(altura) from pessoas;
      +-------------+
      | max(altura) |
      +-------------+
      |        1.90 |
      +-------------+
  '7) Qual é a média do peso dos gafanhotos cadastrados ?'
    R-MariaDB [cadastro]> select avg(peso) from pessoas;
      +-----------+
      | avg(peso) |
      +-----------+
      | 72.780000 |
      +-----------+
  '8) Qual é o menor peso entre as gafanhotos mulheres que nasceram fora
     do Brasil e entre 01/jan/1990 e 31/Dez/2000?'
    R-
MariaDB [cadastro]> select nome, nacionalidade, max(peso) from pessoas
		 -> where nacionalidade != 'Brasil' and sexo = 'F';
      +-------+---------------+-----------+
      | nome  | nacionalidade | max(peso) |
      +-------+---------------+-----------+
      | Maria | EUA           |     78.90 |
      +-------+---------------+-----------+
  '9) Quantas gafanhotos mulheres tem mais de 1.90 de altura ?'
    R-MariaDB [cadastro]> select nome, count(altura > 1.90) from pessoas 
		       -> where altura > '1.90' and sexo = 'F';
      +-----------+----------------------+
      | nome      | count(altura > 1.90) |
      +-----------+----------------------+
      | Ana Carla |                    2 |
      +-----------+----------------------+
