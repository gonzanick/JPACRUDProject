-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema videogamesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `videogamesdb` ;

-- -----------------------------------------------------
-- Schema videogamesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videogamesdb` DEFAULT CHARACTER SET utf8 ;
USE `videogamesdb` ;

-- -----------------------------------------------------
-- Table `video_game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_game` ;

CREATE TABLE IF NOT EXISTS `video_game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `release_year` INT NOT NULL,
  `developer` VARCHAR(45) NOT NULL,
  `multiplayer` CHAR(2) NOT NULL,
  `price` DOUBLE NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS vguser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'vguser'@'localhost' IDENTIFIED BY 'vggonzo';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'vguser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `video_game`
-- -----------------------------------------------------
START TRANSACTION;
USE `videogamesdb`;
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (1, 'The Witcher 3: Wild Hunt', 'RPG', 2015, 'CD Projekt Red', 'N', 39.99, 'As war rages on throughout the Northern realms, you take on the greatest contract of your life, tracking down the Child of Prophecy. A living weapon that can alter the shape of the world..');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (2, 'ARMA 3', 'MilSim', 2013, 'Bohemia Interactive', 'Y', 29.99, 'Experience true combat gameplay in a massive military sandbox');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (3, 'Elden Ring', 'RPG', 2022, 'FromSoftware Inc', 'Y', 59.99, 'Rise Tarnished, and be guided by grace to brandish the power of the Elden Ring and become the Elden Lord in the Lands Between');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (4, 'The Elder Scrolls V: Skyrim Special Edition', 'RPG', 2016, 'Bethesda Game Studios', 'N', 39.99, 'Winner of over 200 Game of the Year awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail.');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (5, 'Halo: The Master Chief Colection', 'FPS', 2019, '343 Industries', 'Y', 39.99, 'The Master Chief\'s iconic journey includes six games giving the ultimate Halo experiance');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (6, 'Rust', 'Survival', 2018, 'Facepunch Studios', 'Y', 39.99, 'The only aim of Rust is to Survive. Do whatever it takes to survive another night');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (7, 'Red Dead Redemption 2', 'Action/Adventure', 2018, 'Rockstar Games', 'Y', 59.99, 'Winner of 175 Game of the Year awards, RDR2 tells the epic tale of Arthur Morgan and the infamous Van der Linde gang.');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (8, 'Hell Let Loose', 'Action/Shooter', 2021, 'Black Matter Pty Ltd', 'Y', 39.99, 'A hardcore WWII first person shooter with epic battles of 100 player lobbies');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (9, 'The Elder Scrolls Online', 'MMORPG', 2014, 'Zenimax Online Studios', 'Y', 19.99, 'Join over 20 million players int the Elder Scrolls universe online');
INSERT INTO `video_game` (`id`, `name`, `genre`, `release_year`, `developer`, `multiplayer`, `price`, `description`) VALUES (10, 'STAR WARS Knights of the Old Republic 2 - The Sith Lords', 'RPG', 2005, 'Obsidian Entertainment', 'N', 9.99, 'Five Years after the events of KOTOR, the Sith have hunted the Jedi to the edge of extinction.');

COMMIT;

