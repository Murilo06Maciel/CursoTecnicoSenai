CREATE DATABASE Escola;
USE Escola;

-- Tabela de Alunos
CREATE TABLE Alunos (
    ID_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Matricula VARCHAR(20) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco TEXT
);

-- Tabela de Professores
CREATE TABLE Professores (
    ID_Professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

-- Tabela de Cursos
CREATE TABLE Cursos (
    ID_Curso INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CargaHoraria INT NOT NULL
);

-- Tabela de Turmas
CREATE TABLE Turmas (
    ID_Turma INT PRIMARY KEY AUTO_INCREMENT,
    ID_Curso INT NOT NULL,
    ID_Professor INT NOT NULL,
    AnoLetivo YEAR NOT NULL,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso) ON DELETE CASCADE,
    FOREIGN KEY (ID_Professor) REFERENCES Professores(ID_Professor) ON DELETE SET NULL
);

-- Tabela de Matrículas
CREATE TABLE Matriculas (
    ID_Matricula INT PRIMARY KEY AUTO_INCREMENT,
    ID_Aluno INT NOT NULL,
    ID_Turma INT NOT NULL,
    DataMatricula DATE NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno) ON DELETE CASCADE,
    FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma) ON DELETE CASCADE
);

-- Tabela de Pagamentos
CREATE TABLE Pagamentos (
    ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
    ID_Aluno INT NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    DataPagamento DATE NOT NULL,
    Status ENUM('Pendente', 'Pago', 'Atrasado') DEFAULT 'Pendente',
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno) ON DELETE CASCADE
);

-- Tabela de Notas
CREATE TABLE Notas (
    ID_Nota INT PRIMARY KEY AUTO_INCREMENT,
    ID_Aluno INT NOT NULL,
    ID_Turma INT NOT NULL,
    Nota DECIMAL(5,2) NOT NULL,
    DataLancamento DATE NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno) ON DELETE CASCADE,
    FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma) ON DELETE CASCADE
);

-- Tabela de Usuários do Sistema
CREATE TABLE Usuarios (
    ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Tipo ENUM('Administrador', 'Secretaria', 'professor') NOT NULL
);

-- Inserindo 20 alunos
INSERT INTO Alunos (Nome, DataNascimento, CPF, Email, Telefone) VALUES
('Ana Souza', '2005-03-15', '11111111111', 'ana@email.com', '(11) 99999-1111'),
('Bruno Lima', '2004-06-20', '22222222222', 'bruno@email.com', '(11) 99999-2222'),
('Carlos Mendes', '2006-09-10', '33333333333', 'carlos@email.com', '(11) 99999-3333'),
('Daniela Rocha', '2005-01-25', '44444444444', 'daniela@email.com', '(11) 99999-4444'),
('Eduardo Almeida', '2005-07-30', '55555555555', 'eduardo@email.com', '(11) 99999-5555'),
('Fernanda Dias', '2004-05-14', '66666666666', 'fernanda@email.com', '(11) 99999-6666'),
('Gabriel Santos', '2005-08-22', '77777777777', 'gabriel@email.com', '(11) 99999-7777'),
('Heloísa Martins', '2006-11-05', '88888888888', 'heloisa@email.com', '(11) 99999-8888'),
('Isabela Costa', '2005-12-18', '99999999999', 'isabela@email.com', '(11) 99999-9999'),
('João Pedro', '2004-04-10', '10101010101', 'joaopedro@email.com', '(11) 99999-1010'),
('Karen Oliveira', '2006-03-12', '11211211212', 'karen@email.com', '(11) 99999-1122'),
('Lucas Ferreira', '2004-02-27', '22322322322', 'lucas@email.com', '(11) 99999-2233'),
('Mariana Nogueira', '2005-06-09', '33433433433', 'mariana@email.com', '(11) 99999-3344'),
('Nicolas Mendes', '2006-07-24', '44544544544', 'nicolas@email.com', '(11) 99999-4455'),
('Olivia Souza', '2005-10-30', '55655655655', 'olivia@email.com', '(11) 99999-5566'),
('Paulo Henrique', '2004-08-05', '66766766766', 'paulo@email.com', '(11) 99999-6677'),
('Quezia Amaral', '2006-09-19', '77877877877', 'quezia@email.com', '(11) 99999-7788'),
('Rodrigo Silva', '2005-01-07', '88988988988', 'rodrigo@email.com', '(11) 99999-8899'),
('Sabrina Melo', '2004-12-02', '99099099099', 'sabrina@email.com', '(11) 99999-9900'),
('Thiago Lima', '2006-11-21', '10110110110', 'thiago@email.com', '(11) 99999-1011');

-- Inserindo 20 professores
INSERT INTO Professores (Nome, CPF, Email, Telefone, Especialidade) VALUES
('Marcos Silva', '11111111111', 'marcos@email.com', '(11) 99999-1111', 'Matemática'),
('Fernanda Oliveira', '22222222222', 'fernanda@email.com', '(11) 99999-2222', 'Português'),
('João Mendes', '33333333333', 'joao@email.com', '(11) 99999-3333', 'História'),
('Patrícia Ramos', '44444444444', 'patricia@email.com', '(11) 99999-4444', 'Geografia'),
('Carlos Almeida', '55555555555', 'carlos@email.com', '(11) 99999-5555', 'Química'),
('Luciana Souza', '66666666666', 'luciana@email.com', '(11) 99999-6666', 'Física'),
('Henrique Nogueira', '77777777777', 'henrique@email.com', '(11) 99999-7777', 'Biologia'),
('Amanda Costa', '88888888888', 'amanda@email.com', '(11) 99999-8888', 'Educação Física'),
('Bruna Martins', '99999999999', 'bruna@email.com', '(11) 99999-9999', 'Filosofia'),
('Pedro Henrique', '10101010101', 'pedro@email.com', '(11) 99999-1010', 'Sociologia'),
('Fábio Rocha', '11211211212', 'fabio@email.com', '(11) 99999-1122', 'Geometria'),
('Juliana Lima', '22322322322', 'juliana@email.com', '(11) 99999-2233', 'Inglês'),
('Rafael Torres', '33433433433', 'rafael@email.com', '(11) 99999-3344', 'Espanhol'),
('Camila Monteiro', '44544544544', 'camila@email.com', '(11) 99999-4455', 'Artes'),
('Diego Santos', '55655655655', 'diego@email.com', '(11) 99999-5566', 'Ciências'),
('Elaine Ramos', '66766766766', 'elaine@email.com', '(11) 99999-6677', 'Redação'),
('Gustavo Almeida', '77877877877', 'gustavo@email.com', '(11) 99999-7788', 'Informática'),
('Vanessa Cardoso', '88988988988', 'vanessa@email.com', '(11) 99999-8899', 'Música'),
('Leonardo Batista', '99099099099', 'leonardo@email.com', '(11) 99999-9900', 'Teatro'),
('Tatiane Souza', '10110110110', 'tatiane@email.com', '(11) 99999-1011', 'Literatura');

-- Inserindo 20 cursos
INSERT INTO Cursos (Nome, CargaHoraria) VALUES
('Matemática', 80),
('Português', 60),
('História', 50),
('Geografia', 50),
('Química', 70),
('Física', 70),
('Biologia', 60),
('Educação Física', 40),
('Filosofia', 30),
('Sociologia', 30),
('Inglês', 60),
('Espanhol', 60),
('Artes', 40),
('Ciências', 50),
('Redação', 50),
('Informática', 60),
('Música', 40),
('Teatro', 50),
('Literatura', 40),
('Geometria', 30);

INSERT INTO Turmas (Nome, CursoID, ProfessorID, AnoLetivo) VALUES
('Turma A ', 1, 1, 2025),
('Turma B ', 2, 2, 2025),
('Turma C ', 3, 3, 2025),
('Turma D ', 4, 4, 2025),
('Turma E ', 5, 5, 2025),
('Turma F ', 6, 6, 2025),
('Turma G ', 7, 7, 2025),
('Turma H ', 8, 8, 2025),
('Turma I ', 9, 9, 2025),
('Turma J ', 10, 10, 2025),
('Turma K ', 11, 11, 2025),
('Turma L ', 12, 12, 2025),
('Turma M ', 13, 13, 2025),
('Turma N ', 14, 14, 2025),
('Turma O ', 15, 15, 2025),
('Turma P ', 16, 16, 2025),
('Turma Q ', 17, 17, 2025),
('Turma R ', 18, 18, 2025),
('Turma S ', 19, 19, 2025),
('Turma T ', 20, 20, 2025);

INSERT INTO Matriculas (AlunoID, TurmaID, DataMatricula) VALUES
(1, 1, '2025-01-10'),
(2, 2, '2025-01-11'),
(3, 3, '2025-01-12'),
(4, 4, '2025-01-13'),
(5, 5, '2025-01-14'),
(6, 6, '2025-01-15'),
(7, 7, '2025-01-16'),
(8, 8, '2025-01-17'),
(9, 9, '2025-01-18'),
(10, 10, '2025-01-19'),
(11, 11, '2025-01-20'),
(12, 12, '2025-01-21'),
(13, 13, '2025-01-22'),
(14, 14, '2025-01-23'),
(15, 15, '2025-01-24'),
(16, 16, '2025-01-25'),
(17, 17, '2025-01-26'),
(18, 18, '2025-01-27'),
(19, 19, '2025-01-28'),
(20, 20, '2025-01-29');

INSERT INTO Pagamentos (AlunoID, DataPagamento, Valor, Status) VALUES
(1, '2025-01-15', 500.00, 'Pago'),
(2, '2025-01-16', 500.00, 'Pendente'),
(3, '2025-01-17', 500.00, 'Pago'),
(4, '2025-01-18', 500.00, 'Pendente'),
(5, '2025-01-19', 500.00, 'Pago'),
(6, '2025-01-20', 500.00, 'Pago'),
(7, '2025-01-21', 500.00, 'Pendente'),
(8, '2025-01-22', 500.00, 'Atrasado'),
(9, '2025-01-23', 500.00, 'Pendente'),
(10, '2025-01-24', 500.00, 'Pago'),
(11, '2025-01-25', 500.00, 'Pago'),
(12, '2025-01-26', 500.00, 'Pendente'),
(13, '2025-01-27', 500.00, 'Pago'),
(14, '2025-01-28', 500.00, 'Pago'),
(15, '2025-01-29', 500.00, 'Pendente'),
(16, '2025-01-30', 500.00, 'Pago'),
(17, '2025-01-31', 500.00, 'Pago'),
(18, '2025-02-01', 500.00, 'Atrasado'),
(19, '2025-02-02', 500.00, 'Pago'),
(20, '2025-02-03', 500.00, 'Pendente');

INSERT INTO Notas (AlunoID, TurmaID, Nota, DataLancamento) VALUES
(1, 1, 9.0, '2025-02-01'),
(2, 2, 7.5, '2025-02-02'),
(3, 3, 8.5, '2025-02-03'),
(4, 4, 6.0, '2025-02-04'),
(5, 5, 9.2, '2025-02-05'),
(6, 6, 7.8, '2025-02-06'),
(7, 7, 8.0, '2025-02-07'),
(8, 8, 6.5, '2025-02-08'),
(9, 9, 9.5, '2025-02-09'),
(10, 10, 7.2, '2025-02-10'),
(11, 11, 8.3, '2025-02-11'),
(12, 12, 6.8, '2025-02-12'),
(13, 13, 9.0, '2025-02-13'),
(14, 14, 7.9, '2025-02-14'),
(15, 15, 8.6, '2025-02-15'),
(16, 16, 7.0, '2025-02-16'),
(17, 17, 9.1, '2025-02-17'),
(18, 18, 6.7, '2025-02-18'),
(19, 19, 8.8, '2025-02-19'),
(20, 20, 7.4, '2025-02-20');

INSERT INTO Usuarios (Nome, Email, Senha, Tipo) VALUES
('Admin', 'admin@email.com', 'admin123', 'Administrador'),
('Secretaria', 'secretaria@email.com', 'sec123', 'Secretaria'),
('Marcos', 'marcos@email.com', 'prof123', 'Professor'),
('Fernanda', 'fernanda@email.com', 'prof124', 'Professor'),
('João', 'joao@email.com', 'prof125', 'Professor'),
('Patrícia', 'patricia@email.com', 'prof126', 'Professor'),
('Carlos', 'carlos@email.com', 'prof127', 'Professor'),
('Luciana', 'luciana@email.com', 'prof128', 'Professor'),
('Henrique', 'henrique@email.com', 'prof129', 'Professor'),
('Amanda', 'amanda@email.com', 'prof130', 'Professor'),
('Bruna', 'bruna@email.com', 'prof131', 'Professor'),
('Ana', 'ana@email.com', 'prof122', 'Professor'),
('Bruno', 'bruno@email.com', 'prof133', 'Professor'),
('Carlos', 'carlos@email.com', 'prof134', 'Professor'),
('Daniela', 'daniela@email.com', 'prof135', 'Professor'),
('Eduardo', 'eduardo@email.com', 'prof136', 'Professor'),
('Fernanda', 'fernanda@email.com', 'prof137', 'Professor'),
('Gabriel', 'gabriel@email.com', 'prof138', 'Professor'),
('Heloísa', 'heloisa@email.com', 'prof139', 'Professor'),
('Isabela', 'isabela@email.com', 'prof140', 'Professor');

-- Atualizando um telefone de um aluno
UPDATE Alunos SET Telefone = '(11) 99999-0000' WHERE Nome = 'Ana Souza';

-- Atualizando status de pagamento de alunos que pagaram recentemente
UPDATE Pagamentos SET Status = 'Pago' WHERE Status = 'Pendente';

-- Alterando a especialidade de um professor
UPDATE Professores SET Especialidade = 'Física' WHERE Nome = 'Marcos Silva';

-- Removendo um aluno que desistiu do curso
DELETE FROM Matriculas WHERE AlunoID = 20;
DELETE FROM Alunos WHERE AlunoID = 20;

-- Removendo um professor que se aposentou
DELETE FROM Professores WHERE Nome = 'Marcos Silva';

-- Removendo um pagamento duplicado
DELETE FROM Pagamentos WHERE AlunoID = 5 AND Status = 'Pendente';