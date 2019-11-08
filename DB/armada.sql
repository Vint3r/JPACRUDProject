-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema armada
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `armada` ;

-- -----------------------------------------------------
-- Schema armada
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `armada` DEFAULT CHARACTER SET utf8 ;
USE `armada` ;

-- -----------------------------------------------------
-- Table `capital_ship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `capital_ship` ;

CREATE TABLE IF NOT EXISTS `capital_ship` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ship_class` VARCHAR(75) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS listbuilder@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'listbuilder'@'localhost' IDENTIFIED BY 'Slipknot1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'listbuilder'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `capital_ship`
-- -----------------------------------------------------
START TRANSACTION;
USE `armada`;
INSERT INTO `capital_ship` (`id`, `ship_class`) VALUES (1, 'CR90');

COMMIT;

