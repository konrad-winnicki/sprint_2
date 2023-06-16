INSERT INTO youtube.users (email, password, account_name, date_of_birth, sex, country, zip_code)
VALUES
    ('john@example.com', 'password123', 'JohnDoe', '1990-05-15', 'm', 'USA', '12345'),
    ('jane@example.com', 'password456', 'JaneSmith', '1992-08-27', 'f', 'Canada', 'A1A 1A1'),
    ('alex@example.com', 'password789', 'AlexJohnson', '1988-11-10', 'm', 'UK', 'SW1A 1AA'),
    ('emily@example.com', 'password321', 'EmilyBrown', '1995-03-20', 'f', 'Australia', '2000'),
    ('michael@example.com', 'password654', 'MichaelTaylor', '1991-09-05', 'm', 'Germany', '12345'),
    ('sarah@example.com', 'password987', 'SarahDavis', '1993-07-12', 'f', 'USA', '54321'),
    ('peter@example.com', 'password234', 'PeterSmith', '1994-02-18', 'm', 'Canada', 'B2B 2B2'),
    ('laura@example.com', 'password567', 'LauraJohnson', '1990-12-03', 'f', 'UK', 'SW2A 2AA'),
    ('william@example.com', 'password890', 'WilliamBrown', '1992-06-25', 'm', 'Australia', '3000'),
    ('olivia@example.com', 'password432', 'OliviaTaylor', '1994-11-07', 'f', 'Germany', '54321'),
    ('david@example.com', 'password765', 'DavidWilson', '1989-04-09', 'm', 'USA', '54321'),
    ('natalie@example.com', 'password098', 'NatalieMiller', '1997-01-13', 'f', 'Canada', 'B2B 2B2'),
    ('matthew@example.com', 'password543', 'MatthewWilson', '1993-09-21', 'm', 'UK', 'SW3A 3AA'),
    ('sophia@example.com', 'password876', 'SophiaJones', '1996-04-14', 'f', 'Australia', '4000'),
    ('jacob@example.com', 'password210', 'JacobTaylor', '1995-11-28', 'm', 'Germany', '54321'),
    ('olivia@example.com', 'password543', 'OliviaMiller', '1991-08-17', 'f', 'USA', '54321'),
    ('ethan@example.com', 'password876', 'EthanWilson', '1994-03-02', 'm', 'Canada', 'B2B 2B2'),
    ('ava@example.com', 'password109', 'AvaJohnson', '1987-06-09', 'f', 'UK', 'SW4A 4AA'),
    ('noah@example.com', 'password432', 'NoahSmith', '1990-12-25', 'm', 'Australia', '5000'),
    ('mia@example.com', 'password765', 'MiaDavis', '1993-05-18', 'f', 'Germany', '54321'),
    ('liam@example.com', 'password098', 'LiamTaylor', '1996-10-03', 'm', 'USA', '54321'),
    ('amelia@example.com', 'password321', 'AmeliaWilson', '1992-02-15', 'f', 'Canada', 'B2B 2B2'),
    ('logann@example.com', 'password654', 'LoganNelson', '1994-07-28', 'other', 'UK', 'SW5A 5AA'),
    ('harper@example.com', 'password987', 'HarperEvans', '1989-10-10', 'f', 'Australia', '6000'),
    ('aiden@example.com', 'password210', 'AidenMitchell', '1991-03-23', 'm', 'Germany', '54321'),
    ('chloe@example.com', 'password543', 'ChloeCarter', '1993-08-06', 'f', 'USA', '54321'),
    ('lucas@example.com', 'password876', 'LucasHarris', '1996-01-19', 'm', 'Canada', 'B2B 2B2'),
    ('madison@example.com', 'password109', 'MadisonHill', '1990-04-02', 'f', 'UK', 'SW6A 6AA'),
    ('henry@example.com', 'password432', 'HenryAnderson', '1992-09-15', 'm', 'Australia', '7000'),
    ('riley@example.com', 'password765', 'RileyThompson', '1995-02-28', 'f', 'Germany', '54321');
    
    INSERT INTO youtube.videos (title, size, file_name, duration_seconds, views, state, publishing_time, user_id)
VALUES
    ('Video Title 1', 123456, 'video1.mp4', 7218, 5890, 'public', '2023-06-15 10:00:00', 17),
    ('Video Title 2', 654321, 'video2.mp4', 15683, 9213, 'private', '2023-06-16 09:30:00', 5),
    ('Video Title 3', 987654, 'video3.mp4', 16460, 2754, 'hidden', '2023-06-17 14:15:00', 5),
    ('Video Title 4', 456789, 'video4.mp4', 13318, 4372, 'public', '2023-06-18 16:45:00', 28),
    ('Video Title 5', 234567, 'video5.mp4', 2427, 7839, 'private', '2023-06-19 12:30:00', 3),
    ('Video Title 6', 789012, 'video6.mp4', 14880, 1257, 'public', '2023-06-20 15:20:00', 19),
    ('Video Title 7', 890123, 'video7.mp4', 418, 3245, 'private', '2023-06-21 08:45:00', 9),
    ('Video Title 8', 678901, 'video8.mp4', 8132, 6721, 'public', '2023-06-22 11:10:00', 5),
    ('Video Title 9', 456789, 'video9.mp4', 16275, 5129, 'hidden', '2023-06-23 13:55:00', 26),
    ('Video Title 10', 234567, 'video10.mp4', 10760, 9876, 'public', '2023-06-24 16:20:00', 7),
    ('Video Title 11', 901234, 'video11.mp4', 4374, 2456, 'private', '2023-06-25 09:30:00', 21),
    ('Video Title 12', 789012, 'video12.mp4', 14895, 7623, 'public', '2023-06-26 14:45:00', 10),
    ('Video Title 13', 567890, 'video13.mp4', 2350, 3851, 'private', '2023-06-27 12:15:00', 16),
    ('Video Title 14', 345678, 'video14.mp4', 13980, 2987, 'public', '2023-06-28 17:30:00', 24),
    ('Video Title 15', 123456, 'video15.mp4', 7923, 5412, 'hidden', '2023-06-29 11:55:00', 8);
    
    INSERT INTO youtube.playlists (name, date, status, playlist_owner)
VALUES
    ('Playlist 1', '2023-06-15', 'public', 1),
    ('Playlist 2', '2021-06-16', 'private', 2),
    ('Playlist 3', '2023-04-17', 'public', 3),
    ('Playlist 4', '2023-06-18', 'public', 4),
    ('Playlist 5', '2022-06-19', 'private', 5),
    ('Playlist 6', '2023-01-20', 'private', 6),
    ('Playlist 7', '2023-06-21', 'public', 7),
    ('Playlist 8', '2022-06-22', 'public', 8),
    ('Playlist 9', '2023-06-23', 'private', 9),
    ('Playlist 10', '2023-06-24', 'public', 10),
    ('Playlist 11', '2023-06-25', 'public', 11),
    ('Playlist 12', '2023-03-26', 'private', 12),
    ('Playlist 13', '2023-06-27', 'public', 13),
    ('Playlist 14', '2023-06-28', 'private', 14);
  
    
    INSERT INTO youtube.playlist_items (video_id, playlist_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 3),
    (7, 4),
    (8, 4),
    (1, 4),
    (4, 4),
    (9, 5),
    (10, 5),
    (11, 6),
    (12, 6),
    (13, 7),
    (14, 7),
    (15, 8);
    
     INSERT INTO youtube.channels (name, creation_date, user_id)
VALUES
    ('Channel 1', '2023-06-15', 1),
    ('Channel 2', '2021-06-16',  2),
    ('Channel 3', '2023-04-17',  3),
    ('Channel 4', '2023-06-18',  4),
    ('Channel 5', '2022-06-19',  5),
    ('Channel 6', '2023-01-20',  6),
    ('Channel 7', '2023-06-21', 7),
    ('Channel 8', '2022-06-22',  8),
    ('Channel 9', '2023-06-23',  9),
    ('Channel 10', '2023-06-24',  10),
    ('Channel 11', '2023-06-25',  11);
    
    
    INSERT INTO youtube.channel_subscriptions (channel_id, subscriber_id)
VALUES 
 (1,2),
 (1,3),
 (1,4),
 (1,5),
 (5,8),
 (5,2),
 (5,4),
 (6,5),
 (7,8),
 (7,2);
 
 INSERT INTO youtube.tags (film_id, name)
VALUES 
 (1,'nature'),
 (2,'nature'),
 (3,'nature'),
 (3,'building'),
 (3,'landscape'),
 (8,'landscape'),
 (8,'nature'),
 (8, 'flowers'),
 (9,'building'),
 (10,'building'),
 (11,'building'),
 (6,'building');
 
INSERT INTO `youtube`.`reactions` (`film_id`, `reaction_sender`, `reaction_type`, `date`)
VALUES
    (1, '1', 'Like', '2023-06-15 10:00:00'),
    (2, '1', 'Dislike', '2023-06-16 09:30:00'),
    (3, '1', 'Like', '2023-06-17 14:15:00'),
    (4, '1', 'Dislike', '2023-06-18 16:45:00'),
    (5, '1', 'Like', '2023-06-19 12:30:00'),
      (1, '2', 'Like', '2022-06-15 10:00:00'),
    (2, '2', 'Dislike', '2022-06-16 09:30:00'),
    (3, '2', 'Like', '2022-06-17 14:15:00'),
    (4, '2', 'Dislike', '2022-06-18 16:45:00'),
    (5, '2', 'Like', '2022-06-19 12:30:00');
    
    
    INSERT INTO `youtube`.`comments` (`text`, `time`, `film_id`) 
    VALUES ('nice', '2023-06-15 10:00:00', 1 ),
('very nice', '2022-06-15 10:00:00', 1 ),
('bad', '2023-06-15 10:00:00', 1 );

INSERT INTO `youtube`.`reactions_to_comments` (`reaction_sender`, `reaction_type`, `time`, `comment_id`) 
VALUES (1, 'like', '2023-06-15 10:00:00', 1 ),
(2, 'like', '2023-05-15 10:00:00', 1 ),
(3, 'like', '2023-02-15 10:00:00', 1 ),
(3, 'dislike', '2023-06-15 10:00:00', 3 );
    
    

    