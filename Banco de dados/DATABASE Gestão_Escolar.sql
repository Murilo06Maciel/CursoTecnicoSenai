CREATE DATABASE GestaoEscolar;
USE GestaoEscolar;

CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    telefone VARCHAR(20)
);

CREATE TABLE professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

CREATE TABLE disciplinas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_professor INT,
    ano INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id)
);

CREATE TABLE matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_disciplina INT,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE notas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_matricula INT,
    nota DECIMAL(4,2),
    data_provas DATE,
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id)
);