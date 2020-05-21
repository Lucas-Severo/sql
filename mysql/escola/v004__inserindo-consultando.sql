
/* Inserindo alunos */
insert into aluno (nome, data_nascimento)
values ('João', '2000-10-05');

insert into aluno (nome, data_nascimento)
values ('Pedro', '1998-08-07');

insert into aluno (nome, data_nascimento)
values ('Patrícia', '1995-08-07');

/* Inserindo professores */
insert into professor (nome, formacao)
values ('Wagner', 'inglês');

insert into professor (nome, formacao)
values ('Maria', 'espanhol');

/* Inserindo cursos */
insert into curso (nome, carga_horaria, professor_id)
values ('Curso de ingles', 180, 1);

insert into curso (nome, carga_horaria, professor_id)
values ('Curso de espanhol', 180, 2);

/* Listando os dados inseridos */
select * from aluno;
select * from curso;
select * from curso_aluno;
select * from professor;

/* Matriculando alunos nos cursos */
insert into curso_aluno (curso_id, aluno_id, data_inicio)
values (1, 1, '2014-12-08');

insert into curso_aluno (curso_id, aluno_id, data_inicio)
values (2, 2, '2018-10-05');

insert into curso_aluno (curso_id, aluno_id, data_inicio)
values (1, 3, '2014-01-08');

/* Listando os nomes dos alunos que fizeram matrícula em Janeiro de 2014. */
select a.nome 
	from curso_aluno ca
	   , aluno a
    where ca.aluno_id = a.id
    and year(ca.data_inicio) = 2014
    and month(ca.data_inicio) = 1;
    
/* Listando os nomes dos cursos de um determinado professor. */
select c.nome, p.nome 
	from curso c
	   , professor p
	where c.professor_id = p.id
    and p.id = 1;
    
/* Liste os nomes dos alunos de um determinado curso. */
select aluno.nome 
	from curso
       , aluno
	where curso.id = 1;
