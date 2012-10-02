SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `listamercado` ;
USE `listamercado` ;

-- -----------------------------------------------------
-- Table `listamercado`.`customers`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `listamercado`.`customers` (
  `id_customer` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `lastname` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `created_at` DATETIME NULL ,
  PRIMARY KEY (`id_customer`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `listamercado`.`lists`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `listamercado`.`lists` (
  `id_list` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `fk_customer` INT NULL ,
  `created_at` DATETIME NULL ,
  `updated_at` DATETIME NULL ,
  PRIMARY KEY (`id_list`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `listamercado`.`products`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `listamercado`.`products` (
  `id_product` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `created_at` DATETIME NULL ,
  PRIMARY KEY (`id_product`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `listamercado`.`prodlists`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `listamercado`.`prodlists` (
  `id_prodlist` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `fk_list` INT NULL ,
  `fk_product` INT NULL ,
  `fk_customer` INT NULL ,
  `quantity` INT NULL ,
  `amount` FLOAT NULL ,
  `created_at` DATETIME NULL ,
  PRIMARY KEY (`id_prodlist`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
