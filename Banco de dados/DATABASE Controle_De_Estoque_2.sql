CREATE DATABASE ControleEstoque;
USE ControleEstoque;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);

CREATE TABLE fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE entradas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

CREATE TABLE saidas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50)
);

-- Inserir produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Cimento CP II', 35.00, 100),
('Tinta Acrílica Branca', 90.50, 50),
('Parafuso 10mm', 0.30, 1000),
('Lâmpada LED 9W', 12.90, 200),
('Caixa D’água 500L', 320.00, 10);

-- Inserir fornecedores
INSERT INTO fornecedores (nome, telefone) VALUES
('Construlux', '(31) 99999-1111'),
('Tintas Ipatinga', '(31) 98888-2222'),
('Parafusos Minas', '(31) 97777-3333');

-- Inserir funcionários
INSERT INTO funcionarios (nome, cargo) VALUES
('Lucas Silva', 'Estoquista'),
('Marina Rocha', 'Gerente'),
('Carlos Mendes', 'Atendente');

-- Inserir entradas
INSERT INTO entradas (id_produto, quantidade, data) VALUES
(1, 20, '2025-04-01'),
(2, 15, '2025-04-02'),
(3, 500, '2025-04-03'),
(4, 100, '2025-04-04'),
(5, 5, '2025-04-05');

-- Inserir saídas
INSERT INTO saidas (id_produto, quantidade, data) VALUES
(1, 5, '2025-04-10'),
(2, 3, '2025-04-11'),
(3, 100, '2025-04-12'),
(4, 20, '2025-04-13'),
(5, 1, '2025-04-14');

-- Atualizações
UPDATE produtos SET preco = 36.00 WHERE nome = 'Cimento CP II';
UPDATE produtos SET estoque = estoque + 50 WHERE nome = 'Parafuso 10mm';

-- Exclusões
DELETE FROM fornecedores WHERE nome = 'Parafusos Minas';
DELETE FROM funcionarios WHERE nome = 'Carlos Mendes';