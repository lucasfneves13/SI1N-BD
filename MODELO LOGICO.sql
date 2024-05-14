create database Fortes;
Use Fortes;

create table if not exists Funcionarios(
ID_FUNCIONARIOS varchar(45) PRIMARY KEY,
NOME varchar(45),
IDADE varchar(45) NOT NULL,
CIDADE varchar(45) NOT NULL,
BAIRRO varchar(45) NOT NULL,
TELEFONE varchar(45) NOT NULL,
constraint foreign key(USUARIO_LOGIN) references USUARIO,
constraint foreign key(ID_FORMULARIOS) references FORMULARIOS,
constraint foreign key(CNPJ) references FORMULARIOS
);

CREATE TABLE IF NOT EXISTS USUARIO(
ID_USUARIO int PRIMARY KEY,
NOME varchar(45),
EMAIL varchar(45) NOT NULL,
SENHA varchar(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS INSTITUIÇAO(
CNPJ int PRIMARY KEY,
NOME VARCHAR(45) NOT NULL,
CIDADE VARCHAR(45) NOT NULL,
BAIRRO varchar(45) NOT NULL,
TELEFONE varchar(45) NOT NULL,
constraint foreign key(ID_USUARIO) references USUARIO
);

