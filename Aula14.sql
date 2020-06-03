====================================================================================================
+---------------------------------------+
|					|---° id
|					|---º nome
|         Gafanhoto			|---° profissão
|	  Entidade			|---° nacionalidade
|					|---° sexo
|					|---° altura
|					|---° peso
|					|---° nascimento
+---------------------------------------+
Detalhes:
O conteiner Gafanhoto passou a ser chamado de ENTIDADE, e toda 
Entidade tem atributos.

+---------------------------------------+
|					|
|					|---º idcurso
|         Curso 			|---° nome
|	  Entidade			|---° descrição
|					|---° carga
|					|---° totaulas
|					|---° ano
|					|
+---------------------------------------+
====================================================================================================
Dados são representado de forma de atributos. Esses atributos vão 
identificar tuplas; vão identificar registros e vão identificar 
coisas que estão armazenadas dentro de entidades.

As chaves primárias servem para identificar as tuplas e vão servir
para relacionar as entidades.

Existe uma relação entre gafanhoto e curso ?

	    +-----------+	     /\		    +------+ 
	    |Gafanhoto  |n__________/  \___________n|curso |
	    +-----------+	    \  /	    +------+
				     \/ 
				   Assiste

				   
Existe uma entidade dominante e uma entidade relacionada a ela
Retângulo = Entidade
Losango   = Relacionamento

DIAGRAMA E-R
n significa cardinalidade
pode ser simples ou multiplas
cada gafanhoto pode assistir n cursos e cada curso pode ser assistido
por n gafanhoto
====================================================================================================
A classificação do meu relacionamento seja muitos para muitos

	    +-----------+	     /\		    +---------+ 
	    |Esposo	|1__________/  \___________1|Esposa   |
	    +-----------+	    \  /	    +---------+
				     \/ 
				   Casa com
A classificação desse relacionamento é um para um

	    +-----------+	     /\		    +-----------+ 
	    |Funcinário |1__________/  \___________n|Dependente |
	    +-----------+	    \  /	    +-----------+
				     \/ 
				   Cuida
A classificação desse relacionamento é de um para muitos
		
            +-----------+	     /\		    +--------+ 
	    |Cliente    |n__________/  \___________n|Produto |
	    +-----------+	    \  /	    +--------+
				     \/ 
				   Comprar
====================================================================================================
Chave primária é um atributo que específica as tuplas, ou atributo da tal entidade tem que ter 
chaves primárias diferentes.

Chave estrageira: Chave estrangeira é a chave primária de uma outra
entidade, que foi parar em outra entidade.

====================================================================================================

+---------+	     /\		    +---------+ 
|Esposo	  |1________/  \___________1|Esposa   |
+---------+	    \  /	    +---------+
|		     \/			|
|       	   casa com		|
|					|		
|--°cpf-marido(ch primária)		|--°cpf-esposa(ch primária)	
|--°nome				|--°nome	
|--°nascimento				|--°nascimento	
|--°nacionalidade			|--°nacionalidade	
|--°cpc-esposa(chave estrangeira)	|				

====================================================================================================

+------------+	        /\	       +-------------+ 
|Funcinário  |1________/  \___________n|Dependente   |
+------------+	       \  /	       +-------------+
|		        \/		|
|       	       cuida		|
|					|		
|--°cpf(ch primária)    		|--°cpf(ch primária)	
|--°nome				|--°nome	
|--°cargo				|--°nascimento	
|--°especialidade			|--°nacionalidade	
|					|--°cpf-func

====================================================================================================
		   +------+
+---------+	   |  /\  |         +---------+ 
|Cliente  |1__/\__n| /  \ |n___/\__1|Produto  |
+---------+   \/   | \  / |    \/   +---------+
|		   |  \/  |		|
|       	   |casa  |		|
|		   | com  |		|		
|	           +------+             |                          
|--°cpf(ch primária)  |			|--°cod-prod(ch primária)	
|--°nome	      |			|--°nome	
|--°endereco	      |			|--°fabricante	
|--°telefone	      |			|--°preco
		      |
		      |--°id-compra
		      |--°data
		      |--°forma-pagto
		      |--°cod-prod
		      |--°cpf-cliente

====================================================================================================