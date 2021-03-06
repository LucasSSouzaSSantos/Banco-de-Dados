create database cadastro;
use cadastro;
create table pessoas(
nome varchar(30),
idade tinyint(3), 
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)

);


/*
  Tipos Primitivos
  Numérico: 
    > Inteiro
      TinyInt, SmallInt, Int, mediumInt, BigInt
    > Real
      Decimal, Float, Double, Real
    > Lógico
      Bit, Boolean
  Data/Tempo
      Date, DateTime, TimeStamp, Time, Year
  Literal
    > Caractere
      Char, VarChar
    > Texto
      TinyText, Text, MediumText, LongText
    > Binário
      TinyBlob, Blob, MediumBlob, LongBlob
    > Coleção
      Enum, Set
  Espacial
      Geometry, Point, Polygon, MultiPolygon

*/
