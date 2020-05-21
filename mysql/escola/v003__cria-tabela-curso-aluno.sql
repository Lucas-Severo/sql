create table curso_aluno (
	curso_id bigint,
    aluno_id bigint,
    data_inicio date,
    data_termino date,
    
    primary key (curso_id, aluno_id),
    foreign key (curso_id) references curso(id),
    foreign key (aluno_id) references aluno(id)
);
