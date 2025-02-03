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
CREATE TABLE Paciente (
    codigo VARCHAR(10) PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    plano_saude BOOLEAN NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf)
);


CREATE TABLE Medico (
    crm VARCHAR(10) PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf)
);
CREATE TABLE Medico_Especialidade (
    crm VARCHAR(10),
    identificador INT,
    PRIMARY KEY (crm, identificador),
    FOREIGN KEY (crm) REFERENCES Medico(crm),
    FOREIGN KEY (identificador) REFERENCES Especialidade(identificador)
);


CREATE TABLE Agendamento (
    codigo_paciente VARCHAR(10),
    crm_medico VARCHAR(10),
    data_hora_consulta DATETIME NOT NULL,
    data_hora_agendamento DATETIME NOT NULL,
    valor_consulta DECIMAL(10, 2),
    PRIMARY KEY (codigo_paciente, crm_medico, data_hora_consulta),
    FOREIGN KEY (codigo_paciente) REFERENCES Paciente(codigo),
    FOREIGN KEY (crm_medico) REFERENCES Medico(crm)
);
