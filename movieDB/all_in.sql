SELECT DISTINCT movies.title as title, GROUP_CONCAT(DISTINCT actors.name) as actor, directors.name as director, GROUP_CONCAT( genres.name) as genre FROM movies
JOIN movie_actors  ON movies.id = movie_actors.movie_id
JOIN actors ON movie_actors.actor_id = actors.id

JOIN directors ON directors.id = movies.director_id

JOIN movie_genres ON movies.id = movie_genres.movie_id
JOIN genres ON movie_genres.genre_id = genres.id

GROUP BY movies.id
