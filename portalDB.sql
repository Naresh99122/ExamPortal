
CREATE DATABASE portalDb;
-- DROP database portalDb;
use portalDb;

CREATE TABLE `admin` (
  `AdminId` INT NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AdminId`));



CREATE TABLE `studentdata` (
  `idStudent` INT NOT NULL,
  `StudName` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(45) NOT NULL,
  `Mobile` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStudent`));

CREATE TABLE `mocktest` (
  `idTest` INT NOT NULL,
  `QuestionId` INT NOT NULL UNIQUE,
  `Question` VARCHAR(45) NOT NULL,
  `Op1` VARCHAR(45) NOT NULL,
  `Op2` VARCHAR(45) NOT NULL,
  `Op3` VARCHAR(45) NOT NULL,
  `Op4` VARCHAR(45) NOT NULL,
  `Answer` INT NOT NULL,
PRIMARY KEY (`idTest`, `QuestionId`));

CREATE TABLE `testscore` (
  `idStudent` INT NOT NULL,
  `idTest` INT NOT NULL,
  `QuestionId` INT NOT NULL,
  `Selected` INT NOT NULL,
  `Marks` INT NOT NULL,
  PRIMARY KEY (`idStudent`),
    CONSTRAINT `idStudent`
    FOREIGN KEY (`idStudent`)
    REFERENCES `studentdata` (`idStudent`),
  CONSTRAINT `idTest`
    FOREIGN KEY (`idTest`)
    REFERENCES `mocktest` (`idTest`),
  CONSTRAINT `QuestionId`
    FOREIGN KEY (`QuestionId`)
    REFERENCES `mocktest` (`QuestionId`));

DeSc mocktest;
