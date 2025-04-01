CREATE DATABASE Escola;
USE Escola;

-- Tabela de Alunos
CREATE TABLE Alunos (
    ID_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Matricula VARCHAR(20) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Telefone VARCHAR(15),
    Endereco TEXT
);

-- Tabela de Professores
CREATE TABLE Professores (
    ID_Professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
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

-- Tabela de Usuários do Sistema (Administradores e Funcionários)
CREATE TABLE Usuarios (
    ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    SenhaHash VARCHAR(255) NOT NULL,
    Tipo ENUM('Administrador', 'Secretaria') NOT NULL
);