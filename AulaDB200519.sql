create database escoladiagrama;
use escoladiagrama;

create table instrutores (id int primary key auto_increment not null, nome VARCHAR(50), 
email VARCHAR(50), valor_hora INT(10), certificados VARCHAR(255));
describe instrutores;

create table turmas (id int(10) primary key auto_increment not null, instrutores_id INT(11),
cursos_id INT(10), data_inicio DATE, data_final DATE, carga_horaria SMALLINT(5));
describe turmas;

create table cursos (id int(10) primary key auto_increment not null, nome varchar(50), requisito varchar(255),
carga_horaria SMALLINT(5), preco DOUBLE);
describe cursos;

create table matriculas (id int(10) primary key auto_increment not null, turmas_id INT(10), 
alunos_id INT (11), data_matricula DATE);
describe matriculas;

create table alunos (id int(10) primary key auto_increment not null, cpf VARCHAR(11), nome VARCHAR (50), email VARCHAR (50),
fone CHAR(14), data_nascimento DATE);
describe alunos;

show tables;

alter table matriculas add constraint matriculas_FKIndex1 foreign key(turmas_id) references turmas(id);
alter table matriculas add constraint matriculas_FKIndex3 foreign key(alunos_id) references alunos(id);

alter table turmas add constraint turmas_FKIndex1 foreign key(instrutores_id) references instrutores(id);
alter table turmas add constraint turmas_FKIndex2 foreign key(cursos_id) references cursos(id);