SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `UserId` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Idade` INT NULL,
  `senha` VARCHAR(45) NULL,
  PRIMARY KEY (`UserId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Conteudo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Conteudo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Conteudo` (
  `ContId` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Classificacao` VARCHAR(45) NULL,
  `Tipo` VARCHAR(45) NULL,
  `Duracao` VARCHAR(45) NULL,
  PRIMARY KEY (`ContId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Historico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Historico` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Historico` (
  `UsWaId` VARCHAR(45) NOT NULL,
  `UserId` INT NOT NULL,
  `ContId` INT NOT NULL,
  `Data` DATE NULL,
  `Usuario` VARCHAR(45) NULL,
  `Tempo` TIME NULL,
  `Nome` VARCHAR(45) NULL,
  PRIMARY KEY (`UserId`, `ContId`, `UsWaId`),
  INDEX `fk_Usuario_has_Conteudo_Conteudo1_idx` (`ContId` ASC) VISIBLE,
  INDEX `fk_Usuario_has_Conteudo_Usuario1_idx` (`UserId` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_has_Conteudo_Usuario1`
    FOREIGN KEY (`UserId`)
    REFERENCES `mydb`.`Usuario` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Conteudo_Conteudo1`
    FOREIGN KEY (`ContId`)
    REFERENCES `mydb`.`Conteudo` (`ContId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserComment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserComment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserComment` (
  `CommentId` INT NOT NULL,
  `Conteudo_ContId` INT NOT NULL,
  `UserId` INT NOT NULL,
  `Usuario` VARCHAR(45) NULL,
  `Texto` VARCHAR(1000) NULL,
  `Data` DATE NULL,
  `Likes` INT NULL,
  PRIMARY KEY (`CommentId`, `Conteudo_ContId`, `UserId`),
  INDEX `fk_Conteudo_has_Usuario_Usuario1_idx` (`UserId` ASC) VISIBLE,
  INDEX `fk_Conteudo_has_Usuario_Conteudo1_idx` (`Conteudo_ContId` ASC) VISIBLE,
  CONSTRAINT `fk_Conteudo_has_Usuario_Conteudo1`
    FOREIGN KEY (`Conteudo_ContId`)
    REFERENCES `mydb`.`Conteudo` (`ContId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conteudo_has_Usuario_Usuario1`
    FOREIGN KEY (`UserId`)
    REFERENCES `mydb`.`Usuario` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mensagem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Mensagem` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Mensagem` (
  `MensId` INT NOT NULL,
  `RemetId` INT NOT NULL,
  `DestId` INT NOT NULL,
  `Mensagem` VARCHAR(300) NULL,
  `Data` DATE NULL,
  `Remetente` VARCHAR(45) NULL,
  `VIsualizada` TINYINT NULL,
  PRIMARY KEY (`MensId`, `RemetId`, `DestId`),
  INDEX `fk_Usuario_has_Usuario_Usuario2_idx` (`DestId` ASC) VISIBLE,
  INDEX `fk_Usuario_has_Usuario_Usuario1_idx` (`RemetId` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_has_Usuario_Usuario1`
    FOREIGN KEY (`RemetId`)
    REFERENCES `mydb`.`Usuario` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Usuario_Usuario2`
    FOREIGN KEY (`DestId`)
    REFERENCES `mydb`.`Usuario` (`UserId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
