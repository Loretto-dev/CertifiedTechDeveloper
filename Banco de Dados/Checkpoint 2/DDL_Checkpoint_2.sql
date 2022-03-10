CREATE DATABASE Checkpoint_2;
USE Checkpoint_2;

-- Tabela CLIENTE

CREATE TABLE CLIENTE_ (
  id_CLIENTE INT NOT NULL AUTO_INCREMENT,
  RAZAO VARCHAR(100) NULL DEFAULT NULL,
  RUA VARCHAR(100) NULL DEFAULT NULL,
  BAIRRO VARCHAR(100) NULL DEFAULT NULL,
  CIDADE VARCHAR(50) NULL DEFAULT NULL,
  ESTADO VARCHAR(40) NULL DEFAULT NULL,
  CNPJ BIGINT NULL DEFAULT NULL,
  CEP DECIMAL(12,0) NULL DEFAULT NULL,
  PRIMARY KEY (id_CLIENTE)
);


-- Tabela EQUIPAMENTOS

CREATE TABLE EQUIPAMENTOS_ (
  id_EQUIPAMENTOS INT  NOT NULL AUTO_INCREMENT,
  DESCRICAO VARCHAR(100) NULL DEFAULT NULL,
  TIPO VARCHAR(70) NULL DEFAULT NULL,
  TAMANHO VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (id_EQUIPAMENTOS)
);

-- Tabela ALUGUEL

CREATE TABLE ALUGUEL_ (
	id_ALUGUEL INT NOT NULL AUTO_INCREMENT,
	ID_EQUIPAMENTO INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	DIAS_LOCAÇÃO DECIMAL(3,0) NULL DEFAULT NULL,
	PRIMARY KEY (id_ALUGUEL),
	FOREIGN KEY (ID_CLIENTE) REFERENCES Checkpoint_2.CLIENTE (id_CLIENTE),
    FOREIGN KEY (ID_EQUIPAMENTO) REFERENCES Checkpoint_2.EQUIPAMENTOS (id_EQUIPAMENTOS)
);


-- Tabela FRETE

CREATE TABLE FRETE_ (
	id_FRETE INT NOT NULL AUTO_INCREMENT,
	ID_EQUIPAMENTO INT NOT NULL,
	ID_END_CLIENTE INT NOT NULL,
	VALOR_KM VARCHAR(45) NULL DEFAULT NULL,
	TIPO_VEICULO_TRANSPORTE VARCHAR(45) NULL DEFAULT NULL,
	PRIMARY KEY (id_FRETE),
	FOREIGN KEY (ID_END_CLIENTE) REFERENCES Checkpoint_2.CLIENTE (id_CLIENTE),
    FOREIGN KEY (ID_EQUIPAMENTO) REFERENCES Checkpoint_2.EQUIPAMENTOS (id_EQUIPAMENTOS)
);
