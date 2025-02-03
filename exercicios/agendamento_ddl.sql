CREATE TABLE Pessoa (
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf CHAR(11) PRIMARY KEY,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(300) NOT NULL,
    telefone VARCHAR(15)
    CONSTRAINT unique_email_nome UNIQUE (email, nome)
);

CREATE TABLE Especialidade (
    id SERIAL PRIMARY KEY, 
    descricao VARCHAR(100) NOT NULL 
)
