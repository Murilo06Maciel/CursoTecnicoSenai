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

-- Inserindo professores
INSERT INTO professores (nome, especialidade) VALUES 
('Carlos Silva', 'Matemática'),
('Ana Souza', 'Português'),
('João Lima', 'História'),
('Mariana Rocha', 'Biologia'),
('Pedro Torres', 'Física');

-- Inserindo alunos
INSERT INTO alunos (nome, data_nascimento, telefone) VALUES
('Lucas Pereira', '2006-05-12', '31999998888'),
('Juliana Costa', '2005-07-21', '31988887777'),
('Rafael Silva', '2006-11-02', '31977776666'),
('Amanda Rocha', '2005-09-30', '31966665555'),
('Mateus Oliveira', '2006-01-18', '31955554444');

-- Inserindo disciplinas
INSERT INTO disciplinas (nome, id_professor, ano) VALUES
('Matemática I', 1, 2024),
('Português I', 2, 2024),
('História I', 3, 2024),
('Biologia I', 4, 2024),
('Física I', 5, 2024);

-- Inserindo matrículas
INSERT INTO matriculas (id_aluno, id_disciplina) VALUES
(1, 1), (1, 2), (2, 1), (2, 3),
(3, 1), (3, 5), (4, 2), (4, 4),
(5, 1), (5, 2), (5, 3);

-- Inserindo notas
INSERT INTO notas (id_matricula, nota, data_provas) VALUES
(1, 8.5, '2024-03-10'),
(2, 7.0, '2024-03-11'),
(3, 6.5, '2024-03-10'),
(4, 9.0, '2024-03-15'),
(5, 5.5, '2024-03-12'),
(6, 6.0, '2024-03-13'),
(7, 7.5, '2024-03-11'),
(8, 8.0, '2024-03-14'),
(9, 9.5, '2024-03-10'),
(10, 6.5, '2024-03-11'),
(11, 8.0, '2024-03-12');

-- UPDATE
UPDATE alunos SET telefone = '31912345678' WHERE nome = 'Lucas Pereira';

-- DELETE
DELETE FROM notas WHERE nota < 6.0;