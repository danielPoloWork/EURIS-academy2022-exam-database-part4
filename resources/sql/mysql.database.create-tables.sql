CREATE SCHEMA `SportingGoodsChainCompany`;

CREATE TABLE `SportingGoodsChainCompany`.`Availability` (
  `uuid` CHAR(36) PRIMARY KEY NOT NULL,
  `uuidBranch` CHAR(36) NOT NULL,
  `uuidProduct` CHAR(36) NOT NULL,
  `quantity` INT NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

CREATE TABLE `SportingGoodsChainCompany`.`Branch` (
  `uuid` CHAR(36) PRIMARY KEY NOT NULL,
  `branchCode` CHAR(12) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

CREATE TABLE `SportingGoodsChainCompany`.`Employee` (
  `uuid` CHAR(36) PRIMARY KEY NOT NULL,
  `uuidBranch` CHAR(36) NOT NULL,
  `serialNumber` CHAR(12) NOT NULL,
  `firstName` VARCHAR(100) NOT NULL,
  `lastName` VARCHAR(100) NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

CREATE TABLE `SportingGoodsChainCompany`.`Order` (
  `uuid` CHAR(36) PRIMARY KEY NOT NULL,
  `uuidEmployee` CHAR(36) NOT NULL,
  `uuidProduct` CHAR(36) NOT NULL,
  `orderCode` CHAR(12) NOT NULL,
  `orderDate` DATETIME NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

CREATE TABLE `SportingGoodsChainCompany`.`Product` (
  `uuid` CHAR(36) PRIMARY KEY NOT NULL,
  `productCode` CHAR(12) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `netPrice` DOUBLE NOT NULL,
  `grossPrice` DOUBLE NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

CREATE TABLE `SportingGoodsChainCompany`.`CONFIGURATION` (
  `label` VARCHAR(255) PRIMARY KEY NOT NULL,
  `value` VARCHAR(1000) NOT NULL,
  `dateCreation` DATETIME NOT NULL,
  `dateUpdate` DATETIME NOT NULL
);

ALTER TABLE `SportingGoodsChainCompany`.`Availability`
ADD INDEX `fkAvailabilityBranch_idx` (`uuidBranch` ASC) VISIBLE,
ADD INDEX `fkAvailabilityProduct_idx` (`uuidProduct` ASC) VISIBLE;
;
ALTER TABLE `SportingGoodsChainCompany`.`Availability`
ADD CONSTRAINT `fkAvailabilityBranch`
  FOREIGN KEY (`uuidBranch`)
  REFERENCES `SportingGoodsChainCompany`.`Branch` (`uuid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fkAvailabilityProduct`
  FOREIGN KEY (`uuidProduct`)
  REFERENCES `SportingGoodsChainCompany`.`Product` (`uuid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `SportingGoodsChainCompany`.`Employee`
ADD INDEX `fkEmployeeBranch_idx` (`uuidBranch` ASC) VISIBLE;
;
ALTER TABLE `SportingGoodsChainCompany`.`Employee`
ADD CONSTRAINT `fkEmployeeBranch`
  FOREIGN KEY (`uuidBranch`)
  REFERENCES `SportingGoodsChainCompany`.`Branch` (`uuid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `SportingGoodsChainCompany`.`Order`
ADD INDEX `fkOrderEmployee_idx` (`uuidEmployee` ASC) VISIBLE,
ADD INDEX `fkOrderProduct_idx` (`uuidProduct` ASC) VISIBLE;
;
ALTER TABLE `SportingGoodsChainCompany`.`Order`
ADD CONSTRAINT `fkOrderEmployee`
  FOREIGN KEY (`uuidEmployee`)
  REFERENCES `SportingGoodsChainCompany`.`Employee` (`uuid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fkOrderProduct`
  FOREIGN KEY (`uuidProduct`)
  REFERENCES `SportingGoodsChainCompany`.`Product` (`uuid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;