CREATE DATABASE Nota_Fiscal;
USE Nota_Fiscal;

-- Tabela de Dados_Da_Nota
CREATE TABLE Alunos (
    ID_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Matricula VARCHAR(20) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco TEXT
);

-- Tabela de Dados_Para_Nota
CREATE TABLE Professores (
    Código INT PRIMARY KEY AUTO_INCREMENT,
    Quantidade VARCHAR(100) NOT NULL,
    Discrição VARCHAR(255),
    Preço_Total VARCHAR(15)
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