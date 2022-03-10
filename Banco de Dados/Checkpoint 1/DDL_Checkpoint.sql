-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LOC_MACHINE
-- -----------------------------------------------------
-- Modelo lógico de uma empresa de aluguel de equipamentos leves e pesados.
-- 

-- -----------------------------------------------------
-- Schema LOC_MACHINE
--
-- Modelo lógico de uma empresa de aluguel de equipamentos leves e pesados.
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LOC_MACHINE` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- -----------------------------------------------------
-- Schema emarket
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema emarket
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `emarket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema filmes_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema filmes_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `filmes_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema loc_machine
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema loc_machine
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loc_machine` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- -----------------------------------------------------
-- Schema musimundos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema musimundos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musimundos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema odonto_dh
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema odonto_dh
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `odonto_dh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema sakila
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sakila
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sakila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `LOC_MACHINE` ;

-- -----------------------------------------------------
-- Table `LOC_MACHINE`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LOC_MACHINE`.`CLIENTE` (
  `id_CLIENTE` INT NOT NULL AUTO_INCREMENT,
  `RAZAO` VARCHAR(100) NULL,
  `RUA` VARCHAR(100) NULL,
  `BAIRRO` VARCHAR(100) NULL,
  `CIDADE` VARCHAR(50) NULL,
  `ESTADO` VARCHAR(40) NULL,
  `CNPJ` BIGINT(20) NULL,
  `CEP` DECIMAL(12) NULL,
  PRIMARY KEY (`id_CLIENTE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LOC_MACHINE`.`EQUIPAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LOC_MACHINE`.`EQUIPAMENTO` (
  `id_EQUIPAMENTOS` INT NOT NULL AUTO_INCREMENT,
  `DESCRICAO` VARCHAR(100) NULL,
  `TIPO` VARCHAR(70) NULL,
  `TAMANHO` VARCHAR(40) NULL,
  PRIMARY KEY (`id_EQUIPAMENTOS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LOC_MACHINE`.`ALUGUEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LOC_MACHINE`.`ALUGUEL` (
  `id_ALUGUEL` INT NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `ID_CLIENTE` INT NOT NULL,
  `DIAS_LOCAÇÃO` DECIMAL(3) NULL,
  PRIMARY KEY (`id_ALUGUEL`),
  INDEX `ID_EQUIPAMENTOS_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  INDEX `ID_CLIENTES_idx` (`ID_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `ID_EQUIPAMENTOS`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `LOC_MACHINE`.`EQUIPAMENTO` (`id_EQUIPAMENTOS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_CLIENTES`
    FOREIGN KEY (`ID_CLIENTE`)
    REFERENCES `LOC_MACHINE`.`CLIENTE` (`id_CLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LOC_MACHINE`.`FRETE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LOC_MACHINE`.`FRETE` (
  `id_FRETE` INT NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `ID_END_CLIENTE` INT NOT NULL,
  `VALOR_KM` VARCHAR(45) NULL,
  `TIPO_VEICULO_TRANSPORTE` VARCHAR(45) NULL,
  PRIMARY KEY (`id_FRETE`),
  INDEX `ID_EQUIPAMENTO_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  INDEX `ID_END_CLIENTE_idx` (`ID_END_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `ID_EQUIPAMENTO`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `LOC_MACHINE`.`EQUIPAMENTO` (`id_EQUIPAMENTOS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_END_CLIENTE`
    FOREIGN KEY (`ID_END_CLIENTE`)
    REFERENCES `LOC_MACHINE`.`CLIENTE` (`id_CLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LOC_MACHINE`.`PAGAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LOC_MACHINE`.`PAGAMENTO` (
  `id_PAGAMENTO` INT NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` INT NOT NULL,
  `ID_ALUGUEL` INT NOT NULL,
  `ID_FRETE` INT NOT NULL,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `VALOR_TOTAL` DECIMAL(6,2) NULL,
  PRIMARY KEY (`id_PAGAMENTO`),
  INDEX `ID_ALUGUEL_idx` (`ID_ALUGUEL` ASC) VISIBLE,
  INDEX `ID_CLIENTE_idx` (`ID_CLIENTE` ASC) VISIBLE,
  INDEX `ID_FRETE_idx` (`ID_FRETE` ASC) VISIBLE,
  INDEX `ID_EQUIPAMENTO_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  CONSTRAINT `ID_ALUGUEL`
    FOREIGN KEY (`ID_ALUGUEL`)
    REFERENCES `LOC_MACHINE`.`ALUGUEL` (`id_ALUGUEL`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_CLIENTE`
    FOREIGN KEY (`ID_CLIENTE`)
    REFERENCES `LOC_MACHINE`.`CLIENTE` (`id_CLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_FRETE`
    FOREIGN KEY (`ID_FRETE`)
    REFERENCES `LOC_MACHINE`.`FRETE` (`id_FRETE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_EQUIPAMENTO`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `LOC_MACHINE`.`EQUIPAMENTO` (`id_EQUIPAMENTOS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `emarket` ;

-- -----------------------------------------------------
-- Table `emarket`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`categorias` (
  `CategoriaID` INT NOT NULL AUTO_INCREMENT,
  `CategoriaNome` VARCHAR(15) NOT NULL,
  `Descricao` LONGTEXT NULL DEFAULT NULL,
  `Imagem` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`CategoriaID`),
  INDEX `Categorias_CategoriaNome` (`CategoriaNome` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`clientes` (
  `ClienteID` CHAR(5) NOT NULL,
  `Empresa` VARCHAR(40) NOT NULL,
  `Contato` VARCHAR(30) NULL DEFAULT NULL,
  `Titulo` VARCHAR(30) NULL DEFAULT NULL,
  `Endereco` VARCHAR(60) NULL DEFAULT NULL,
  `Cidade` VARCHAR(15) NULL DEFAULT NULL,
  `Regioes` VARCHAR(15) NULL DEFAULT NULL,
  `CodigoPostal` VARCHAR(10) NULL DEFAULT NULL,
  `Pais` VARCHAR(15) NULL DEFAULT NULL,
  `Telefone` VARCHAR(24) NULL DEFAULT NULL,
  `Fax` VARCHAR(24) NULL DEFAULT NULL,
  PRIMARY KEY (`ClienteID`),
  INDEX `Clientes_Cidade` (`Cidade` ASC) VISIBLE,
  INDEX `Clientes_Empresa` (`Empresa` ASC) VISIBLE,
  INDEX `Clientes_CodigoPostal` (`CodigoPostal` ASC) VISIBLE,
  INDEX `Clientes_Regioes` (`Regioes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`clientesdemografia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`clientesdemografia` (
  `TipoClienteID` CHAR(10) NOT NULL,
  `TipoClienteDesc` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`TipoClienteID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`clientesdemo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`clientesdemo` (
  `ClienteID` CHAR(5) NOT NULL,
  `TipoClienteID` CHAR(10) NOT NULL,
  PRIMARY KEY (`ClienteID`, `TipoClienteID`),
  INDEX `FK_ClientesDemo` (`TipoClienteID` ASC) VISIBLE,
  INDEX `FK_ClientesDemo_Clientes` (`TipoClienteID` ASC) VISIBLE,
  CONSTRAINT `FK_ClientesDemo`
    FOREIGN KEY (`TipoClienteID`)
    REFERENCES `emarket`.`clientesdemografia` (`TipoClienteID`),
  CONSTRAINT `FK_ClientesDemo_Clientes`
    FOREIGN KEY (`ClienteID`)
    REFERENCES `emarket`.`clientes` (`ClienteID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`correios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`correios` (
  `CorreioID` INT NOT NULL AUTO_INCREMENT,
  `Empresa` VARCHAR(40) NOT NULL,
  `Telefone` VARCHAR(24) NULL DEFAULT NULL,
  PRIMARY KEY (`CorreioID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`empregados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`empregados` (
  `EmpregadoID` INT NOT NULL AUTO_INCREMENT,
  `Sobrenome` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(10) NOT NULL,
  `Titulo` VARCHAR(30) NULL DEFAULT NULL,
  `TituloCortesia` VARCHAR(25) NULL DEFAULT NULL,
  `DataNascimento` DATETIME NULL DEFAULT NULL,
  `DataContratacao` DATETIME NULL DEFAULT NULL,
  `Endereco` VARCHAR(60) NULL DEFAULT NULL,
  `Cidade` VARCHAR(15) NULL DEFAULT NULL,
  `Regioes` VARCHAR(15) NULL DEFAULT NULL,
  `CodigoPostal` VARCHAR(10) NULL DEFAULT NULL,
  `Pais` VARCHAR(15) NULL DEFAULT NULL,
  `Telefone` VARCHAR(24) NULL DEFAULT NULL,
  `Extensao` VARCHAR(4) NULL DEFAULT NULL,
  `Foto` LONGBLOB NULL DEFAULT NULL,
  `Notas` LONGTEXT NULL DEFAULT NULL,
  `Gestor` INT NULL DEFAULT NULL,
  `urlFoto` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`EmpregadoID`),
  INDEX `Empregados_Sobrenome` (`Sobrenome` ASC) VISIBLE,
  INDEX `Empregados_CodigoPostal` (`CodigoPostal` ASC) VISIBLE,
  INDEX `FK_Empregados_Empregados` (`Gestor` ASC) VISIBLE,
  CONSTRAINT `FK_Empregados_Empregados`
    FOREIGN KEY (`Gestor`)
    REFERENCES `emarket`.`empregados` (`EmpregadoID`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`faturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`faturas` (
  `FaturaId` INT NOT NULL AUTO_INCREMENT,
  `ClienteID` CHAR(5) NULL DEFAULT NULL,
  `EmpregadoID` INT NULL DEFAULT NULL,
  `DataFatura` DATETIME NULL DEFAULT NULL,
  `DataRegistro` DATETIME NULL DEFAULT NULL,
  `DataEnvio` DATETIME NULL DEFAULT NULL,
  `FormaEnvio` INT NULL DEFAULT NULL,
  `Transporte` DOUBLE NULL DEFAULT '0',
  `NomeEnvio` VARCHAR(40) NULL DEFAULT NULL,
  `EnderecoEnvio` VARCHAR(60) NULL DEFAULT NULL,
  `CidadeEnvio` VARCHAR(15) NULL DEFAULT NULL,
  `RegiaoEnvio` VARCHAR(15) NULL DEFAULT NULL,
  `CodigoPostalEnvio` VARCHAR(10) NULL DEFAULT NULL,
  `PaisEnvio` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`FaturaId`),
  INDEX `Faturas_ClienteID` (`ClienteID` ASC) VISIBLE,
  INDEX `Faturas_ClientesFaturas` (`ClienteID` ASC) VISIBLE,
  INDEX `Faturas_EmpregadoID` (`EmpregadoID` ASC) VISIBLE,
  INDEX `Faturas_EmpregadosFaturas` (`EmpregadoID` ASC) VISIBLE,
  INDEX `Faturas_DataFatura` (`DataFatura` ASC) VISIBLE,
  INDEX `Faturas_DataEnvio` (`DataEnvio` ASC) VISIBLE,
  INDEX `Faturas_CorreiosFaturas` (`FormaEnvio` ASC) VISIBLE,
  INDEX `Faturas_CodigoPostalEnvio` (`CodigoPostalEnvio` ASC) VISIBLE,
  INDEX `FK_Faturas_Clientes` (`ClienteID` ASC) VISIBLE,
  CONSTRAINT `FK_Faturas_Clientes`
    FOREIGN KEY (`ClienteID`)
    REFERENCES `emarket`.`clientes` (`ClienteID`),
  CONSTRAINT `FK_Faturas_Correios`
    FOREIGN KEY (`FormaEnvio`)
    REFERENCES `emarket`.`correios` (`CorreioID`),
  CONSTRAINT `FK_Faturas_Empregados`
    FOREIGN KEY (`EmpregadoID`)
    REFERENCES `emarket`.`empregados` (`EmpregadoID`))
ENGINE = InnoDB
AUTO_INCREMENT = 11078
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`provedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`provedores` (
  `ProvedorID` INT NOT NULL AUTO_INCREMENT,
  `Empresa` VARCHAR(40) NOT NULL,
  `Contato` VARCHAR(30) NULL DEFAULT NULL,
  `Titulo` VARCHAR(30) NULL DEFAULT NULL,
  `Endereco` VARCHAR(60) NULL DEFAULT NULL,
  `Cidade` VARCHAR(15) NULL DEFAULT NULL,
  `Regioes` VARCHAR(15) NULL DEFAULT NULL,
  `CodigoPostal` VARCHAR(10) NULL DEFAULT NULL,
  `Pais` VARCHAR(15) NULL DEFAULT NULL,
  `Telefone` VARCHAR(24) NULL DEFAULT NULL,
  `Fax` VARCHAR(24) NULL DEFAULT NULL,
  `Pagina` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ProvedorID`),
  INDEX `Provedores_Empresa` (`Empresa` ASC) VISIBLE,
  INDEX `Provedores_PostalCode` (`CodigoPostal` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 30
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`produtos` (
  `ProdutoID` INT NOT NULL AUTO_INCREMENT,
  `ProdutoNome` VARCHAR(40) NOT NULL,
  `ProvedorID` INT NULL DEFAULT NULL,
  `CategoriaID` INT NULL DEFAULT NULL,
  `QuantidadePorUnidade` VARCHAR(20) NULL DEFAULT NULL,
  `PrecoUnitario` DOUBLE NULL DEFAULT '0',
  `UnidadesEstoque` SMALLINT NULL DEFAULT '0',
  `UnidadesPedidas` SMALLINT NULL DEFAULT '0',
  `NivelReabastecimento` SMALLINT NULL DEFAULT '0',
  `Descontinuado` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProdutoID`),
  INDEX `Produtos_CategoriasProdutos` (`CategoriaID` ASC) VISIBLE,
  INDEX `Produtos_CategoriaID` (`CategoriaID` ASC) VISIBLE,
  INDEX `Produtos_ProdutoNome` (`ProdutoNome` ASC) VISIBLE,
  INDEX `Produtos_ProvedorID` (`ProvedorID` ASC) VISIBLE,
  INDEX `Produtos_ProvedoresProdutos` (`ProvedorID` ASC) VISIBLE,
  CONSTRAINT `FK_Produtos_Categorias`
    FOREIGN KEY (`CategoriaID`)
    REFERENCES `emarket`.`categorias` (`CategoriaID`),
  CONSTRAINT `FK_Produtos_Provedores`
    FOREIGN KEY (`ProvedorID`)
    REFERENCES `emarket`.`provedores` (`ProvedorID`))
ENGINE = InnoDB
AUTO_INCREMENT = 78
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`detalhefatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`detalhefatura` (
  `FaturaId` INT NOT NULL,
  `ProdutoID` INT NOT NULL,
  `PrecoUnitario` DOUBLE NOT NULL DEFAULT '0',
  `Quantidade` SMALLINT NOT NULL DEFAULT '0',
  `Desconto` DOUBLE NOT NULL DEFAULT '0',
  PRIMARY KEY (`FaturaId`, `ProdutoID`),
  INDEX `DetalheFatura_FaturaId` (`FaturaId` ASC) VISIBLE,
  INDEX `DetalheFatura_DetalheFatura` (`FaturaId` ASC) VISIBLE,
  INDEX `DetalheFatura_ProdutoID` (`ProdutoID` ASC) VISIBLE,
  INDEX `DetalheFatura_ProdutosDetalheFatura` (`ProdutoID` ASC) VISIBLE,
  CONSTRAINT `FK_DetalheFatura_Faturas`
    FOREIGN KEY (`FaturaId`)
    REFERENCES `emarket`.`faturas` (`FaturaId`),
  CONSTRAINT `FK_DetalheFatura_Produtos`
    FOREIGN KEY (`ProdutoID`)
    REFERENCES `emarket`.`produtos` (`ProdutoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`regioes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`regioes` (
  `RegioesID` INT NOT NULL,
  `RegioesDescricao` CHAR(50) NOT NULL,
  PRIMARY KEY (`RegioesID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`localizacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`localizacoes` (
  `LocalizacaoID` VARCHAR(20) NOT NULL,
  `LocalizacaoDescricao` CHAR(50) NOT NULL,
  `RegioesID` INT NOT NULL,
  PRIMARY KEY (`LocalizacaoID`),
  INDEX `FK_Localizacoes_Regioes` (`RegioesID` ASC) VISIBLE,
  CONSTRAINT `FK_Localizacoes_Regioes`
    FOREIGN KEY (`RegioesID`)
    REFERENCES `emarket`.`regioes` (`RegioesID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `emarket`.`empregadolocalizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`empregadolocalizacao` (
  `EmpregadoID` INT NOT NULL,
  `LocalizacaoID` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`EmpregadoID`, `LocalizacaoID`),
  INDEX `FK_EmpregadoLocalizacao_Localizacoes` (`LocalizacaoID` ASC) VISIBLE,
  CONSTRAINT `FK_EmpregadoLocalizacao_Empregados`
    FOREIGN KEY (`EmpregadoID`)
    REFERENCES `emarket`.`empregados` (`EmpregadoID`),
  CONSTRAINT `FK_EmpregadoLocalizacao_Localizacoes`
    FOREIGN KEY (`LocalizacaoID`)
    REFERENCES `emarket`.`localizacoes` (`LocalizacaoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

USE `filmes_db` ;

-- -----------------------------------------------------
-- Table `filmes_db`.`generos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`generos` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_cadastro` TIMESTAMP NULL DEFAULT NULL,
  `data_atualizacao` TIMESTAMP NULL DEFAULT NULL,
  `nome` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `classificacao` INT UNSIGNED NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `generos_classificacao_unique` (`classificacao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`filmes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`filmes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `avaliacao` DECIMAL(3,1) UNSIGNED NOT NULL,
  `premios` INT UNSIGNED NOT NULL DEFAULT '0',
  `data_lancamento` DATETIME NOT NULL,
  `duracao` INT UNSIGNED NULL DEFAULT NULL,
  `genero_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `filmes_genero_id_foreign` (`genero_id` ASC) VISIBLE,
  CONSTRAINT `filmes_genero_id_foreign`
    FOREIGN KEY (`genero_id`)
    REFERENCES `filmes_db`.`generos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`atores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`atores` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `sobrenome` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `avaliacao` DECIMAL(3,1) NULL DEFAULT NULL,
  `fime_favorito_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `atores_fime_favorito_id_foreign` (`fime_favorito_id` ASC) VISIBLE,
  CONSTRAINT `atores_fime_favorito_id_foreign`
    FOREIGN KEY (`fime_favorito_id`)
    REFERENCES `filmes_db`.`filmes` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 50
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`series`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`series` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `data_lancamento` DATETIME NOT NULL,
  `data_termino` DATETIME NOT NULL,
  `genero_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `series_genero_id_foreign` (`genero_id` ASC) VISIBLE,
  CONSTRAINT `series_genero_id_foreign`
    FOREIGN KEY (`genero_id`)
    REFERENCES `filmes_db`.`generos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`temporadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`temporadas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `numero` INT UNSIGNED NULL DEFAULT NULL,
  `data_lancamento` DATETIME NOT NULL,
  `data_termino` DATETIME NOT NULL,
  `serie_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `temporadas_serie_id_foreign` (`serie_id` ASC) VISIBLE,
  CONSTRAINT `temporadas_serie_id_foreign`
    FOREIGN KEY (`serie_id`)
    REFERENCES `filmes_db`.`series` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 47
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`episodios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`episodios` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `numero` INT UNSIGNED NULL DEFAULT NULL,
  `data_lancamento` DATETIME NOT NULL,
  `avaliacao` DECIMAL(3,1) NOT NULL,
  `temporada_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `episodios_temporada_id_foreign` (`temporada_id` ASC) VISIBLE,
  CONSTRAINT `episodios_temporada_id_foreign`
    FOREIGN KEY (`temporada_id`)
    REFERENCES `filmes_db`.`temporadas` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 58
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`ator_episodio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`ator_episodio` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ator_id` INT UNSIGNED NOT NULL,
  `episodio_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `ator_episodio_ator_id_foreign` (`ator_id` ASC) VISIBLE,
  INDEX `ator_episodio_episodio_id_foreign` (`episodio_id` ASC) VISIBLE,
  CONSTRAINT `ator_episodio_ator_id_foreign`
    FOREIGN KEY (`ator_id`)
    REFERENCES `filmes_db`.`atores` (`id`),
  CONSTRAINT `ator_episodio_episodio_id_foreign`
    FOREIGN KEY (`episodio_id`)
    REFERENCES `filmes_db`.`episodios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 149
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`ator_filme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`ator_filme` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ator_id` INT UNSIGNED NOT NULL,
  `movie_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `ator_filme_ator_id_foreign` (`ator_id` ASC) VISIBLE,
  INDEX `ator_filme_movie_id_foreign` (`movie_id` ASC) VISIBLE,
  CONSTRAINT `ator_filme_ator_id_foreign`
    FOREIGN KEY (`ator_id`)
    REFERENCES `filmes_db`.`atores` (`id`),
  CONSTRAINT `ator_filme_movie_id_foreign`
    FOREIGN KEY (`movie_id`)
    REFERENCES `filmes_db`.`filmes` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 44
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`migracoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`migracoes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `migracao` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `lote` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`redefinicao_senhas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`redefinicao_senhas` (
  `email` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `token` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `data_criacao` TIMESTAMP NULL DEFAULT NULL,
  INDEX `redefinicao_senhas_email_index` (`email` ASC) VISIBLE,
  INDEX `redefinicao_senhas_token_index` (`token` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `filmes_db`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmes_db`.`usuarios` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `senha` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `lembrar_token` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `data_criacao` TIMESTAMP NULL DEFAULT NULL,
  `data_atualizacao` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `usuario_email_unico` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

USE `loc_machine` ;

-- -----------------------------------------------------
-- Table `loc_machine`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loc_machine`.`cliente` (
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
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `loc_machine`.`equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loc_machine`.`equipamento` (
  `id_EQUIPAMENTOS` INT NOT NULL AUTO_INCREMENT,
  `DESCRICAO` VARCHAR(100) NULL DEFAULT NULL,
  `TIPO` VARCHAR(70) NULL DEFAULT NULL,
  `TAMANHO` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id_EQUIPAMENTOS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `loc_machine`.`aluguel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loc_machine`.`aluguel` (
  `id_ALUGUEL` INT NOT NULL AUTO_INCREMENT,
  `ID_EQUIPAMENTO` INT NOT NULL,
  `ID_CLIENTE` INT NOT NULL,
  `DIAS_LOCAÇÃO` DECIMAL(3,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_ALUGUEL`),
  INDEX `ID_EQUIPAMENTOS_idx` (`ID_EQUIPAMENTO` ASC) VISIBLE,
  INDEX `ID_CLIENTES_idx` (`ID_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `ID_CLIENTES`
    FOREIGN KEY (`ID_CLIENTE`)
    REFERENCES `loc_machine`.`cliente` (`id_CLIENTE`),
  CONSTRAINT `ID_EQUIPAMENTOS`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `loc_machine`.`equipamento` (`id_EQUIPAMENTOS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `loc_machine`.`frete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loc_machine`.`frete` (
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
    REFERENCES `loc_machine`.`cliente` (`id_CLIENTE`),
  CONSTRAINT `ID_EQUIPAMENTO`
    FOREIGN KEY (`ID_EQUIPAMENTO`)
    REFERENCES `loc_machine`.`equipamento` (`id_EQUIPAMENTOS`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

USE `musimundos` ;

-- -----------------------------------------------------
-- Table `musimundos`.`artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`artistas` (
  `id` SMALLINT NOT NULL,
  `nome` VARCHAR(85) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`albuns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`albuns` (
  `id` SMALLINT NOT NULL,
  `titulo` VARCHAR(95) NULL DEFAULT NULL,
  `id_artista` SMALLINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_artista_idx` (`id_artista` ASC) VISIBLE,
  CONSTRAINT `id_artista`
    FOREIGN KEY (`id_artista`)
    REFERENCES `musimundos`.`artistas` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`generos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`generos` (
  `id` TINYINT NOT NULL,
  `nome` VARCHAR(18) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`tipos_de_arquivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`tipos_de_arquivo` (
  `id` TINYINT NOT NULL,
  `nome` VARCHAR(27) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`cancoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`cancoes` (
  `id` SMALLINT NOT NULL,
  `nome` VARCHAR(123) NULL DEFAULT NULL,
  `id_album` SMALLINT NULL DEFAULT NULL,
  `id_tipo_de_arquivo` TINYINT NULL DEFAULT NULL,
  `id_genero` TINYINT NULL DEFAULT NULL,
  `compositor` VARCHAR(188) NULL DEFAULT NULL,
  `duracao_milisegundos` INT NULL DEFAULT NULL,
  `bytes` BIGINT NULL DEFAULT NULL,
  `preco_unitario` DECIMAL(3,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_album_idx` (`id_album` ASC) VISIBLE,
  INDEX `id_genero_idx` (`id_genero` ASC) VISIBLE,
  INDEX `id_tipo_medio_idx` (`id_tipo_de_arquivo` ASC) VISIBLE,
  CONSTRAINT `id_album`
    FOREIGN KEY (`id_album`)
    REFERENCES `musimundos`.`albuns` (`id`),
  CONSTRAINT `id_genero`
    FOREIGN KEY (`id_genero`)
    REFERENCES `musimundos`.`generos` (`id`),
  CONSTRAINT `id_tipo_medio`
    FOREIGN KEY (`id_tipo_de_arquivo`)
    REFERENCES `musimundos`.`tipos_de_arquivo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`playlists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`playlists` (
  `id` TINYINT NOT NULL,
  `nome` VARCHAR(26) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`cancoes_playlists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`cancoes_playlists` (
  `id_playlist` TINYINT NULL DEFAULT NULL,
  `id_cancao` SMALLINT NULL DEFAULT NULL,
  INDEX `id_cancion_idx` (`id_cancao` ASC) VISIBLE,
  INDEX `id_playlist_idx` (`id_playlist` ASC) VISIBLE,
  CONSTRAINT `id_playlist`
    FOREIGN KEY (`id_playlist`)
    REFERENCES `musimundos`.`playlists` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`clientes` (
  `id` TINYINT NOT NULL,
  `nome` VARCHAR(20) NULL DEFAULT NULL,
  `sobrenome` VARCHAR(30) NULL DEFAULT NULL,
  `endereco` VARCHAR(40) NULL DEFAULT NULL,
  `cidade` VARCHAR(40) NULL DEFAULT NULL,
  `estado` VARCHAR(20) NULL DEFAULT NULL,
  `pais` VARCHAR(20) NULL DEFAULT NULL,
  `cep` VARCHAR(10) NULL DEFAULT NULL,
  `telefone` VARCHAR(19) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`empregados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`empregados` (
  `id` TINYINT NOT NULL,
  `sobrenome` VARCHAR(40) NULL DEFAULT NULL,
  `nome` VARCHAR(40) NULL DEFAULT NULL,
  `titulo` VARCHAR(40) NULL DEFAULT NULL,
  `data_nascimento` DATE NULL DEFAULT NULL,
  `data_contratacao` DATE NULL DEFAULT NULL,
  `endereco` VARCHAR(40) NULL DEFAULT NULL,
  `cidade` VARCHAR(40) NULL DEFAULT NULL,
  `estado` VARCHAR(40) NULL DEFAULT NULL,
  `pais` VARCHAR(40) NULL DEFAULT NULL,
  `cep` VARCHAR(40) NULL DEFAULT NULL,
  `telefone` VARCHAR(40) NULL DEFAULT NULL,
  `email` VARCHAR(24) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`faturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`faturas` (
  `id` SMALLINT NOT NULL,
  `id_cliente` TINYINT NULL DEFAULT NULL,
  `data_fatura` DATE NULL DEFAULT NULL,
  `endereco_cobranca` VARCHAR(40) NULL DEFAULT NULL,
  `cidade_cobranca` VARCHAR(19) NULL DEFAULT NULL,
  `estado_cobranca` VARCHAR(6) NULL DEFAULT NULL,
  `pais_cobranca` VARCHAR(14) NULL DEFAULT NULL,
  `cep_cobranca` VARCHAR(10) NULL DEFAULT NULL,
  `valor_total` DECIMAL(4,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `musimundos`.`clientes` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `musimundos`.`itens_da_faturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musimundos`.`itens_da_faturas` (
  `id` SMALLINT NOT NULL,
  `id_fatura` SMALLINT NULL DEFAULT NULL,
  `id_cancao` SMALLINT NULL DEFAULT NULL,
  `preco_unitario` DECIMAL(3,2) NULL DEFAULT NULL,
  `quantidade` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_factura_idx` (`id_fatura` ASC) VISIBLE,
  INDEX `id_cancion_idx` (`id_cancao` ASC) VISIBLE,
  CONSTRAINT `id_item_cancion`
    FOREIGN KEY (`id_cancao`)
    REFERENCES `musimundos`.`cancoes` (`id`),
  CONSTRAINT `id_item_factura`
    FOREIGN KEY (`id_fatura`)
    REFERENCES `musimundos`.`faturas` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

USE `odonto_dh` ;

-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_categoria` (
  `ID_CATEGORIA` INT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_plano` (
  `ID_PLANO` INT NOT NULL AUTO_INCREMENT,
  `NOME_PLANO` VARCHAR(100) NOT NULL,
  `DESCRICAO_PLANO` TEXT NULL DEFAULT NULL,
  `DATA_CRIACAO_PLANO` DATE NOT NULL,
  `VALOR_PLANO` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ID_PLANO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_associado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_associado` (
  `ID_ASSOCIADO` INT NOT NULL AUTO_INCREMENT,
  `COD_CARTEIRINHA` VARCHAR(15) NOT NULL,
  `NOME_COMPLETO` VARCHAR(100) NOT NULL,
  `RG` VARCHAR(16) NULL DEFAULT NULL,
  `CPF` VARCHAR(15) NULL DEFAULT NULL,
  `ENDERECO` VARCHAR(150) NULL DEFAULT NULL,
  `DATA_ENTRADA_SISTEMA` DATE NOT NULL,
  `STATUS` VARCHAR(25) NOT NULL,
  `DATA_INATIVACAO` DATE NULL DEFAULT NULL,
  `ID_PLANO_ATUAL` INT NOT NULL,
  `ID_CATEGORIA` INT NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO`),
  INDEX `FK_ASSOCIADO_PLANO` (`ID_PLANO_ATUAL` ASC) VISIBLE,
  INDEX `FK_ASSOCIADO_CATEGORIA` (`ID_CATEGORIA` ASC) VISIBLE,
  CONSTRAINT `FK_ASSOCIADO_CATEGORIA`
    FOREIGN KEY (`ID_CATEGORIA`)
    REFERENCES `odonto_dh`.`tb_categoria` (`ID_CATEGORIA`),
  CONSTRAINT `FK_ASSOCIADO_PLANO`
    FOREIGN KEY (`ID_PLANO_ATUAL`)
    REFERENCES `odonto_dh`.`tb_plano` (`ID_PLANO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_vendedor` (
  `ID_VENDEDOR` INT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(100) NOT NULL,
  `ENDERECO` VARCHAR(150) NOT NULL,
  `TELEFONE` VARCHAR(15) NULL DEFAULT NULL,
  `CELULAR` VARCHAR(15) NULL DEFAULT NULL,
  `EMAIL` VARCHAR(50) NULL DEFAULT NULL,
  `CNPJ` VARCHAR(20) NULL DEFAULT NULL,
  `NR_CONTRATO` VARCHAR(25) NOT NULL,
  `DATA_INICIO_CONTRATO` DATE NULL DEFAULT NULL,
  `DATA_FIM_CONTRATO` DATE NULL DEFAULT NULL,
  `DATA_ENTRADA_SISTEMA` DATE NOT NULL,
  `STATUS` VARCHAR(25) NOT NULL,
  `DATA_INATIVACAO` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID_VENDEDOR`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_associado_contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_associado_contrato` (
  `ID_ASSOCIADO_CONTRATO` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `ID_VENDEDOR` INT NOT NULL,
  `DATA_INICIO_CONTRATO` DATE NOT NULL,
  `DATA_FIM_CONTRATO` DATE NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO_CONTRATO`),
  UNIQUE INDEX `UN_ASSOCIADO_CONTRATO` (`ID_ASSOCIADO` ASC) VISIBLE,
  INDEX `FK_ASSOCIADO_CONTRATO_VENDEDOR` (`ID_VENDEDOR` ASC) VISIBLE,
  CONSTRAINT `FK_ASSOCIADO_CONTRATO_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `odonto_dh`.`tb_associado` (`ID_ASSOCIADO`),
  CONSTRAINT `FK_ASSOCIADO_CONTRATO_VENDEDOR`
    FOREIGN KEY (`ID_VENDEDOR`)
    REFERENCES `odonto_dh`.`tb_vendedor` (`ID_VENDEDOR`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_associado_telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_associado_telefone` (
  `ID_ASSOCIADO_TELEFONE` INT NOT NULL,
  `ID_ASSOCIADO` INT NOT NULL,
  `TELEFONE` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`ID_ASSOCIADO_TELEFONE`),
  INDEX `FK_ASSOCIADO_TELEFONE` (`ID_ASSOCIADO` ASC) VISIBLE,
  CONSTRAINT `FK_ASSOCIADO_TELEFONE`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `odonto_dh`.`tb_associado` (`ID_ASSOCIADO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_fatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_fatura` (
  `ID_FATURA` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `VALOR_TOTAL_FATURA` DECIMAL(10,2) NOT NULL,
  `DATA_GERACAO_FATURA` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `DATA_VENCIMENTO_FATURA` DATE NOT NULL,
  `FATURA_QUITADA` CHAR(3) NOT NULL,
  `DATA_QUITACAO_FATURA` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID_FATURA`),
  INDEX `FK_FATURA_ASSOCIADO` (`ID_ASSOCIADO` ASC) VISIBLE,
  CONSTRAINT `FK_FATURA_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `odonto_dh`.`tb_associado` (`ID_ASSOCIADO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_fatura_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_fatura_item` (
  `ID_FATURA_ITEM` INT NOT NULL AUTO_INCREMENT,
  `ID_FATURA` INT NOT NULL,
  `VL_ITEM_FATURA` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ID_FATURA_ITEM`),
  INDEX `FK_FATURA_ITEM` (`ID_FATURA` ASC) VISIBLE,
  CONSTRAINT `FK_FATURA_ITEM`
    FOREIGN KEY (`ID_FATURA`)
    REFERENCES `odonto_dh`.`tb_fatura` (`ID_FATURA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `odonto_dh`.`tb_historico_associado_plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `odonto_dh`.`tb_historico_associado_plano` (
  `ID_HISTORICO_ASSOCIADO_PLANO` INT NOT NULL AUTO_INCREMENT,
  `ID_ASSOCIADO` INT NOT NULL,
  `ID_PLANO` INT NOT NULL,
  `DATA_INICIO_VIGENCIA` DATE NOT NULL,
  `DATA_FIM_VIGENCIA` DATE NOT NULL,
  PRIMARY KEY (`ID_HISTORICO_ASSOCIADO_PLANO`),
  INDEX `FK_HISTORICO_ASSOCIADO_PLANO_ASSOCIADO` (`ID_ASSOCIADO` ASC) VISIBLE,
  INDEX `FK_HISTORICO_ASSOCIADO_PLANO_PLANO` (`ID_PLANO` ASC) VISIBLE,
  CONSTRAINT `FK_HISTORICO_ASSOCIADO_PLANO_ASSOCIADO`
    FOREIGN KEY (`ID_ASSOCIADO`)
    REFERENCES `odonto_dh`.`tb_associado` (`ID_ASSOCIADO`),
  CONSTRAINT `FK_HISTORICO_ASSOCIADO_PLANO_PLANO`
    FOREIGN KEY (`ID_PLANO`)
    REFERENCES `odonto_dh`.`tb_plano` (`ID_PLANO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `sakila` ;

-- -----------------------------------------------------
-- Table `sakila`.`ator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`ator` (
  `ator_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ator_id`),
  INDEX `idx_ator_sobrenome` (`sobrenome` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 201
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`categoria` (
  `categoria_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(25) NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`categoria_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`pais` (
  `pais_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(50) NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pais_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 110
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`cidade` (
  `cidade_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(50) NOT NULL,
  `pais_id` SMALLINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cidade_id`),
  INDEX `idx_fk_pais_id` (`pais_id` ASC) VISIBLE,
  CONSTRAINT `fk_cidade_pais`
    FOREIGN KEY (`pais_id`)
    REFERENCES `sakila`.`pais` (`pais_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 601
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`endereco` (
  `endereco_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `endereco` VARCHAR(50) NOT NULL,
  `endereco2` VARCHAR(50) NULL DEFAULT NULL,
  `bairro` VARCHAR(20) NOT NULL,
  `cidade_id` SMALLINT UNSIGNED NOT NULL,
  `cep` VARCHAR(10) NULL DEFAULT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`endereco_id`),
  INDEX `idx_fk_cidade_id` (`cidade_id` ASC) VISIBLE,
  CONSTRAINT `fk_endereco_cidade`
    FOREIGN KEY (`cidade_id`)
    REFERENCES `sakila`.`cidade` (`cidade_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 606
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`loja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`loja` (
  `loja_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `gerente_id` TINYINT UNSIGNED NOT NULL,
  `endereco_id` SMALLINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loja_id`),
  UNIQUE INDEX `idx_unique_manager` (`gerente_id` ASC) VISIBLE,
  INDEX `idx_fk_endereco_id` (`endereco_id` ASC) VISIBLE,
  CONSTRAINT `fk_loja_endereco`
    FOREIGN KEY (`endereco_id`)
    REFERENCES `sakila`.`endereco` (`endereco_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`cliente` (
  `cliente_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `loja_id` TINYINT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `endereco_id` SMALLINT UNSIGNED NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT '1',
  `data_criacao` DATETIME NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cliente_id`),
  INDEX `idx_fk_loja_id` (`loja_id` ASC) VISIBLE,
  INDEX `idx_fk_endereco_id` (`endereco_id` ASC) VISIBLE,
  INDEX `idx_sobrenome` (`sobrenome` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_endereco`
    FOREIGN KEY (`endereco_id`)
    REFERENCES `sakila`.`endereco` (`endereco_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_loja`
    FOREIGN KEY (`loja_id`)
    REFERENCES `sakila`.`loja` (`loja_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 600
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`idioma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`idioma` (
  `idioma_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` CHAR(20) NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idioma_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`filme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`filme` (
  `filme_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `descricao` TEXT NULL DEFAULT NULL,
  `ano_lancamento` YEAR NULL DEFAULT NULL,
  `idioma_id` TINYINT UNSIGNED NOT NULL,
  `idioma_original_id` TINYINT UNSIGNED NULL DEFAULT NULL,
  `duracao_locacao` TINYINT UNSIGNED NOT NULL DEFAULT '3',
  `preco_locacao` DECIMAL(4,2) NOT NULL DEFAULT '4.99',
  `duracao_filme` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `custo_reposicao` DECIMAL(5,2) NOT NULL DEFAULT '19.99',
  `classificacao` ENUM('G', 'PG', 'PG-13', 'R', 'NC-17') NULL DEFAULT 'G',
  `tipo` SET('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes') NULL DEFAULT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`filme_id`),
  INDEX `idx_titulo` (`titulo` ASC) VISIBLE,
  INDEX `idx_fk_idioma_id` (`idioma_id` ASC) VISIBLE,
  INDEX `idx_fk_idioma_original_id` (`idioma_original_id` ASC) VISIBLE,
  CONSTRAINT `fk_filme_idioma`
    FOREIGN KEY (`idioma_id`)
    REFERENCES `sakila`.`idioma` (`idioma_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_filme_idioma_original`
    FOREIGN KEY (`idioma_original_id`)
    REFERENCES `sakila`.`idioma` (`idioma_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`filme_ator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`filme_ator` (
  `ator_id` SMALLINT UNSIGNED NOT NULL,
  `filme_id` SMALLINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ator_id`, `filme_id`),
  INDEX `idx_fk_filme_id` (`filme_id` ASC) VISIBLE,
  CONSTRAINT `fk_filme_ator_ator`
    FOREIGN KEY (`ator_id`)
    REFERENCES `sakila`.`ator` (`ator_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_filme_ator_filme`
    FOREIGN KEY (`filme_id`)
    REFERENCES `sakila`.`filme` (`filme_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`filme_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`filme_categoria` (
  `filme_id` SMALLINT UNSIGNED NOT NULL,
  `categoria_id` TINYINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`filme_id`, `categoria_id`),
  INDEX `fk_filme_categoria_categoria` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_filme_categoria_categoria`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `sakila`.`categoria` (`categoria_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_filme_categoria_filme`
    FOREIGN KEY (`filme_id`)
    REFERENCES `sakila`.`filme` (`filme_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`filme_texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`filme_texto` (
  `filme_id` SMALLINT NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `descricao` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`filme_id`),
  FULLTEXT INDEX `idx_titulo_descricao` (`titulo`, `descricao`) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`funcionario` (
  `funcionario_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `endereco_id` SMALLINT UNSIGNED NOT NULL,
  `foto` BLOB NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `loja_id` TINYINT UNSIGNED NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT '1',
  `usuario` VARCHAR(16) NOT NULL,
  `senha` VARCHAR(40) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`funcionario_id`),
  INDEX `idx_fk_loja_id` (`loja_id` ASC) VISIBLE,
  INDEX `idx_fk_endereco_id` (`endereco_id` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_endereco`
    FOREIGN KEY (`endereco_id`)
    REFERENCES `sakila`.`endereco` (`endereco_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_funcionario_loja`
    FOREIGN KEY (`loja_id`)
    REFERENCES `sakila`.`loja` (`loja_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`inventario` (
  `inventario_id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `filme_id` SMALLINT UNSIGNED NOT NULL,
  `loja_id` TINYINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventario_id`),
  INDEX `idx_fk_filme_id` (`filme_id` ASC) VISIBLE,
  INDEX `idx_loja_id_filme_id` (`loja_id` ASC, `filme_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventario_filme`
    FOREIGN KEY (`filme_id`)
    REFERENCES `sakila`.`filme` (`filme_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_inventario_loja`
    FOREIGN KEY (`loja_id`)
    REFERENCES `sakila`.`loja` (`loja_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 4582
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`locacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`locacao` (
  `locacao_id` INT NOT NULL AUTO_INCREMENT,
  `data_locacao` DATETIME NOT NULL,
  `inventario_id` MEDIUMINT UNSIGNED NOT NULL,
  `cliente_id` SMALLINT UNSIGNED NOT NULL,
  `data_retorno` DATETIME NULL DEFAULT NULL,
  `funcionario_id` TINYINT UNSIGNED NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`locacao_id`),
  UNIQUE INDEX `data_locacao` (`data_locacao` ASC, `inventario_id` ASC, `cliente_id` ASC) VISIBLE,
  INDEX `idx_fk_inventario_id` (`inventario_id` ASC) VISIBLE,
  INDEX `idx_fk_cliente_id` (`cliente_id` ASC) VISIBLE,
  INDEX `idx_fk_funcionario_id` (`funcionario_id` ASC) VISIBLE,
  CONSTRAINT `fk_locacao_cliente`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `sakila`.`cliente` (`cliente_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_locacao_funcionario`
    FOREIGN KEY (`funcionario_id`)
    REFERENCES `sakila`.`funcionario` (`funcionario_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_locacao_inventario`
    FOREIGN KEY (`inventario_id`)
    REFERENCES `sakila`.`inventario` (`inventario_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 16050
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `sakila`.`pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sakila`.`pagamento` (
  `pagamento_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cliente_id` SMALLINT UNSIGNED NOT NULL,
  `funcionario_id` TINYINT UNSIGNED NOT NULL,
  `locacao_id` INT NULL DEFAULT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  `data_pagamento` DATETIME NOT NULL,
  `ultima_atualizacao` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pagamento_id`),
  INDEX `idx_fk_funcionario_id` (`funcionario_id` ASC) VISIBLE,
  INDEX `idx_fk_cliente_id` (`cliente_id` ASC) VISIBLE,
  INDEX `fk_pagamento_locacao` (`locacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_pagamento_cliente`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `sakila`.`cliente` (`cliente_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pagamento_funcionario`
    FOREIGN KEY (`funcionario_id`)
    REFERENCES `sakila`.`funcionario` (`funcionario_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pagamento_locacao`
    FOREIGN KEY (`locacao_id`)
    REFERENCES `sakila`.`locacao` (`locacao_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 16050
DEFAULT CHARACTER SET = utf8mb3;

USE `emarket` ;

-- -----------------------------------------------------
-- Placeholder table for view `emarket`.`vw_clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`vw_clientes` (`cl` INT, `Ct` INT, `FX` INT, `tel` INT);

-- -----------------------------------------------------
-- Placeholder table for view `emarket`.`vw_desafio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`vw_desafio` (`ID` INT, `PRODUTO` INT, `PRECOUNITARIO` INT, `ESTOQUE` INT, `ENCOMENDAS` INT, `PRIORIDADE` INT);

-- -----------------------------------------------------
-- Placeholder table for view `emarket`.`vw_detalhes_fatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `emarket`.`vw_detalhes_fatura` (`FATURA_ID` INT, `DATA_FATURA` INT, `DATA_ENVIO` INT, `TRANSPORTE` INT, `DESTINO` INT);

-- -----------------------------------------------------
-- View `emarket`.`vw_clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `emarket`.`vw_clientes`;
USE `emarket`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emarket`.`vw_clientes` AS select `emarket`.`clientes`.`ClienteID` AS `cl`,`emarket`.`clientes`.`Contato` AS `Ct`,`emarket`.`clientes`.`Fax` AS `FX`,`emarket`.`clientes`.`Telefone` AS `tel` from `emarket`.`clientes`;

-- -----------------------------------------------------
-- View `emarket`.`vw_desafio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `emarket`.`vw_desafio`;
USE `emarket`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emarket`.`vw_desafio` AS select `emarket`.`produtos`.`ProdutoID` AS `ID`,`emarket`.`produtos`.`ProdutoNome` AS `PRODUTO`,format(`emarket`.`produtos`.`PrecoUnitario`,0) AS `PRECOUNITARIO`,`emarket`.`produtos`.`UnidadesEstoque` AS `ESTOQUE`,`emarket`.`produtos`.`NivelReabastecimento` AS `ENCOMENDAS`,(case when (`emarket`.`produtos`.`UnidadesPedidas` = 0) then 'BAIXA' when ((`emarket`.`produtos`.`UnidadesPedidas` = 5) < `emarket`.`produtos`.`UnidadesEstoque`) then 'URGENTE' when (`emarket`.`produtos`.`UnidadesPedidas` < `emarket`.`produtos`.`UnidadesEstoque`) then 'MÉDIA' else 'PRIORITÁRIO' end) AS `PRIORIDADE` from `emarket`.`produtos`;

-- -----------------------------------------------------
-- View `emarket`.`vw_detalhes_fatura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `emarket`.`vw_detalhes_fatura`;
USE `emarket`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emarket`.`vw_detalhes_fatura` AS select `emarket`.`faturas`.`FaturaId` AS `FATURA_ID`,date_format(`emarket`.`faturas`.`DataFatura`,'%d/%m/%y') AS `DATA_FATURA`,date_format(`emarket`.`faturas`.`DataEnvio`,'%d/%m/%y') AS `DATA_ENVIO`,format(`emarket`.`faturas`.`Transporte`,2) AS `TRANSPORTE`,concat(`emarket`.`faturas`.`EnderecoEnvio`,', ',`emarket`.`faturas`.`CidadeEnvio`,', ',`emarket`.`faturas`.`CodigoPostalEnvio`,', ',`emarket`.`faturas`.`PaisEnvio`) AS `DESTINO` from `emarket`.`faturas`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
