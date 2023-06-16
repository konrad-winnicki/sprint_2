use pizzeria;

CREATE TABLE IF NOT EXISTS `pizzeria`.`clients` (
    `client_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `surname` VARCHAR(45) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `zip_code` VARCHAR(45) NOT NULL,
    `city` VARCHAR(70) NOT NULL,
    `district` VARCHAR(70) NOT NULL,
    `phone` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`client_id`)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`restaurants` (
    `restaurant_id` INT NOT NULL AUTO_INCREMENT,
    `address` VARCHAR(50) NOT NULL,
    `city` VARCHAR(60) NOT NULL,
    `district` VARCHAR(60) NOT NULL,
    `zip_code` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`restaurant_id`)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`workers` (
  `worker_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `position` ENUM('cook', 'caterer') NULL DEFAULT NULL,
  `nif` VARCHAR(9) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `restaurant_id` INT NOT NULL,
  PRIMARY KEY (`worker_id`),
  INDEX `worker_reastaurant_idx` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `worker_reastaurant`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `pizzeria`.`restaurants` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `picture` MEDIUMBLOB NULL DEFAULT NULL,
  `price` DECIMAL(5,2) NULL DEFAULT 0,
  `product_type` ENUM('pizza', 'hamburger', 'drink') NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`categories` (
  `category_id` INT NOT NULL,
  `category_name` VARCHAR(45) NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`pizza_category` (
  `pizza_category_id` INT NOT NULL AUTO_INCREMENT,
  `category_id` INT NOT NULL,
  `product_id` INT NULL,
  PRIMARY KEY (`pizza_category_id`),
  INDEX `pizza_category_idx` (`category_id` ASC) VISIBLE,
  INDEX `product_pizza_cat_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `pizza_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `pizzeria`.`categories` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `product_pizza_cat`
    FOREIGN KEY (`product_id`)
    REFERENCES `pizzeria`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `date_time` DATETIME NULL DEFAULT NULL,
  `total_price` DECIMAL(6,2) NOT NULL,
  `delivery_time` DATETIME NULL,
  `pick_up_time` DATETIME NULL,
  `caterer` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `orders_clietts_idx` (`client_id` ASC) VISIBLE,
  INDEX `order_worker_idx` (`caterer` ASC) VISIBLE,
  INDEX `order_restaurant_idx` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `orders_clients`
    FOREIGN KEY (`client_id`)
    REFERENCES `pizzeria`.`clients` (`client_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `order_worker`
    FOREIGN KEY (`caterer`)
    REFERENCES `pizzeria`.`workers` (`worker_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `order_restaurant`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `pizzeria`.`restaurants` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pizzeria`.`order_positions` (
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`order_id`, `product_id`),
  INDEX `order_position_orders_idx` (`order_id` ASC) VISIBLE,
  INDEX `order_position_product_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `order_position_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `pizzeria`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `order_position_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `pizzeria`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;






