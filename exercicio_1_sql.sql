create database if not exists exercicio_1;
use exercicio_1;

create table if not exists medico(
id_medico int(11) primary key,
crm int(11) not null,
nome varchar(100) not null,
cpf varchar(20) not null,
especialidade varchar(50) not null,
data_nascimento date not null,
endereco varchar(200) not null,
telefone varchar(20));

create table if not exists funcionario(
id_funcionario int(11) primary key,
nome varchar(100) not null,
cpf varchar(20) not null,
data_nascimento date not null,
endereco varchar(200) not null,
telefone varchar(20) not null,
);

create table if not exists empresa(
id_empresa int(11) primary key,
cnpj varchar(20) not null,
nome_fantasia varchar(50) not null,
endereco varchar(200) not null,
telefone varchar(20) not null,
);

create table if not exists exame(
id_exame int(11) primary key,
especialidade varchar(50) not null,
data_realizacao date not null,
);


create table if not exists atestato(
);

create table if not exists cargo(
);

create table if not exists riscos_ocupacionais(
);

create table if not exists resultado_exame(
);

create table if not exists tipo_exame(
);

