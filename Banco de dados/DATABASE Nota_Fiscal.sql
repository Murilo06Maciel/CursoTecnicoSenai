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