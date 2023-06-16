INSERT INTO `spotify`.`users` (`email`, `account_name`, `password`, `birth_date`, `sex`, `country`, `zip_code`, `subscription_type`)
VALUES
    ('user1@example.com', 'User1', 'password1', '1990-05-15', 'f', 'USA', '12345', 'free'),
    ('user2@example.com', 'User2', 'password2', '1985-08-20', 'm', 'Canada', '54321', 'premium'),
    ('user3@example.com', 'User3', 'password3', '1992-11-10', 'other', 'UK', '98765', 'free'),
    ('user4@example.com', 'User4', 'password4', '1988-03-25', 'm', 'Australia', '56789', 'premium'),
    ('user5@example.com', 'User5', 'password5', '1995-09-12', 'f', 'Germany', '24680', 'free'),
    ('user6@example.com', 'User6', 'password6', '1993-04-17', 'f', 'Spain', '98765', 'free'),
    ('user7@example.com', 'User7', 'password7', '1990-12-02', 'm', 'Italy', '56789', 'premium'),
    ('user8@example.com', 'User8', 'password8', '1987-11-25', 'other', 'Brazil', '13579', 'free'),
    ('user9@example.com', 'User9', 'password9', '1994-06-18', 'f', 'Mexico', '24680', 'premium'),
    ('user10@example.com', 'User10', 'password10', '1996-06-18', 'f', 'Mexico', '24680', 'premium'),
    ('user11@example.com', 'User11', 'password11', '1991-03-25', 'm', 'India', '13579', 'free'),
    ('user12@example.com', 'User12', 'password12', '1992-08-11', 'f', 'Russia', '43210', 'premium'),
    ('user13@example.com', 'User13', 'password13', '1993-11-27', 'other', 'China', '67890', 'free'),
    ('user14@example.com', 'User14', 'password14', '1989-10-04', 'm', 'South Africa', '98765', 'premium'),
    ('user15@example.com', 'User15', 'password15', '1994-05-21', 'f', 'Argentina', '54321', 'free'),
    ('user16@example.com', 'User16', 'password16', '1990-02-09', 'm', 'Sweden', '12345', 'premium'),
    ('user17@example.com', 'User17', 'password17', '1991-07-14', 'other', 'Netherlands', '56789', 'free'),
    ('user18@example.com', 'User18', 'password18', '1996-09-03', 'f', 'Belgium', '24680', 'premium'),
    ('user19@example.com', 'User19', 'password19', '1988-04-29', 'm', 'Switzerland', '13579', 'free'),
    ('user20@example.com', 'User20', 'password20', '1993-01-16', 'f', 'Denmark', '98765', 'premium'),
    ('user21@example.com', 'User21', 'password21', '1994-06-11', 'm', 'Norway', '54321', 'free'),
    ('user22@example.com', 'User22', 'password22', '1991-12-08', 'other', 'Finland', '12345', 'premium'),
    ('user23@example.com', 'User23', 'password23', '1990-08-26', 'f', 'Greece', '56789', 'free'),
    ('user24@example.com', 'User24', 'password24', '1995-03-13', 'm', 'Poland', '24680', 'premium'),
    ('user25@example.com', 'User25', 'password25', '1989-09-20', 'f', 'Portugal', '13579', 'free'),
    ('user26@example.com', 'User26', 'password26', '1992-11-03', 'm', 'Ireland', '98765', 'premium'),
    ('user27@example.com', 'User27', 'password27', '1993-07-28', 'other', 'Austria', '54321', 'free'),
    ('user28@example.com', 'User28', 'password28', '1991-05-15', 'f', 'Czech Republic', '12345', 'premium'),
    ('user29@example.com', 'User29', 'password29', '1988-02-02', 'm', 'Hungary', '56789', 'free'),
    ('user30@example.com', 'User30', 'password30', '1996-12-19', 'f', 'Slovakia', '24680', 'premium');
    
    INSERT INTO `spotify`.`subscriptions` (`start_date`, `subscription_renew`, `payment_method`, `user_id`)
VALUES
    ('2022-06-01', '2023-06-01', 'card', 1),
    ('2022-07-01', '2023-07-01', 'paypal', 2),
    ('2022-08-01', '2023-08-01', 'card', 3),
    ('2022-09-01', '2023-09-01', 'paypal', 4),
    ('2022-10-01', '2023-10-01', 'card', 5),
    ('2022-11-01', '2023-11-01', 'paypal', 6),
    ('2022-12-01', '2023-12-01', 'card', 7),
    ('2023-01-01', '2024-01-01', 'paypal', 8),
    ('2023-02-01', '2024-02-01', 'card', 9),
    ('2023-03-01', '2024-03-01', 'paypal', 10),
    ('2023-05-01', '2024-05-01', 'paypal', 12),
    ('2023-07-01', '2024-07-01', 'paypal', 14),
    ('2023-09-01', '2024-09-01', 'paypal', 16),
    ('2023-11-01', '2024-11-01', 'paypal', 18),
    ('2024-01-01', '2025-01-01', 'paypal', 20);
    
    
    INSERT INTO `spotify`.`credit_cards` (`card_number`, `expiry_data`, `cvv`, `subscription_id`)
VALUES
    ('1234567890123456', '2024-12-31', '123', 1),
    ('2345678901234567', '2025-12-31', '234', 2),
    ('3456789012345678', '2026-12-31', '345', 3),
    ('4567890123456789', '2027-12-31', '456', 4),
    ('5678901234567890', '2028-12-31', '567', 7),
    ('6789012345678901', '2029-12-31', '678', 9),
    ('7890123456789012', '2030-12-31', '789', 10),
    ('8901234567890123', '2031-12-31', '890', 12),
    ('9012345678901234', '2032-12-31', '901', 14),
    ('0123456789012345', '2033-12-31', '012', 15);
    
    INSERT INTO `spotify`.`paypal` (`user_name`, `subscription_id`)
VALUES
    ('john_doe', 1),
    ('jane_smith', 3),
    ('mike_jackson', 5),
    ('emily_davis', 7),
    ('adam_wilson', 9);
    
INSERT INTO `spotify`.`transactions` (`order_number`, `date`, `total`, `subscriber_id`)
VALUES
    ('12345', '2023-06-15', 49.99, 1),
    ('12346', '2023-06-16', 19.99, 2),
    ('12347', '2023-06-17', 9.99, 3),
    ('12348', '2023-06-18', 14.99, 4),
    ('12349', '2023-06-19', 29.99, 5),
    ('12350', '2023-06-20', 39.99, 6),
    ('12351', '2023-06-21', 24.99, 7),
    ('12352', '2023-06-22', 12.99, 8),
    ('12353', '2023-06-23', 19.99, 9),
    ('12354', '2023-06-24', 8.99, 10);


INSERT INTO `Spotify`.`playlists` (`title`, `creation_date`, `songs_number`, `owner_id`, `elimination_date`, `playlist_status`) 
    VALUES
    ('My Playlist 1', '2023-06-01', 10, 1, NULL, 'active'),
    ('My Playlist 2', '2023-06-02', 5, 2, '2023-06-10', 'inactive'),
    ('My Playlist 3', '2023-06-03', 15, 3, NULL, 'active'),
    ('My Playlist 4', '2023-06-04', 8, 4, '2023-06-15', 'inactive'),
    ('My Playlist 5', '2023-06-05', 12, 5, NULL, 'active'),
    ('My Playlist 6', '2023-06-06', 6, 6, NULL, 'active'),
    ('My Playlist 7', '2023-06-07', 3, 7, '2023-06-20', 'inactive'),
    ('My Playlist 8', '2023-06-08', 9, 8, NULL, 'active'),
    ('My Playlist 9', '2023-06-09', 7, 9, '2023-06-25', 'inactive'),
    ('My Playlist 10', '2023-06-10', 11, 10, NULL, 'active');
    
    INSERT INTO `Spotify`.`artist` (`artist_id`, `name`, `surname`)
VALUES
    (1, 'Taylor', 'Swift'),
    (2, 'Ed', 'Sheeran'),
    (3, 'Adele', null);
    
    INSERT INTO `Spotify`.`albums` (`album_id`, `title`, `release_year`, `artist_id`, `genre`)
VALUES
    (1, 'Album 1', 2022, 1, 'Pop'),
    (2, 'Album 2', 2020, 2, 'Rock'),
    (3, 'Album 3', 2018, 3, 'Hip Hop'),
    (4, 'Album 4', 2019, 3, 'Electronic');
    
    
    
    INSERT INTO `Spotify`.`songs` (`title`, `duration_seconds`, `plays_number`, `album_id`)
VALUES
  ( 'Song 1', 240, 100, 1),
  ('Song 2', 180, 50, 1),
  ('Song 3', 320, 80, 1),
  ('Song 4', 200, 120, 2),
  ('Song 5', 280, 90, 2),
  ('Song 6', 210, 70, 2),
  ('Song 7', 260, 110, 2),
  ('Song 8', 300, 60, 2),
  ('Song 9', 190, 130, 3),
  ('Song 10', 230, 75, 3),
  ('Song 11', 270, 95, 3),
  ('Song 12', 220, 85, 3),
  ('Song 13', 250, 105, 4),
  ('Song 14', 310, 55,4),
  ('Song 15', 290, 115, 4);
    
INSERT INTO `Spotify`.`playlist_items` (`added_by`, `adding_time`, `song_id`, `playlist_id`)
VALUES
  (1, '2023-06-15 10:30:00', 1, 1),
  (1, '2023-07-20 11:45:00', 3, 1),
  (1, '2023-08-05 09:15:00', 2, 1),
  (5, '2023-09-12 14:20:00', 4, 1),
  (5, '2023-10-25 17:30:00', 6, 1),
  (6, '2023-11-08 08:50:00', 5, 1),
  (7, '2023-12-18 13:10:00', 7, 1),
  (8, '2024-01-03 16:45:00', 9, 1),
  (9, '2024-02-14 19:55:00', 8, 1),
  (3, '2024-03-29 12:25:00', 1, 3),
  (3, '2024-04-06 15:40:00', 2, 3),
  (3, '2024-05-21 09:05:00', 3, 3),
  (3, '2024-06-02 10:55:00', 4, 3),
  (20, '2024-07-17 14:30:00', 5, 3),
  (20, '2024-08-08 17:20:00', 6, 3),
  (5, '2024-09-25 08:40:00', 10, 5),
  (5, '2024-10-11 11:50:00', 11, 5),
  (5, '2024-11-30 16:15:00', 12, 5),
  (5, '2024-12-09 19:25:00', 13, 5),
  (20, '2025-01-22 12:55:00', 14, 5),
  (21, '2025-02-05 15:10:00', 15, 5),
  (10, '2025-03-14 09:35:00', 1, 10),
  (10, '2025-04-27 12:45:00', 2, 10),
  (10, '2025-05-09 15:55:00', 3, 10),
  (25, '2025-06-25 09:25:00', 4, 10),
  (26, '2025-07-11 12:40:00', 5, 10),
  (10, '2025-08-22 16:05:00', 6, 10),
  (10, '2025-09-07 19:15:00',7, 10),
  (10, '2025-10-18 12:45:00', 8, 10),
  (10, '2025-11-03 15:55:00', 9, 10);


  
    INSERT INTO `Spotify`.`artist_and_albums_followers` (`follower_id`, `artist_id`, `album_id`)
VALUES
    (1, 1, null),
    (2, 1, null),
    (3, 2, null),
    (4, 2, null),
    (5, 3, null),
    (6, 2, null),
    (7, 2, null),
    (8, 3, null),
    (9, 1, null),
    (10, 1, null),
    (11, 2, null),
    (12, 3, null),
    (13, 1, null),
    (14, 3, null),
    (15, 3, null),
    (3, 1, null),
    (30, 2, null),
    (29, 2, null),
    (28, 3, null),
    (26, 2, null),
    (7, null, 1),
    (8, null, 2),
    (9, null, 1),
    (10, null, 2),
    (11, null, 4),
    (12, null,3),
    (13, null, 4),
    (14, null, 4),
    (15, null, 4);
    
    
    INSERT INTO `Spotify`.`album_and_songs_likes` (`liked_by`, `album_id`, `song_id`)
VALUES
    (1, 1, null),
    (2, 1, null),
    (3, 2, null),
    (4, 2, null),
    (5, 3, null),
    (6, 2, null),
    (7, 2, null),
    (8, 3, null),
    (9, 1, null),
    (10, 1, null),
    (11, 2, null),
    (12, 3, null),
    (13, 1, null),
    (14, 3, null),
    (15, 3, null),
    (3, 1, null),
    (30, 2, null),
    (29, 2, null),
    (28, 3, null),
    (26, 2, null),
    (1, null, 1),
    (1, null, 2),
    (1, null, 4),
    (1, null, 5),
    (1, null,6),
    (1, null, 7),
    (1, null, 8),
    (1, null, 9),
	(1, null, 10),
    (1, null, 11),
    (1, null, 12),
    (1, null, 13),
    (1, null,14),
    (1, null,15),
    (2, null, 2),
    (2, null, 4),
    (2, null, 5),
    (2, null,6),
    (2, null, 7),
    (2, null, 8),
    (2, null, 9),
	(2, null, 10),
    (3, null, 11),
    (3, null, 12),
    (3, null, 13),
    (3, null,14),
    (3, null,15);
    
    
  
    
    
    