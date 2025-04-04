CREATE DATABASE Nota_Fiscal;
USE Nota_Fiscal;

CREATE TABLE Empresa (
    ID_Empresa INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Empresa VARCHAR(100),
    Razao_Social VARCHAR(100),
    Telefone VARCHAR(20),
    Endereco VARCHAR(255),
    CF_DF VARCHAR(20),
    CNPJ VARCHAR(20) UNIQUE
);

CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    CPF VARCHAR(14) UNIQUE,
    Telefone VARCHAR(20)
);

CREATE TABLE NotaFiscal (
    ID_Nota INT PRIMARY KEY AUTO_INCREMENT,
    ID_Empresa INT,
    ID_Cliente INT,
    Data_Emissao DATE,
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE ItemNotaFiscal (
    ID_Item INT PRIMARY KEY AUTO_INCREMENT,
    ID_Nota INT,
    Codigo_Produto VARCHAR(50),
    Quantidade INT,
    Descricao VARCHAR(255),
    Preco_Unitario DECIMAL(10,2),
    Preco_Total DECIMAL(10,2),
    FOREIGN KEY (ID_Nota) REFERENCES NotaFiscal(ID_Nota)
);

-- Inserindo empresas
INSERT INTO Empresa (Nome_Fantasia, Razao_Social, Telefone, Endereco, CF_DF, CNPJ) VALUES
('Tech Solutions', 'Tech Solutions LTDA', '(61) 3333-3333', 'Rua 4B, Taguatinga-DF', '00.000.900/000-00', '00.000.000/0000-00'),
('Super Mercados XYZ', 'XYZ Comércio LTDA', '(61) 4444-4444', 'Av. Central, Brasília-DF', '11.111.111/111-11', '11.111.111/1111-11'),
('Eletro Center', 'Eletro Center Comércio', '(21) 5555-5555', 'Rua do Comércio, RJ', '22.222.222/222-22', '22.222.222/2222-22'),
('Papelaria Alfa', 'Alfa Papelaria ME', '(31) 6666-6666', 'Av. dos Estudantes, MG', '33.333.333/333-33', '33.333.333/3333-33'),
('Moda Brasil', 'Moda Brasil LTDA', '(11) 7777-7777', 'Rua das Roupas, SP', '44.444.444/444-44', '44.444.444/4444-44'),
('Mega Eletrônicos', 'Mega Eletrônicos SA', '(21) 8888-8888', 'Av. Digital, RJ', '55.555.555/555-55', '55.555.555/5555-55'),
('Casa & Construção', 'Casa e Construção LTDA', '(31) 9999-9999', 'Rua da Reforma, MG', '66.666.666/666-66', '66.666.666/6666-66'),
('Doces e Balas', 'Doces e Balas ME', '(61) 1234-5678', 'Rua da Felicidade, DF', '77.777.777/777-77', '77.777.777/7777-77'),
('Super Bikes', 'Super Bikes Comércio', '(11) 2222-2222', 'Av. das Rodas, SP', '88.888.888/888-88', '88.888.888/8888-88'),
('Games Shop', 'Games Shop LTDA', '(21) 3333-3333', 'Rua dos Games, RJ', '99.999.999/999-99', '99.999.999/9999-99'),
('Fashion World', 'Fashion World LTDA', '(61) 4444-4444', 'Avenida do Estilo, DF', '10.000.000/000-10', '10.000.000/0000-10'),
('Pet & Cia', 'Pet & Cia LTDA', '(11) 5555-5555', 'Rua dos Animais, SP', '11.111.111/111-11', '11.111.111/1111-11'),
('Móveis e Design', 'Móveis e Design LTDA', '(31) 6666-6666', 'Av. da Decoração, MG', '12.222.222/222-12', '12.222.222/2222-12'),
('Food Market', 'Food Market LTDA', '(21) 7777-7777', 'Rua dos Alimentos, RJ', '13.333.333/333-13', '13.333.333/3333-13'),
('Tech Home', 'Tech Home LTDA', '(61) 8888-8888', 'Avenida da Tecnologia, DF', '14.444.444/444-14', '14.444.444/4444-14'),
('Automax', 'Automax Peças e Acessórios', '(31) 9999-9999', 'Rua dos Motores, MG', '15.555.555/555-15', '15.555.555/5555-15'),
('Esportes Brasil', 'Esportes Brasil Comércio', '(11) 1234-5678', 'Av. dos Atletas, SP', '16.666.666/666-16', '16.666.666/6666-16'),
('Baby Store', 'Baby Store LTDA', '(21) 2222-2222', 'Rua dos Bebês, RJ', '17.777.777/777-17', '17.777.777/7777-17'),
('Auto Center', 'Auto Center LTDA', '(61) 3333-3333', 'Avenida dos Veículos, DF', '18.888.888/888-18', '18.888.888/8888-18'),
('Eletro Fast', 'Eletro Fast Comércio', '(31) 4444-4444', 'Rua da Tecnologia, MG', '19.999.999/999-19', '19.999.999/9999-19');

-- Inserindo clientes
INSERT INTO Cliente (Nome, Endereco, CPF, Telefone) VALUES
('João Silva', 'Rua das Flores, 123, Brasília-DF', '111.222.333-44', '(61) 99999-9999'),
('Maria Oliveira', 'Avenida Paulista, 456, SP', '222.333.444-55', '(11) 98888-8888'),
('Carlos Santos', 'Rua 7 de Setembro, RJ', '333.444.555-66', '(21) 97777-7777'),
('Ana Souza', 'Av. das Palmeiras, MG', '444.555.666-77', '(31) 96666-6666'),
('Pedro Lima', 'Rua XV de Novembro, PR', '555.666.777-88', '(41) 95555-5555'),
('Fernanda Alves', 'Rua Augusta, SP', '666.777.888-99', '(11) 94444-4444'),
('Ricardo Mendes', 'Av. do Contorno, MG', '777.888.999-00', '(31) 93333-3333'),
('Juliana Costa', 'Rua da Praia, RJ', '888.999.000-11', '(21) 92222-2222'),
('Lucas Rocha', 'Rua da Consolação, SP', '999.000.111-22', '(11) 91111-1111'),
('Amanda Nunes', 'Rua 3, Brasília-DF', '000.111.222-33', '(61) 90000-0000'),
('Gustavo Ribeiro', 'Rua Bela Vista, MG', '123.234.345-56', '(31) 91234-5678'),
('Camila Duarte', 'Av. Central, RJ', '234.345.456-67', '(21) 92345-6789'),
('Fernando Souza', 'Rua José Bonifácio, SP', '345.456.567-78', '(11) 93456-7890'),
('Tatiane Freitas', 'Rua da Paz, PR', '456.567.678-89', '(41) 94567-8901'),
('Vinicius Matos', 'Rua Principal, DF', '567.678.789-90', '(61) 95678-9012'),
('Lorena Batista', 'Rua Carlos Gomes, MG', '678.789.890-01', '(31) 96789-0123'),
('Eduardo Silva', 'Rua das Palmeiras, SP', '789.890.901-12', '(11) 97890-1234'),
('Beatriz Lopes', 'Rua das Árvores, RJ', '890.901.012-23', '(21) 98901-2345'),
('Leonardo Cunha', 'Av. do Comércio, DF', '901.012.123-34', '(61) 99012-3456'),
('Natália Pereira', 'Rua Sete, PR', '012.123.234-45', '(41) 90123-4567');

-- Inserindo notas fiscais
INSERT INTO NotaFiscal (ID_Empresa, ID_Cliente, Data_Emissao, Valor_Total) VALUES
(1, 1, '2025-04-04', 150.00),
(2, 2, '2025-04-04', 200.50),
(3, 3, '2025-04-03', 75.90),
(4, 4, '2025-04-03', 330.00),
(5, 5, '2025-04-02', 99.99),
(6, 6, '2025-04-02', 250.75),
(7, 7, '2025-04-01', 180.25),
(8, 8, '2025-04-01', 400.00),
(9, 9, '2025-03-31', 120.90),
(10, 10, '2025-03-31', 500.00),
(11, 11, '2025-03-30', 50.00),
(12, 12, '2025-03-30', 340.99),
(13, 13, '2025-03-29', 275.50),
(14, 14, '2025-03-29', 190.30),
(15, 15, '2025-03-28', 600.00),
(16, 16, '2025-03-28', 220.10),
(17, 17, '2025-03-27', 95.75),
(18, 18, '2025-03-27', 410.00),
(19, 19, '2025-03-26', 320.50),
(20, 20, '2025-03-26', 700.00);

-- Inserindo itens de notas fiscais
INSERT INTO ItemNotaFiscal (ID_Nota, Codigo_Produto, Quantidade, Descricao, Preco_Unitario, Preco_Total) VALUES
(1, 'P001', 2, 'Teclado Mecânico', 75.00, 150.00),
(2, 'P002', 1, 'Mouse Gamer', 200.50, 200.50),
(3, 'P003', 3, 'Fones de Ouvido', 25.30, 75.90),
(4, 'P004', 2, 'Monitor 24"', 165.00, 330.00),
(5, 'P005', 1, 'Mochila Notebook', 99.99, 99.99),
(6, 'P006', 5, 'Cabo HDMI', 50.15, 250.75),
(7, 'P007', 1, 'HD Externo 1TB', 180.25, 180.25),
(8, 'P008', 4, 'Mousepad Grande', 100.00, 400.00),
(9, 'P009', 6, 'Caneta Azul', 20.15, 120.90),
(10, 'P010', 2, 'Notebook Gamer', 250.00, 500.00),
(11, 'P011', 1, 'Caderno Universitário', 50.00, 50.00),
(12, 'P012', 3, 'Headset Bluetooth', 113.66, 340.99),
(13, 'P013', 4, 'Fonte 500W', 68.87, 275.50),
(14, 'P014', 2, 'Teclado sem fio', 95.15, 190.30),
(15, 'P015', 1, 'Celular 128GB', 600.00, 600.00),
(16, 'P016', 2, 'SSD NVMe 1TB', 110.05, 220.10),
(17, 'P017', 3, 'Carregador USB-C', 31.92, 95.75),
(18, 'P018', 2, 'Tablet 10"', 205.00, 410.00),
(19, 'P019', 5, 'Pilha Recarregável', 64.10, 320.50),
(20, 'P020', 1, 'Placa de Vídeo RTX', 700.00, 700.00);

-- Atualizar o telefone de um cliente
UPDATE Cliente 
SET Telefone = '(61) 99999-0000' 
WHERE Nome = 'João Silva';

-- Remover um item de nota fiscal
DELETE FROM ItemNotaFiscal WHERE Codigo_Produto = 'P004';