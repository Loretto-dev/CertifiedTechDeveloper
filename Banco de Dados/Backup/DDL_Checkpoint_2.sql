-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Checkpoint_2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Checkpoint_2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Checkpoint_2` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `Checkpoint_2` ;

-- -----------------------------------------------------
-- Table `Checkpoint_2`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Checkpoint_2`.`CLIENTE` (
  `id_CLIENTE` INT NOT NULL AUTO_INCREMENT,
  `RAZAO` VARCHAR(100) NULL DEFAULT NULL,
  `RUA` VARCHAR(100) NULL DEFAULT NULL,
  `BAIRRO` VARCHAR(100) NULL DEFAULT NULL,
  `CIDADE` VARCHAR(50) NULL DEFAULT NULL,
  `ESTADO` VARCHAR(40) NULL DEFAULT NULL,
  `CNPJ` BIGINT NULL DEFAULT NULL,
  `CEP` DECIMAL(12,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_CLIENTE`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `Checkpoint_2`.`EQUIPAMENTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Checkpoint_2`.`EQUIPAMENTOS` (
  `id_EQUIPAMENTOS` INT NOT NULL AUTO_INCREMENT,
  `DESCRICAO` VARCHAR(100) NULL DEFAULT NULL,
  `TIPO` VARCHAR(70) NULL DEFAULT NULL,
  `TAMANHO` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id_EQUIPAMENTOS`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `Checkpoint_2`.`ALUGUEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Checkpoint_2`.`ALUGUEL` (
  `id_ALUGUEL` INT NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `ID_CLIENTE` INT NOT NULL,
  `DIAS_LOCAÇÃO` DECIMAL(3,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_ALUGUEL`),
  INDEX `ID_EQUIPAMENTOS_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  INDEX `ID_CLIENTES_idx` (`ID_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `ID_CLIENTES`
    FOREIGN KEY (`ID_CLIENTE`)
    REFERENCES `Checkpoint_2`.`CLIENTE` (`id_CLIENTE`),
  CONSTRAINT `ID_EQUIPAMENTOS`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `Checkpoint_2`.`EQUIPAMENTOS` (`id_EQUIPAMENTOS`),
  CONSTRAINT `CLIENTE`
    FOREIGN KEY (`ID_CLIENTE`)
    REFERENCES `Checkpoint_2`.`CLIENTE` (`id_CLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `Checkpoint_2`.`FRETE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Checkpoint_2`.`FRETE` (
  `id_FRETE` INT NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `ID_END_CLIENTE` INT NOT NULL,
  `VALOR_KM` VARCHAR(45) NULL DEFAULT NULL,
  `TIPO_VEICULO_TRANSPORTE` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_FRETE`),
  INDEX `ID_EQUIPAMENTO_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  INDEX `ID_END_CLIENTE_idx` (`ID_END_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `ID_END_CLIENTE`
    FOREIGN KEY (`ID_END_CLIENTE`)
    REFERENCES `Checkpoint_2`.`CLIENTE` (`id_CLIENTE`),
  CONSTRAINT `ID_EQUIPAMENTO`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `Checkpoint_2`.`EQUIPAMENTOS` (`id_EQUIPAMENTOS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;