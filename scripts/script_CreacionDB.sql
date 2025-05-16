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
  `usu_telefono` INT(10) UNSIGNED NOT NULL,
  `usu_password` VARCHAR(45) NOT NULL,
  `usu_fechaNacimiento` DATE NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`escuela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`escuela` (
  `idescuela` INT NOT NULL AUTO_INCREMENT,
  `esc_nombre` VARCHAR(100) NOT NULL,
  `esc_estado` VARCHAR(100) NOT NULL,
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
-- Table `UniReview`.`publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`publicaciones` (
  `idpublicaciones` INT NOT NULL AUTO_INCREMENT,
  `publi_comentario` VARCHAR(830) NOT NULL,
  `publi_fecha` DATE NOT NULL,
  `publi_calificación` INT UNSIGNED NOT NULL,
  `usuario_idusuario_fk` INT NOT NULL,
  `publi_etiqueta` VARCHAR(45) NULL,
  `publi_tipo_usuario` VARCHAR(45) NOT NULL,
  `escuela_idescuela_fk` INT NOT NULL,
  `carrera_idcarrera_fk` INT NOT NULL,
  PRIMARY KEY (`idpublicaciones`),
  INDEX `fk_publicaciones_usuario_idx` (`usuario_idusuario_fk` ASC) VISIBLE,
  INDEX `fk_publicaciones_escuela1_idx` (`escuela_idescuela_fk` ASC) VISIBLE,
  INDEX `fk_publicaciones_carrera1_idx` (`carrera_idcarrera_fk` ASC) VISIBLE,
  CONSTRAINT `fk_publicaciones_usuario`
    FOREIGN KEY (`usuario_idusuario_fk`)
    REFERENCES `UniReview`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicaciones_escuela1`
    FOREIGN KEY (`escuela_idescuela_fk`)
    REFERENCES `UniReview`.`escuela` (`idescuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicaciones_carrera1`
    FOREIGN KEY (`carrera_idcarrera_fk`)
    REFERENCES `UniReview`.`carrera` (`idcarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UniReview`.`oferta educativa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UniReview`.`oferta educativa` (
  `id_oferta_educativa` INT NOT NULL AUTO_INCREMENT,
  `ofed_enlace` VARCHAR(200) NOT NULL,
  `escuela_idescuela_fk` INT NOT NULL,
  `carrera_idcarrera_fk` INT NOT NULL,
  PRIMARY KEY (`id_oferta_educativa`),
  INDEX `fk_oferta educativa_escuela1_idx` (`escuela_idescuela_fk` ASC) VISIBLE,
  INDEX `fk_oferta educativa_carrera1_idx` (`carrera_idcarrera_fk` ASC) VISIBLE,
  CONSTRAINT `fk_oferta educativa_escuela1`
    FOREIGN KEY (`escuela_idescuela_fk`)
    REFERENCES `UniReview`.`escuela` (`idescuela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_oferta educativa_carrera1`
    FOREIGN KEY (`carrera_idcarrera_fk`)
    REFERENCES `UniReview`.`carrera` (`idcarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
