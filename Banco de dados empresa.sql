Create table funcionarios (
id int auto_increment primary key unique,
nome varchar(254) not null,
salario float not null,
departamento varchar (245) not null,
createAT timestamp default current_timestamp,
updateat timestamp default current_timestamp on update current_timestamp
);

insert into funcionarios (nome, salario, departamento) values ("Carlos", 3000, "TI");
insert into funcionarios (nome, salario, departamento) values ("Maria", 4500, "RH");
insert into funcionarios (nome, salario, departamento) values ("João", 5000, "TI");
insert into funcionarios (nome, salario, departamento) values ("Ana", 3500, "Financeiro");
insert into funcionarios (nome, salario, departamento) values ("Pedro", 2800, "RH");

insert into funcionarios (nome, salario, departamento) values ("Juliana", 4200, "TI");

select * from funcionarios;
select count(*) from funcionarios;

select * from funcionarios where departamento = "TI";
select count(*) from funcinarios where departamento = "TI";
select * from funcionarios where salario >4000;
select count(*) from funcionarios where salario > 4000;

update funcionarios set salario = "3500" where id = 1;
update funcionarios set salario = salario*1.10 where departamento = "RH";

delete from funcionarios where id = 5;
select * from funcionarios order by salario desc;
select avg (salario) from funcionarios;
select max(salario) from funcionarios;
select min(salario) from funcionarios;

update funcionarios set salario = salario*0.05 where departamento = "TI" and salario < 4000;




