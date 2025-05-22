-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema UniReview
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema UniReview
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `UniReview` DEFAULT CHARACTER SET utf8 ;
USE `UniReview` ;

-- -----------------------------------------------------
-- Table `UniReview`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `usu_nombre` VARCHAR(100) NOT NULL,
  `usu_email` VARCHAR(100) NOT NULL,
  `usu_telefono` VARCHAR(10) NOT NULL,
  `usu_password` VARCHAR(45) NOT NULL,
  `usu_fechaNacimiento` DATE NOT NULL,
  `usu_foto_perfil` VARCHAR(500) NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`escuela` (
  `idescuela` INT NOT NULL AUTO_INCREMENT,
  `esc_nombre` VARCHAR(100) NOT NULL,
  `esc_ubicacion` VARCHAR(100) NOT NULL,
  `esc_enlace` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idescuela`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`carrera` (
  `idcarrera` INT NOT NULL AUTO_INCREMENT,
  `carr_nombre` VARCHAR(100) NOT NULL,
  `carr_evaluacion_prom` DOUBLE NOT NULL,
  PRIMARY KEY (`idcarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`publicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`publicacion` (
  `idpublicacion` INT NOT NULL AUTO_INCREMENT,
  `publi_comentario` VARCHAR(830) NOT NULL,
  `publi_fecha` DATE NOT NULL,
  `publi_calificacion` INT UNSIGNED NOT NULL,
  `idusuario_fk` INT NOT NULL,
  `publi_etiqueta` VARCHAR(45) NULL,
  `publi_tipo_usuario` VARCHAR(45) NOT NULL,
  `idescuela_fk` INT NOT NULL,
  `idcarrera_fk` INT NOT NULL,
  PRIMARY KEY (`idpublicacion`),
  INDEX `fk_publicaciones_usuario_idx` (`idusuario_fk` ASC) VISIBLE,
  INDEX `fk_publicaciones_escuela1_idx` (`idescuela_fk` ASC) VISIBLE,
  INDEX `fk_publicaciones_carrera1_idx` (`idcarrera_fk` ASC) VISIBLE,
  CONSTRAINT `fk_publicaciones_usuario`
    FOREIGN KEY (`idusuario_fk`)
    REFERENCES `UniReview`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicaciones_escuela1`
    FOREIGN KEY (`idescuela_fk`)
    REFERENCES `UniReview`.`escuela` (`idescuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicaciones_carrera1`
    FOREIGN KEY (`idcarrera_fk`)
    REFERENCES `UniReview`.`carrera` (`idcarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`ofertaEducativa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`ofertaEducativa` (
  `idoferta_educativa` INT NOT NULL AUTO_INCREMENT,
  `ofed_enlace` VARCHAR(500) NOT NULL,
  `idescuela_fk` INT NOT NULL,
  `idcarrera_fk` INT NOT NULL,
  PRIMARY KEY (`idoferta_educativa`),
  INDEX `fk_oferta educativa_escuela1_idx` (`idescuela_fk` ASC) VISIBLE,
  INDEX `fk_oferta educativa_carrera1_idx` (`idcarrera_fk` ASC) VISIBLE,
  CONSTRAINT `fk_oferta educativa_escuela1`
    FOREIGN KEY (`idescuela_fk`)
    REFERENCES `UniReview`.`escuela` (`idescuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_oferta educativa_carrera1`
    FOREIGN KEY (`idcarrera_fk`)
    REFERENCES `UniReview`.`carrera` (`idcarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
