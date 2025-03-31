CREATE DATABASE Academia;
USE Academia;

-- Criando a tabela de Alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- Criando a tabela de Planos
CREATE TABLE planos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco_mensal DECIMAL(5,2) NOT NULL
);

-- Criando a tabela de Matrículas
CREATE TABLE matriculas (
    id_aluno INT,
    id_plano INT,
    data_inicio DATE NOT NULL,
    PRIMARY KEY (id_aluno, id_plano),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
);

-- Criando a tabela de Aulas
CREATE TABLE aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    horario TIME NOT NULL
);

-- Criando a tabela de Presenças
CREATE TABLE presencas (
    id_aluno INT,
    id_aula INT,
    data DATE NOT NULL,
    PRIMARY KEY (id_aluno, id_aula, data),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_aula) REFERENCES aulas(id)
);