> Registros da Tabela 'cursos'

'> Comando para selecionar os campos da tabela cursos'
'> Filtrando Colunas'

select * from cursos;

> Ordenar pelo nome
order by nome desc; -> organiza de forma decrescente
order by nome asc ou sem o asc; organiza de forma ascendente

Usar asteristico no select, indica que o programador está tentando
selecionar todas as colunas; mas é possível passar só os nomes das
colunas que quer selecionar.

select nome, carga e anos

Agora ele não mostra todas as colunas, só as colunas que tem os 
nomes: nome, carga e ano.

Outro detalhe é que não precisa ser passada na mesma ordem que 
está no bancco de dados, pode ser em qualquer ordem.

'> Filtrando as linhas'

select * from cursos 
where ano = '2016'
ordem by nome;

'> Filtrar linha e mostrar só os campos nome e carga'

select nome, carga cursos 
where ano = '2016'
order by nome;

'>Selecionando Linhas e Colunas'

Select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

select * from cursos 
where ano <= '2015'
order by nome;

select * from cursos 
where ano != '2016'
order by nome;

select * from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select * from cursos
where ano in (2014, 2016)
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 40;



