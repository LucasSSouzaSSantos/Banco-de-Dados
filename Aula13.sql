'> Agrupamento'

select carga from cursos
group by carga; significa agrupado por carga, altura...

funções de agregação[count, max, min, avg, sum,...] mais Agrupamento
select carga, count(*) from cursos
group by carga;
O count permite contar a quantidade fornecida, se os registros estão
agrupados ele fornece a quantidade de cada grupo

O where pode agrupar também
select * from cursos where totaulas = 30;

select carga, count(nome) from cursos where totaulas = 30
group by carga;

Pode ser selecionado quem vai ser mostrado
select carga, count(nome) from cursos
group by carga 
having count(nome) > 3;

select ano, count(*) from cursos estar sendo selecionado o ano da tabela de cursos
where totaulas > 30 que tenham totaulas mais que 30
group by ano vai ser agrupado essa seleçao por ano
having ano > 2013 e dentro desse agrupamento só será mostrado que tem ano maior que 2013
order by count(*) desc; em ordem descrescente.


o having só se for passado o mesmo parâmetro que foi agrupado
ex:
group by ano
having ano > 2013


select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);


'Exercício'
'1) Uma lista com as profissões dos gafanhotos e seus respctivos
quantitativos.'
R- MariaDB [cadastro]> select profissao, count(*) from pessoas
		    -> group by profissao;
+----------------+----------+
| profissao      | count(*) |
+----------------+----------+
| Administradora |        1 |
| Apresentador   |        1 |
| Arquiteta      |        2 |
| Empresária     |        1 |
| Estudante      |        3 |
| Jornalista     |        1 |
| Professora     |        3 |
| Programador    |        8 |
+----------------+----------+
8 rows in set (0.003 sec)

'2) Quantos gafanhotos homens e quantas mulheres nasceram após 
01/jan/2005.'
MariaDB [cadastro]> select sexo, count(*) from pessoas
		 -> where nascimento > '2005-01-01'
		 -> group by sexo;
+------+----------+
| sexo | count(*) |
+------+----------+
| M    |        1 |
| F    |        2 |
+------+----------+
2 rows in set (0.002 sec)

'3) Uma lista com os gafanhotos que nasceram fora do Brasil, 
mostrando o país de origem e o total de pessoas nascida lá. Só nos
interessam os países que tiverem mais de 3 gafanhotos com essa 
nacionalidade.'
MariaDB [cadastro]> select nacionalidade, count(*) from pessoas
		 -> where nacionalidade != 'Brasil'
		 -> group by nacionalidade
		 -> having count(*) > 2;
+---------------+----------+
| nacionalidade | count(*) |
+---------------+----------+
| Chile         |        3 |
| EUA           |        3 |
| Rússia        |        3 |
+---------------+----------+
3 rows in set (0.003 sec)
'4)Uma lista agrupada pela altura dos gafanhotos, mostrando quantas
pessoas pesam mais de 100 kg e que estão acima da média de altura de
todos os cadastrados.'
MariaDB [cadastro]> select peso, count(*) from pessoas
		 -> where peso > 100
		 -> group by altura
		 -> having altura > (select avg(altura) from pessoas);
+--------+----------+
| peso   | count(*) |
+--------+----------+
| 102.00 |        2 |
| 110.00 |        1 |
| 101.78 |        1 |
+--------+----------+
3 rows in set (0.003 sec)
