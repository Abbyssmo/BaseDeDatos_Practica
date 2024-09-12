-- MySQL Workbench Synchronization
-- Generated: 2024-09-12 17:31
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Alumnos

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `examen2.0` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `examen2.0`.`Empleados` (
  `ID_Empleado` INT(11) NOT NULL AUTO_INCREMENT,
  `Nomb_empl` VARCHAR(100) NOT NULL,
  `Departamento_ID_Dep` INT(11) NOT NULL,
  PRIMARY KEY (`ID_Empleado`, `Departamento_ID_Dep`),
  INDEX `fk_Empleados_Departamento_idx` (`Departamento_ID_Dep` ASC) VISIBLE,
  CONSTRAINT `fk_Empleados_Departamento`
    FOREIGN KEY (`Departamento_ID_Dep`)
    REFERENCES `examen2.0`.`Departamento` (`ID_Dep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `examen2.0`.`Departamento` (
  `ID_Dep` INT(11) NOT NULL,
  `Nomb_Dep` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID_Dep`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `examen2.0`.`Edad` (
  `idEdad` INT(11) NOT NULL AUTO_INCREMENT,
  `Edad` INT(11) NOT NULL,
  `Empleados_ID_Empleado` INT(11) NOT NULL,
  PRIMARY KEY (`idEdad`, `Empleados_ID_Empleado`),
  INDEX `fk_Edad_Empleados1_idx` (`Empleados_ID_Empleado` ASC) VISIBLE,
  CONSTRAINT `fk_Edad_Empleados1`
    FOREIGN KEY (`Empleados_ID_Empleado`)
    REFERENCES `examen2.0`.`Empleados` (`ID_Empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
