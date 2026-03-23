create table alunos (
matricula int primary key auto_increment unique,
nome_completo varchar(79) not null,
curso varchar(79) not null,
email varchar (250) not null
);

create table professores(
nome_completo varchar(70) not null,
id int primary key auto_increment unique,
especializacao varchar(80) not null
);

create table disciplinas(
id int primary key auto_increment unique,
carga_horaria varchar(80) not null,
id_professor int unique,
foreign key (id_professor) references professores(id)
);

create table matricula(
id int primary key auto_increment unique,
semestre varchar(100) not null,
aluno_id int unique,
foreign key (aluno_id) references alunos(matricula)
);

insert into alunos (nome_completo, curso, email) values ("Pedrin Souto", "Geografia", "pedrinpooderô@gmail.com");
insert into alunos (nome_completo, curso, email) values ("Thiago Santos", "Letras", "calabreso@gmail.com");


select * from alunos;

insert professores(nome_completo, especializacao) values ("Matheus Tevez - Fusão com Milton Santos" , "Geografia (Perfeita)");
insert professores(nome_completo, especializacao) values ("Danilin Puff", "Pedagogia" "Danilon@gmail.com");
select * from professores;
