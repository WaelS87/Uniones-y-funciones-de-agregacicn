-- Micro Disafio 1 (Uniones y funciones deagregación);
select * from movies;

select title,name from series inner join genres on genre_id = genres.id;

select title from episodes
inner join  actor_episode on episodes.id = episode_id
inner join actors on actor_id = actors.id;

-- Micro Disafio 2 (Uniones y funciones deagregación);
select distinct first_name, last_name
from movies
inner join actor_movie on movies.id = movie_id
inner join actors on actors.id = actor_id
where title like '%Guerra%';

-- Micro Disafio 3 (Uniones y funciones deagregación);

select movies.id, title, genre_id, genres.id , coalesce(ifnull(name,'no tiene genero'))
from movies
left join genres on genre_id = genres.id;

-- Micro Disafio 4 (Uniones y funciones deagregación);
select * from movies_db.series;
select title, datediff(end_date, release_date) as duracion
from series;

-- Micro Disafio 5 (Uniones y funciones deagregación);
select first_name from actors where length(first_name) >6;
select count(*)
from episodes;
select series.title, count(*) from seasons
inner join series on serie_id=series.id
group by series.title
having count(*);
