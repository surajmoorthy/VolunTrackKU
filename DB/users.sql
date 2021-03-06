CREATE TABLE IF NOT EXISTS `voluntrack`.`USERS` (
  `USER_ID` INT NOT NULL AUTO_INCREMENT,
  `NAME_FIRST` VARCHAR(45) NOT NULL,
  `NAME_LAST` VARCHAR(45) NOT NULL,
  `NAME_MIDDLE` VARCHAR(45) NULL,
  `DATE_OF_BIRTH` DATE NULL,
  `USERNAME` VARCHAR(45) NOT NULL,
  `CREATE_DT_TM` DATETIME(0) NULL,
  `PASSWORD` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE INDEX `USERNAME_UNIQUE` (`USERNAME` ASC),
  UNIQUE INDEX `USER_ID_UNIQUE` (`USER_ID` ASC))
ENGINE = InnoDB
