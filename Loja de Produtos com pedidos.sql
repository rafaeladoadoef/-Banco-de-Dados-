create table clientes (
id int auto_increment primary key unique,
nome varchar(100) not null,
telefone varchar(20) not null unique,
email varchar(200) not null unique
);

create table produto (
id int auto_increment primary key unique,
nome varchar(190) not null,
preco float not null,
quantidade_estoque int not null
);

create table pedido (
id int auto_increment primary key unique,
data_compra date not null,
quantidade_comprada int not null,
cliente_id int unique,
produto_id int unique,
foreign key (cliente_id) references clientes (id),
foreign key (produto_id) references produto (id)
);

insert into clientes (nome, telefone, email) values ("Thais", "7198424829", "thaisl@gmail.com");
insert into clientes (nome, telefone, email) values ("Lorax", "794824928", "Loraxepico@gmail.com");

select * from clientes;

insert into produto (nome, preco, quantidade_estoque) values ("Kit Kat", "5.00", "10");
insert into produto (nome, preco, quantidade_estoque) values ("Salgadinho", "10.00", "59");

select * from produto;

insert into pedido (data_compra, quantidade_comprada, cliente_id, produto_id) values ("1992/12/21", "4", "1", "1");
insert into pedido (data_compra, quantidade_comprada, cliente_id, produto_id) values ("1993/10/02", "6", "2", "2");

select * from pedido;
