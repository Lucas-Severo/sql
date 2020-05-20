CREATE DATABASE escola;

USE escola;

CREATE TABLE aluno (
	id bigint primary key auto_increment,
    nome varchar(100) not null,
    data_nascimento date not null
) engine = InnoDB;

CREATE TABLE curso (
	id bigint primary key auto_increment,
    nome varchar(100) not null,
    carga_horaria date not null
) engine = InnoDB;

CREATE TABLE professor (
	id bigint primary key auto_increment,
    nome varchar(100) not null,
    formacao varchar(200)
) engine = InnoDB;
