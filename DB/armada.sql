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
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (4, 'MC80 Assault Cruiser', 'Rebellion', 3, 4, 3, 8, 114, 4, 4, 4, 3);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (5, 'MC75 Armored Cruiser', 'Rebellion', 3, 4, 3, 9, 104, 4, 3, 3, 3);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (6, 'MC80 Command Cruiser', 'Rebellion', 3, 4, 4, 8, 106, 4, 4, 4, 3);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (7, 'MC75 Ordance Cruiser', 'Rebellion', 3, 4, 2, 9, 100, 4, 3, 3, 3);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (8, 'MC80 Battle Cruiser', 'Rebellion', 3, 4, 2, 8, 103, 5, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (9, 'MC80 Star Cruiser', 'Rebellion', 3, 4, 2, 8, 96, 5, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (10, 'Assault Frigate Mark II A', 'Rebellion', 3, 4, 2, 6, 81, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (11, 'Assault Frigate Mark II B', 'Rebellion', 3, 4, 3, 6, 72, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (12, 'MC30c Scout Frigate', 'Rebellion', 2, 3, 1, 4, 69, 3, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (13, 'MC30c Torpedo Frigate', 'Rebellion', 2, 3, 1, 4, 63, 3, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (14, 'Modified Pelta-Class Command Ship', 'Rebellion', 2, 4, 3, 5, 60, 3, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (15, 'Modified Pelta-Class Assault Ship', 'Rebellion', 2, 4, 1, 5, 56, 3, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (16, 'Nebulon-B Escort Frigate', 'Rebellion', 2, 3, 2, 5, 57, 3, 1, 1, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (17, 'Nebulon-B Support Refit', 'Rebellion', 2, 3, 1, 5, 51, 3, 1, 1, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (18, 'Hammerhead Scout Corvette', 'Rebellion', 1, 2, 1, 5, 41, 2, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (19, 'Hammerhead Torpedo Corvette', 'Rebellion', 1, 2, 1, 5, 36, 2, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (20, 'GR-75 Medium Transports', 'Rebellion', 1, 2, 2, 3, 18, 1, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (21, 'GR-75 Combat Retrofits', 'Rebellion', 1, 2, 2, 3, 24, 1, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (22, 'Gladiator II-Class Star Destroyer', 'Empire', 2, 3, 2, 5, 62, 3, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (23, 'Gladiator I-Class Star Destroyer', 'Empire', 2, 3, 2, 5, 56, 3, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (24, 'Raider I-Class Corvette', 'Empire', 1, 2, 1, 4, 44, 2, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (25, 'Raider II-Class Corvette', 'Empire', 1, 2, 1, 4, 48, 2, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (26, 'Gozanti-Class Assault Carriers', 'Empire', 1, 2, 2, 3, 28, 1, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (27, 'Gozanti-Class Cruisers', 'Empire', 1, 2, 2, 3, 23, 1, 1, 1, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (28, 'Quasar Fire II-Class Cruiser-Carrier', 'Empire', 2, 2, 4, 6, 61, 2, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (29, 'Quasar Fire I-Class Cruiser-Carrier', 'Empire', 2, 2, 4, 6, 54, 2, 2, 2, 1);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (30, 'Interdictor Combat Refit', 'Empire', 2, 5, 2, 9, 93, 3, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (31, 'Interdictor Suppression Refit', 'Empire', 2, 5, 2, 9, 90, 3, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (32, 'Arquitens-Class Command Cruiser', 'Empire', 2, 3, 2, 5, 59, 2, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (34, 'Arquitens-Class Light Cruiser', 'Empire', 2, 3, 1, 5, 54, 2, 2, 2, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (35, 'Imperial II-Class Star Destroyer', 'Empire', 3, 4, 4, 11, 120, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (36, 'Imperial Star Destroyer Cymoon 1 Refit', 'Empire', 3, 4, 3, 11, 112, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (37, 'Imperial Star Destroyer Kuat 1 Refit', 'Empire', 3, 4, 2, 11, 112, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (38, 'Imperial I-Class Star Destroyer', 'Empire', 3, 4, 4, 11, 110, 4, 3, 3, 2);
INSERT INTO `capital_ship` (`id`, `ship_class`, `alignment`, `command_value`, `engineering_value`, `squadron_value`, `hull`, `point_cost`, `forward_shields`, `right_shields`, `left_shields`, `rear_shields`) VALUES (39, 'Victory II-Class Star Destroyer', 'Empire', 3, 4, 3, 8, 85, 3, 3, 3, 1);

COMMIT;

