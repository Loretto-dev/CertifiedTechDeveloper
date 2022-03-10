tb_faturatb_fatura-- -----------------------------------------------------
-- Schema ODONTO_DH
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ODONTO_DH` DEFAULT CHARACTER SET utf8mb4 ;
USE `ODONTO_DH` ;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_VENDEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_VENDEDOR` (
  `ID_VENDEDOR` INT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(100) NOT NULL,
  `ENDERECO` VARCHAR(150) NOT NULL,
  `TELEFONE` VARCHAR(15) NULL,
  `CELULAR` VARCHAR(15) NULL,
  `EMAIL` VARCHAR(50) NULL,
  `CNPJ` VARCHAR(20) NULL,
  `NR_CONTRATO` VARCHAR(25) NOT NULL,
  `DATA_INICIO_CONTRATO` DATE NULL,
  `DATA_FIM_CONTRATO` DATE NULL,
  `DATA_ENTRADA_SISTEMA` DATE NOT NULL,
  `STATUS` VARCHAR(25) NOT NULL,
  `DATA_INATIVACAO` DATE NULL,
  PRIMARY KEY (`ID_VENDEDOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_PLANO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_PLANO` (
  `ID_PLANO` INT NOT NULL AUTO_INCREMENT,
  `NOME_PLANO` VARCHAR(100) NOT NULL,
  `DESCRICAO_PLANO` TEXT NULL,
  `DATA_CRIACAO_PLANO` DATE NOT NULL,
  `VALOR_PLANO` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ID_PLANO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_CATEGORIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_CATEGORIA` (
  `ID_CATEGORIA` INT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_ASSOCIADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_ASSOCIADO` (
  `ID_ASSOCIADO` INT NOT NULL AUTO_INCREMENT,
  `COD_CARTEIRINHA` VARCHAR(15) NOT NULL,
  `NOME_COMPLETO` VARCHAR(100) NOT NULL,
  `RG` VARCHAR(16) NULL,
  `CPF` VARCHAR(15) NULL,
  `ENDERECO` VARCHAR(150) NULL,
  `DATA_ENTRADA_SISTEMA` DATE NOT NULL,
  `STATUS` VARCHAR(25) NOT NULL,
  `DATA_INATIVACAO` DATE NULL,
  `ID_PLANO_ATUAL` INT NOT NULL,
  `ID_CATEGORIA` INT NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO`),
  CONSTRAINT `FK_ASSOCIADO_PLANO`
    FOREIGN KEY (`ID_PLANO_ATUAL`)
    REFERENCES `ODONTO_DH`.`TB_PLANO` (`ID_PLANO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ASSOCIADO_CATEGORIA`
    FOREIGN KEY (`ID_CATEGORIA`)
    REFERENCES `ODONTO_DH`.`TB_CATEGORIA` (`ID_CATEGORIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_ASSOCIADO_TELEFONE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_ASSOCIADO_TELEFONE` (
  `ID_ASSOCIADO_TELEFONE` INT NOT NULL,
  `ID_ASSOCIADO` INT NOT NULL,
  `TELEFONE` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO_TELEFONE`),
  CONSTRAINT `FK_ASSOCIADO_TELEFONE`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `ODONTO_DH`.`TB_ASSOCIADO` (`ID_ASSOCIADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_HISTORICO_ASSOCIADO_PLANO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_HISTORICO_ASSOCIADO_PLANO` (
  `ID_HISTORICO_ASSOCIADO_PLANO` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `ID_PLANO` INT NOT NULL,
  `DATA_INICIO_VIGENCIA` DATE NOT NULL,
  `DATA_FIM_VIGENCIA` DATE NOT NULL,
  PRIMARY KEY (`ID_HISTORICO_ASSOCIADO_PLANO`),
  CONSTRAINT `FK_HISTORICO_ASSOCIADO_PLANO_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `ODONTO_DH`.`TB_ASSOCIADO` (`ID_ASSOCIADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_HISTORICO_ASSOCIADO_PLANO_PLANO`
    FOREIGN KEY (`ID_PLANO`)
    REFERENCES `ODONTO_DH`.`TB_PLANO` (`ID_PLANO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_ASSOCIADO_CONTRATO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_ASSOCIADO_CONTRATO` (
  `ID_ASSOCIADO_CONTRATO` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `ID_VENDEDOR` INT NOT NULL,
  `DATA_INICIO_CONTRATO` DATE NOT NULL,
  `DATA_FIM_CONTRATO` DATE NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO_CONTRATO`),
  CONSTRAINT `UN_ASSOCIADO_CONTRATO` UNIQUE (`ID_ASSOCIADO`),
  CONSTRAINT `FK_ASSOCIADO_CONTRATO_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `ODONTO_DH`.`TB_ASSOCIADO` (`ID_ASSOCIADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ASSOCIADO_CONTRATO_VENDEDOR`
    FOREIGN KEY (`ID_VENDEDOR`)
    REFERENCES `ODONTO_DH`.`TB_VENDEDOR` (`ID_VENDEDOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_FATURA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_FATURA` (
  `ID_FATURA` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `VALOR_TOTAL_FATURA` DECIMAL(10,2) NOT NULL,
  `DATA_GERACAO_FATURA` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `DATA_VENCIMENTO_FATURA` DATE NOT NULL,
  `FATURA_QUITADA` CHAR(3) NOT NULL,
  `DATA_QUITACAO_FATURA` DATE NULL,
  PRIMARY KEY (`ID_FATURA`),
  CONSTRAINT `FK_FATURA_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `ODONTO_DH`.`TB_ASSOCIADO` (`ID_ASSOCIADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ODONTO_DH`.`TB_FATURA_ITEM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ODONTO_DH`.`TB_FATURA_ITEM` (
  `ID_FATURA_ITEM` INT NOT NULL AUTO_INCREMENT,
  `ID_FATURA` INT NOT NULL,
  `VL_ITEM_FATURA` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ID_FATURA_ITEM`),
  CONSTRAINT `FK_FATURA_ITEM`
    FOREIGN KEY (`ID_FATURA`)
    REFERENCES `ODONTO_DH`.`TB_FATURA` (`ID_FATURA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;