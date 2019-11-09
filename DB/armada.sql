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
  `ship_class` VARCHAR(75) NOT NULL,
  `alignment` VARCHAR(50) NOT NULL,
  `command_value` INT NULL,
  `engineering_value` INT NULL,
  `squadron_value` INT NULL,
  `hull` INT NULL,
  `point_cost` INT NULL,
  `forward_shields` INT NULL,
  `right_shields` INT NULL,
  `left_shields` INT NULL,
  `rear_shields` INT NULL,
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
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (1, 'CR90 Corvette B', 'Rebellion', 1, 2, 1, 4, 39, 2, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (2, 'CR90 Corvette A', 'Rebellion', 1, 2, 1, 4, 44, 2, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (3, 'Victory I', 'Empire', 3, 4, 3, 8, 73, 3, 3, 3, 1);

COMMIT;

