CREATE TABLE IF NOT EXISTS `voluntrack`.`USER` (
  `USER_ID` INT NOT NULL AUTO_INCREMENT,
  `NAME_FIRST` VARCHAR(45) NOT NULL,
  `NAME_LAST` VARCHAR(45) NOT NULL,
  `NAME_MIDDLE` VARCHAR(45) NULL,
  `DATE_OF_BIRTH` DATE NULL,
  `AGE` INT NULL,
  `USERNAME` VARCHAR(45) NOT NULL,
  `SEX` VARCHAR(6) NOT NULL,
  `CREATE_DT_TM` DATETIME(23) NULL,
  `PASSWORD` VARCHAR(255) NOT NULL,
  `USERcol` VARCHAR(45) NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE INDEX `USERNAME_UNIQUE` (`USERNAME` ASC),
  UNIQUE INDEX `USER_ID_UNIQUE` (`USER_ID` ASC))
ENGINE = InnoDB
