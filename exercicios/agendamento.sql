CREATE TABLE Pessoa (
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(30),
    telefone VARCHAR(15)
);

CREATE TABLE Especialidade (
    id SERIAL PRIMARY KEY, 
    descricao VARCHAR(150) NOT NULL 
)
