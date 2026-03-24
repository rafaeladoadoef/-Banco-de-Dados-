create table pessoa (
id int auto_increment primary key unique,
nome varchar(254),
email varchar(254)
);

insert into pessoa(nome, email) values ("Manuel", "manuel@gmail.com");
insert into pessoa (nome, email) values ("Plinio", "manuel@gmail.com)");

select * from pessoa;

update pessoa set email = "plinio@gmail.com" where id = 2;

delete from pessoa where id=1;
select count(*) from pessoa;
select avg(id) from pessoa;
select sum(id) from pessoa;
select max(id) from pessoa;
select min(id) from pessoa;
select * from pessoa order by id desc;
select * from pessoa order by id asc;
