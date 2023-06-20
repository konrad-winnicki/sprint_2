CREATE TABLE IF NOT EXISTS `optica`.`supliers` (
  `nif` VARCHAR(9) NOT NULL,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `fax` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nif`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `optica`.`brands` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  `suplier_id` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `suplier_ref_idx` (`suplier_id` ASC) VISIBLE,
  CONSTRAINT `suplier_ref`
    FOREIGN KEY (`suplier_id`)
    REFERENCES `optica`.`supliers` (`nif`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `optica`.`products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `brand` INT NOT NULL,
  `dioptre_left` DECIMAL(4,2) NOT NULL,
  `dioptre_right` DECIMAL(4,2) NOT NULL,
  `frame_type` ENUM("flotant", "pasta", "metallica") NOT NULL,
  `frame_colour` VARCHAR(45) NOT NULL,
  `glass_colour` VARCHAR(45) NOT NULL,
  `price` DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `brand_ref_idx` (`brand` ASC) VISIBLE,
  CONSTRAINT `brand_ref`
    FOREIGN KEY (`brand`)
    REFERENCES `optica`.`brands` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `optica`.`clients` (
  `client_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL,
  `registration_date` DATE NOT NULL,
  `recommender_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  INDEX `recomander_idx` (`recommender_id` ASC) VISIBLE,
  CONSTRAINT `recomander`
    FOREIGN KEY (`recommender_id`)
    REFERENCES `optica`.`clients` (`client_id`)
    ON DELETE set null
    ON UPDATE cascade)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `optica`.`sellers` (
    `seller_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `surname` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`seller_id`)
)  ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS `optica`.`product_sales` (
  `sale_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `seller_id` INT NOT NULL,
  `client_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`sale_id`),
  INDEX `transaction_worker_idx` (`seller_id` ASC) VISIBLE,
  INDEX `ref_to_client_idx` (`client_id` ASC) VISIBLE,
  INDEX `ref_to_product_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `ref_to_seller`
    FOREIGN KEY (`seller_id`)
    REFERENCES `optica`.`sellers` (`seller_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ref_to_client`
    FOREIGN KEY (`client_id`)
    REFERENCES `optica`.`clients` (`client_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ref_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `optica`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;






