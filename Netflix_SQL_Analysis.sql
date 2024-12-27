-- Netflix Data Analysis using SQL

-- Solutions of 15 business problems

use SQL_Projects;

select * from netflix_titles;

-- 1. Count the total number of Movies and TV Shows.  

SELECT 
    type, 
    COUNT(*) AS total_count 
FROM netflix_titles 
GROUP BY type;

-- 2. Find all content released in the year 2020.  

SELECT * 
FROM netflix_titles 
WHERE release_year = 2020;

-- 3. List all the directors who directed at least one Movie. 

SELECT DISTINCT director 
FROM netflix_titles 
WHERE type = 'Movie' AND director IS NOT NULL;

-- 4. Count the number of content items added each year. 

SELECT 
    release_year,
    COUNT(*) AS total_content 
FROM netflix_titles 
GROUP BY release_year
ORDER BY release_year;

-- 5. Find the top 3 most popular ratings.  

SELECT 
    rating, 
    COUNT(*) AS total_count 
FROM netflix_titles 
GROUP BY rating 
ORDER BY total_count DESC 
LIMIT 3;


-- 6. List all TV Shows from India.  

SELECT * 
FROM netflix_titles 
WHERE type = 'TV Show' AND country = 'India';


-- 7. Find all content with the word "Squid Game" in the title.  

SELECT * 
FROM netflix_titles 
WHERE title LIKE '%Squid Game%';


--  8. List the top 5 countries with the most Movies.  

SELECT 
    country, 
    COUNT(*) AS total_movies 
FROM netflix_titles 
WHERE type = 'Movie' 
GROUP BY country 
ORDER BY total_movies DESC 
LIMIT 5;


-- 9. Find all Movies that are exactly 90 minutes long.  

SELECT * 
FROM netflix_titles 
WHERE type = 'Movie' AND duration = '90 min';


-- 10. List all TV shows with more than 5 seasons.

SELECT *
FROM netflix_titles
WHERE 
	TYPE = 'TV Show'
	AND
	duration > '5 Seasons';
    
-- 11. Find the Number of Movies in Each Country

SELECT 
    country, 
    COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie'
GROUP BY country
ORDER BY total_movies DESC;


--  12. Find all Movies directed by 'K.S. Ravikumar'.  

SELECT * 
FROM netflix_titles 
WHERE director = 'K.S. Ravikumar' AND type = 'Movie';


-- 13. Count the total content available per country. 

SELECT 
    country, 
    COUNT(*) AS total_content 
FROM netflix_titles 
GROUP BY country 
ORDER BY total_content DESC;


-- 14. Find the total number of Movies and TV Shows added in the last 3 years.

SELECT 
    type, 
    release_year,
    COUNT(*) AS total_count
FROM netflix_titles
WHERE release_year BETWEEN 2019 AND 2021
GROUP BY type,release_year
ORDER BY total_count DESC;


-- 15. Find all TV Shows with "Kids" in the listed genres.  

SELECT * 
FROM netflix_titles 
WHERE type = 'TV Show' AND listed_in LIKE '%Kids%';