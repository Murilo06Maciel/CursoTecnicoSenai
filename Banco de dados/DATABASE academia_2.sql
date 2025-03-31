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

INSERT INTO Alunos (Nome, Email, Telefone, DataNascimento) VALUES
('Carlos Silva', 'carlos@email.com', '11987654321', '1995-06-15'),
('Ana Souza', 'ana@email.com', '11976543210', '1998-08-22'),
('João Mendes', 'joao@email.com', '11965432109', '1992-04-10'),
('Mariana Oliveira', 'mariana@email.com', '11954321678', '2000-05-30'),
('Fernando Rocha', 'fernando@email.com', '11943216789', '1988-12-14'),
('Lucas Costa', 'lucas@email.com', '11942134567', '1996-01-20'),
('Isabela Lima', 'isabela@email.com', '11941098765', '1997-03-15'),
('Mateus Silva', 'mateus@email.com', '11939876543', '1994-11-10'),
('Carla Almeida', 'carla@email.com', '11938765432', '1999-07-02'),
('Gabriel Souza', 'gabriel@email.com', '11937654321', '2001-05-05'),
('Julia Pereira', 'julia@email.com', '11936543210', '1993-10-14'),
('Rafael Fernandes', 'rafael@email.com', '11935432109', '1990-12-25'),
('Amanda Martins', 'amanda@email.com', '11934321098', '1998-09-18'),
('Paulo Henrique', 'paulo@email.com', '11933210987', '1995-04-03'),
('Roberta Castro', 'roberta@email.com', '11932109876', '2000-02-08'),
('Vinícius Oliveira', 'vinicius@email.com', '11931098765', '1994-06-22'),
('Cláudia Dias', 'claudia@email.com', '11930987654', '1997-08-16'),
('Marcelo Rocha', 'marcelo@email.com', '11929876543', '1996-12-30'),
('Lúcia Costa', 'lucia@email.com', '11928765432', '1999-05-12'),
('Tatiane Pereira', 'tatiane@email.com', '11927654321', '2002-04-25');

-- Inserindo Planos
INSERT INTO Planos (Nome, Valor, DuracaoMeses) VALUES
('Básico', 100.00, 1),
('Intermediário', 250.00, 3),
('Avançado', 600.00, 6);

-- Inserindo Presenças
INSERT INTO Presencas (AlunoID, DataPresenca) VALUES
(1, '2025-03-01'),
(2, '2025-03-01'),
(3, '2025-03-01'),
(4, '2025-03-01'),
(5, '2025-03-01'),
(6, '2025-03-02'),
(7, '2025-03-02'),
(8, '2025-03-02'),
(9, '2025-03-02'),
(10, '2025-03-02'),
(11, '2025-03-03'),
(12, '2025-03-03'),
(13, '2025-03-03'),
(14, '2025-03-03'),
(15, '2025-03-03'),
(16, '2025-03-04'),
(17, '2025-03-04'),
(18, '2025-03-04'),
(19, '2025-03-04'),
(20, '2025-03-04');

-- Inserindo Pagamentos
INSERT INTO Pagamentos (AlunoID, PlanoID, DataPagamento, Valor) VALUES
(1, 1, '2025-03-01', 100.00),
(2, 2, '2025-03-02', 250.00),
(3, 3, '2025-03-03', 600.00),
(4, 1, '2025-03-04', 100.00),
(5, 2, '2025-03-05', 250.00),
(6, 1, '2025-03-06', 100.00),
(7, 2, '2025-03-07', 250.00),
(8, 3, '2025-03-08', 600.00),
(9, 1, '2025-03-09', 100.00),
(10, 2, '2025-03-10', 250.00),
(11, 3, '2025-03-11', 600.00),
(12, 1, '2025-03-12', 100.00),
(13, 2, '2025-03-13', 250.00),
(14, 3, '2025-03-14', 600.00),
(15, 1, '2025-03-15', 100.00),
(16, 2, '2025-03-16', 250.00),
(17, 3, '2025-03-17', 600.00),
(18, 1, '2025-03-18', 100.00),
(19, 2, '2025-03-19', 250.00),
(20, 3, '2025-03-20', 600.00);

-- Atualizando o valor de um plano
UPDATE Planos SET Valor = 120.00 WHERE PlanoID = 1;

-- Atualizando a data de presença de um aluno
UPDATE Presencas SET DataPresenca = '2025-03-10' WHERE PresencaID = 2;

-- Deletando um pagamento
DELETE FROM Pagamentos WHERE PagamentoID = 5;

-- Deletando uma presença
DELETE FROM Presencas WHERE PresencaID = 3;