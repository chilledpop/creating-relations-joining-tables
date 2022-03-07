SELECT 
  a.artist_name,
  c.concert_name,
  c.concert_date,
  ac.scheduled_start_at,
  ac.scheduled_end_at
FROM 
  concerts c
  JOIN 
  artists_concerts ac 
  ON c.concert_id = ac.concert_id
  INNER JOIN 
  artists a 
  ON ac.artist_id = a.artist_id;