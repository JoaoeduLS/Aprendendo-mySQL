

-- criando a tabela
CREATE DATABASE comex;

create table dim_via(
sk_via int auto_increment,/*criando o id da tabela a parde de cima*/
nome_via varchar(300) NOT NULL,/*escrevendo na parte de baixo*/
  
CONSTRAINT DimVia_PK Primary Key (sk_via)
);


DROP TABLE dim_via;

-- cria a dimensao via com a primary key

-- primeira forma de fazer 
/*
create table dim_via(
	sk_via int primary key auto_increment,
  	nome_via varchar(300)
);
*/
-- segunda forma de fazer 
CREATE TABLE dim_via(
	sk_via int auto_increment,
  	nome_via varchar(300),
  
  PRIMARY KEY (sk_via)
);

CREATE TABLE dim_paises(
	sk_pais int AUTO_INCREMENT,
  	nk_codigo_pais int not null,
  	nome_pais varchar(300),
  
    PRIMARY KEY (sk_pais)
);

CREATE TABLE dim_urf(
	sk_urf int auto_increment primary key,
  	nk_codigo_unidade int not null,
  	nome_unidade varchar(200),
  	sigla_unidade varchar(50),
)