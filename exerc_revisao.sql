#Usando a base de dados BDEX1_HOSPITAL, responda:
use bdex1_hospital;
# 1 - Exibir todas as informações da tabela PACIENTES.
select * from pacientes;
# 2 - Mostrar os nomes e e-mails dos pacientes que nasceram depois do ano 2000.
select nome, email from pacientes
where year (data_nasc) > 2000;
# 3 - Listar os nomes dos médicos e as especialidades em que trabalham.
desc departamentos;
select med.nome, if(depto.nome_especialidade is null, 'Clínico Geral',depto.nome_especialidade) especialidade
from medicos med
left join departamentos depto
on med.depto_cod_espec = depto.cod_especialidade
order by med.nome;
# 4 - Exibir os detalhes das consultas: ID da consulta, data, hora, nome do médico e nome do paciente.
select con.id_consulta, con.data_cons data, con.hora_cons hora, med.nome, pac.nome paciente
from consultas con
inner join medicos med on med.crm = con.crm and med.uf = con.uf
inner join pacientes pac
on pac.cpf_paciente = con.cpf_paciente;
# 5 - Listar o nome dos pacientes e quantas consultas cada um fez.
select pac.nome paciente, count(*) as consultas
from consultas con 
right join pacientes pac
on pac.cpf_paciente = con.cpf_paciente
group by paciente
order by consultas desc;
# 6 - Mostrar as especialidades de médicos que fizeram consultas em 2024.
select distinct depto.nome_especialidade
from departamentos depto
inner join medicos med
on med.depto_cod_espec = depto.cod_especialidade
inner join consultas con
on med.crm = con.crm and med.uf = con.uf
where year(con.data_cons) = 2024;
# 7 - Listar todos os departamentos, ordenados pelo nome da especialidade de A a Z.
select nome_esepecialidade;
# 8 - Mostrar os nomes e e-mails dos médicos que não têm telefone cadastrado.
select nome, email
from medicos
where telefone is null or telefone = '';
# 9 - Exibir os nomes dos pacientes que têm consultas com médicos do departamento de Cardiologia.
select pac.nome
from paciente pac
inner join consultas con
on pac.cpf_paciente = con.cpf_paciente
inner join medicos med
on con.crm = med.crm and con.uf = med.uf
inner join departamentos depto
on depto.cod_especialidade = med.depto_cod_espec
where depto.nome_especialidade = 'cardiologia';
# 10 - Para cada especialidade, mostrar o nome da especialidade e a média de consultas realizadas pelos médicos dessa especialidade.
select espec as especialidade, round(avg(quant),2) as media
from(
		select depto.nome_especialidade as espec, count(id_consulta) as quantidade from consultas con
		inner join medicos med
		on con.crm = med.crm and con.uf = med.uf
		inner join departamentos depto
		on depto.cod_especialidade = med.depto_cod_espec
		group by depto.nome_especialidade)
group  by especialidade;
# 11 - Contar quantos pacientes têm um telefone cadastrado.
# 12 - Listar os nomes dos médicos que fizeram mais de 10 consultas.
# 13 - Mostrar o nome dos pacientes e a data da última consulta que eles fizeram.
# 14 - Contar quantas consultas cada médico realizou.
# 15 - Para cada paciente que fez uma consulta, mostrar o CPF, o nome e a porcentagem de consultas em relação ao total de consultas feitas por todos os pacientes.