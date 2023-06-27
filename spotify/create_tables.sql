CREATE TABLE IF NOT EXISTS `spotify`.`users` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(45) NOT NULL,
    `account_name` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `birth_date` DATE NOT NULL,
    `sex` ENUM('f', 'm', 'other') NOT NULL,
    `country` VARCHAR(45) NOT NULL,
    `zip_code` VARCHAR(45) NOT NULL,
    `subscription_type` ENUM('free', 'premium') NULL,
    PRIMARY KEY (`user_id`)
)  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`subscriptions` (
  `subscription_id` INT NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL,
  `subscription_renew` DATE NOT NULL,
  `payment_method` ENUM("card", "paypal") NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`subscription_id`),
  INDEX `subscribing_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `subscribing_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `Spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`credit_cards` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `card_number` VARCHAR(16) NOT NULL,
  `expiry_data` VARCHAR(45) NOT NULL,
  `cvv` VARCHAR(3) NOT NULL,
  `subscription_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `cubscriber_card_idx` (`subscription_id` ASC) VISIBLE,
  CONSTRAINT `cubscriber_card`
    FOREIGN KEY (`subscription_id`)
    REFERENCES `Spotify`.`subscriptions` (`subscription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`transactions` (
  `order_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `total` DECIMAL(9,2) NOT NULL,
  `subscriber_id` INT NOT NULL,
  INDEX `subscriber_transactions_idx` (`subscriber_id` ASC) VISIBLE,
  PRIMARY KEY (`order_number`),
  CONSTRAINT `subscriber_transactions`
    FOREIGN KEY (`subscriber_id`)
    REFERENCES `Spotify`.`subscriptions` (`subscription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`paypal` (
  `paypal_id` INT NOT NULL AUTO_INCREMENT ,
  `user_name` VARCHAR(45) NOT NULL,
  `subscription_id` INT NOT NULL,
  PRIMARY KEY (`paypal_id`),
  INDEX `subscriber_paypal_idx` (`subscription_id` ASC) VISIBLE,
  CONSTRAINT `subscriber_paypal`
    FOREIGN KEY (`subscription_id`)
    REFERENCES `Spotify`.`subscriptions` (`subscription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`artist` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NULL,
  `artist_picture` BLOB NULL,
  PRIMARY KEY (`artist_id`, `name`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`albums` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `release_year` YEAR NOT NULL,
  `cover_picture` BLOB NULL,
  `artist_id` INT NOT NULL,
  `genre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  INDEX `belong_to_artist_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `belong_to_artist`
    FOREIGN KEY (`artist_id`)
    REFERENCES `Spotify`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`songs` (
  `song_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `duration_seconds` INT UNSIGNED NULL,
  `plays_number` INT UNSIGNED NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`song_id`),
  INDEX `album_dependancy_idx` (`album_id` ASC) VISIBLE,
  CONSTRAINT `album_dependancy`
    FOREIGN KEY (`album_id`)
    REFERENCES `Spotify`.`albums` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`artist_and_albums_followers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `follower_id` INT NOT NULL,
  `artist_id` INT NULL,
  `album_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `artist_ref_idx` (`artist_id` ASC) VISIBLE,
  INDEX `follower_res_idx` (`follower_id` ASC) VISIBLE,
 UNIQUE KEY `album_id_UNIQUE` (`follower_id`, `album_id` ),
  UNIQUE KEY `song_id_UNIQUE` (`follower_id`, `artist_id`),
  CONSTRAINT `artist_ref`
    FOREIGN KEY (`artist_id`)
    REFERENCES `Spotify`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `follower_res`
    FOREIGN KEY (`follower_id`)
    REFERENCES `Spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `spotify`.`album_and_songs_likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `liked_by` INT NOT NULL,
  `album_id` INT NULL,
  `song_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_ref_idx` (`liked_by` ASC) VISIBLE,
  INDEX `song_ref_idx` (`song_id` ASC) VISIBLE,
  UNIQUE KEY `album_id_UNIQUE` (`liked_by`, `album_id` ),
  UNIQUE KEY `song_id_UNIQUE` (`liked_by`, `song_id`),
  CONSTRAINT `user_ref`
    FOREIGN KEY (`liked_by`)
    REFERENCES `Spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `song_ref1`
    FOREIGN KEY (`song_id`)
    REFERENCES `Spotify`.`songs` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `album_ref`
    FOREIGN KEY (`album_id`)
    REFERENCES `Spotify`.`albums` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `spotify`.`playlists` (
  `playlist_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `creation_date` DATE NOT NULL,
  `songs_number` INT UNSIGNED NOT NULL,
  `owner_id` INT NOT NULL,
  `elimination_date` DATE NULL,
  `playlist_status` ENUM('active', 'inactive') NOT NULL,
  PRIMARY KEY (`playlist_id`),
  INDEX `playlist_owner_idx` (`owner_id` ASC) VISIBLE,
  CONSTRAINT `playlist_owner`
    FOREIGN KEY (`owner_id`)
    REFERENCES `Spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`playlist_items` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `added_by` INT NOT NULL,
  `adding_time` DATETIME NULL,
  `song_id` INT NOT NULL,
  `playlist_id` INT NOT NULL,
  PRIMARY KEY (`item_id`, `song_id`, `added_by`, `playlist_id`),
  INDEX `iten_connected_playlist_idx` (`playlist_id` ASC) VISIBLE,
  INDEX `item_added_by_idx` (`added_by` ASC) VISIBLE,
  INDEX `album_item_ref_idx` (`song_id` ASC) VISIBLE,
  CONSTRAINT `playlist_ref`
    FOREIGN KEY (`playlist_id`)
    REFERENCES `Spotify`.`playlists` (`playlist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `item_added_by`
    FOREIGN KEY (`added_by`)
    REFERENCES `Spotify`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `song_ref`
    FOREIGN KEY (`song_id`)
    REFERENCES `Spotify`.`songs` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;







