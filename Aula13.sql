'> Agrupamento'

select carga from cursos
group by carga;

select carga, count(*) from cursos
group by carga;


select carga, count(nome) from cursos
group by carga 
having count(nome) > 3;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);


'Exercício'
'1) Uma lista com as profissões dos gafanhotos e seus respctivos
quantitativos.'
'2) Quantos gafanhotos homens e quantas mulheres nasceram após 
01/jan/2005.'
'3) Uma lista com os gafanhotos que nasceram fora do Brasil, 
mostrando o país de origemm e o total de pessoas nascida lá. Só nos
interessam os países que tiverem mais de 3 gafanhotos com essa 
nacionalidade.'
'4)Uma lista agrupada pela altura dos gafanhotos, mostrando quantas
pessoas pesam mais de 100 kg e que estão acima da média de altura de
todos os cadastrados.'

