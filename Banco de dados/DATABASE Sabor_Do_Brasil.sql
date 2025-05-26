CREATE DATABASE sabor_do_brasil;

USE sabor_do_brasil;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    usuario VARCHAR(50) UNIQUE,
    senha VARCHAR(255)
)