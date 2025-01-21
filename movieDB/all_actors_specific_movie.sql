SELECT movies.title, GROUP_CONCAT(actors.name) as actors FROM movies
JOIN movie_actors  ON movies.id = movie_actors.movie_id
JOIN actors ON movie_actors.actor_id = actors.id
WHERE movies.title = "Jurassic Park"


GROUP BY movies.id