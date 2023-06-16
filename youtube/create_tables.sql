CREATE TABLE IF NOT EXISTS `youtube`.`users` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `account_name` VARCHAR(45) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `sex` ENUM('m', 'f', 'other') NOT NULL,
    `country` VARCHAR(45) NOT NULL,
    `zip_code` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`user_id`)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `youtube`.`videos` (
  `video_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `size` VARCHAR(45) NOT NULL,
  `file_name` VARCHAR(45) NOT NULL,
  `duration_seconds` INT NOT NULL,
  `minature` BLOB NULL,
  `views` INT NULL DEFAULT 0,
  `state` ENUM('hidden', 'private', 'public') NOT NULL,
  `publishing_time` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`video_id`),
  INDEX `film_owner_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `film_owner`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`playlists` (
  `playlist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `status` ENUM('public', 'private') NOT NULL,
  `playlist_owner` INT NOT NULL,
  PRIMARY KEY (`playlist_id`),
  INDEX `playlist_owner_idx` (`playlist_owner` ASC) VISIBLE,
  CONSTRAINT `playlist_owner`
    FOREIGN KEY (`playlist_owner`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`playlist_items` (
  `video_id` INT NOT NULL,
  `playlist_id` INT NOT NULL,
  PRIMARY KEY (`video_id`, `playlist_id`),
  INDEX `playlist_ref_idx` (`playlist_id` ASC) VISIBLE,
  CONSTRAINT `video_ref`
    FOREIGN KEY (`video_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `playlist_ref`
    FOREIGN KEY (`playlist_id`)
    REFERENCES `youtube`.`playlists` (`playlist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`channels` (
  `channel_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `creation_date` DATE NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`channel_id`),
  INDEX `channel_owner_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `channel_owner`
    FOREIGN KEY (`user_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`channel_subscriptions` (
  `subscription_id` INT NOT NULL AUTO_INCREMENT,
  `channel_id` INT NOT NULL,
  `subscriber_id` INT NOT NULL,
  PRIMARY KEY (`subscription_id`),
  INDEX `subscriber_idx` (`subscriber_id` ASC) VISIBLE,
  INDEX `subscribed_channel_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `subscriber`
    FOREIGN KEY (`subscriber_id`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `subscribed_channel`
    FOREIGN KEY (`channel_id`)
    REFERENCES `youtube`.`channels` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`tags` (
  `film_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  INDEX `film_idx` (`film_id` ASC) VISIBLE,
  PRIMARY KEY (`film_id`, `name`),
  CONSTRAINT `film`
    FOREIGN KEY (`film_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`reactions` (
  `film_id` INT NOT NULL,
  `reaction_sender` INT NOT NULL,
  `reaction_type` ENUM('like', 'dislike') NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`film_id`, `reaction_sender`),
  INDEX `reaction_sender_idx` (`reaction_sender` ASC) VISIBLE,
  CONSTRAINT `film_ref`
    FOREIGN KEY (`film_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `reaction_sender`
    FOREIGN KEY (`reaction_sender`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`comments` (
  `comment_id` INT NOT NULL AUTO_INCREMENT,
  `text` TEXT NOT NULL,
  `time` DATETIME NOT NULL,
  `film_id` INT NOT NULL,
  PRIMARY KEY (`comment_id`),
  INDEX `film_comments_idx` (`film_id` ASC) VISIBLE,
  CONSTRAINT `film_comments`
    FOREIGN KEY (`film_id`)
    REFERENCES `youtube`.`videos` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `youtube`.`reactions_to_comments` (
  `reaction_id` INT NOT NULL AUTO_INCREMENT,
  `reaction_sender` INT NOT NULL,
  `reaction_type` ENUM('like', 'dislike') NOT NULL,
  `time` DATETIME NOT NULL,
  `comment_id` INT NOT NULL,
  PRIMARY KEY (`reaction_id`, `reaction_sender`),
  INDEX `comment_reaction_idx` (`comment_id` ASC) VISIBLE,
  INDEX `author_ref_idx` (`reaction_sender` ASC) VISIBLE,
  CONSTRAINT `comment_ref`
    FOREIGN KEY (`comment_id`)
    REFERENCES `youtube`.`comments` (`comment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `author_ref`
    FOREIGN KEY (`reaction_sender`)
    REFERENCES `youtube`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
