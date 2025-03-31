CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE autores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_autor INT,
    id_categoria INT,
    id_publicacao INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

CREATE TABLE usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    endereco TEXT
);

CREATE TABLE emprestimos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_livro INT,
    data_retirada DATE,
    data_devolucao DATE,
    status ENUM ('Em andamento', 'Concluído'),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Britânico'),
('J. K. Rowling', 'Britânica');

INSERT INTO categorias (nome) VALUES
('Romance'),
('Ficção Científica'),
('Fantasia');
