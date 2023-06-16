SELECT 
    *
FROM
    youtube.playlist_items
        JOIN
    youtube.videos USING (video_id)
        JOIN
    youtube.reactions ON (film_id = video_id)
        JOIN
    youtube.playlists USING (playlist_id)
WHERE
    reaction_type = 'like'
        AND state = 'public'
