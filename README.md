# Netflix SQL Data Analysis

This repository contains SQL queries that explore Netflix's dataset to analyze various aspects of their content offerings, user behavior, and platform performance. The SQL queries provided are designed to answer 15 business questions, offering insights into Netflix's catalog, including movies, TV shows, countries, ratings, durations, and more.

## Table of Contents

- [Overview](#overview)
- [Business Problems Analyzed](#business-problems-analyzed)
- [SQL Queries](#sql-queries)
- [How to Run the Queries](#how-to-run-the-queries)
- [Prerequisites](#prerequisites)
- [License](#license)

## Overview

This analysis helps to answer several business problems and gain insights into Netflix’s platform by exploring its catalog, which includes movies, TV shows, genres, ratings, release years, and much more. These queries can be used to uncover useful patterns and trends that can assist Netflix in making data-driven decisions regarding content strategy and user engagement.

## Business Problems Analyzed

The following are the 15 business questions that are answered using SQL queries:

1. **Total count of Movies and TV Shows**  
   Provides the breakdown of the number of movies and TV shows in the dataset.

2. **Content released in the year 2020**  
   Identifies all movies and TV shows released in 2020.

3. **Directors of Movies**  
   Lists directors who have directed at least one movie.

4. **Content added each year**  
   Shows the number of content items added each year.

5. **Top 3 most popular ratings**  
   Identifies the top 3 ratings with the most content.

6. **TV Shows from India**  
   Lists all TV shows that were produced in India.

7. **Content with "Squid Game" in the title**  
   Finds all content that contains the word "Squid Game" in the title.

8. **Top 5 countries with the most Movies**  
   Lists the top 5 countries that have the highest number of movies.

9. **Movies exactly 90 minutes long**  
   Identifies all movies that are exactly 90 minutes in duration.

10. **TV Shows with more than 5 seasons**  
   Lists all TV shows that have more than 5 seasons.

11. **Number of Movies in Each Country**  
   Shows the count of movies in each country.

12. **Movies directed by 'K.S. Ravikumar'**  
   Finds all movies directed by 'K.S. Ravikumar'.

13. **Total content available per country**  
   Lists the total number of content items available in each country.

14. **Movies and TV Shows added in the last 3 years**  
   Shows the number of movies and TV shows released between 2019 and 2021.

15. **TV Shows with "Kids" in the genres**  
   Lists all TV shows categorized under the "Kids" genre.

## SQL Queries

The SQL queries for each business problem are contained in the `Netflix SQL Analysis` script. Each query is designed to be run independently or in sequence to analyze the data from different perspectives.

Below are some key queries provided in the analysis:

```sql
-- Count the total number of Movies and TV Shows
SELECT 
    type, 
    COUNT(*) AS total_count 
FROM netflix_titles 
GROUP BY type;

-- Find all content released in the year 2020
SELECT * 
FROM netflix_titles 
WHERE release_year = 2020;

-- List all directors who directed at least one Movie
SELECT DISTINCT director 
FROM netflix_titles 
WHERE type = 'Movie' AND director IS NOT NULL;

-- Count the number of content items added each year
SELECT 
    release_year,
    COUNT(*) AS total_content 
FROM netflix_titles 
GROUP BY release_year
ORDER BY release_year;

-- Find the top 3 most popular ratings
SELECT 
    rating, 
    COUNT(*) AS total_count 
FROM netflix_titles 
GROUP BY rating 
ORDER BY total_count DESC 
LIMIT 3;
```

(Include the rest of the queries as needed...)

## How to Run the Queries

1. Clone this repository to your local machine.
2. Set up a SQL environment and import the `netflix_titles` dataset.
3. Open the SQL script in a compatible SQL environment (e.g., MySQL Workbench, pgAdmin).
4. Run each query individually or all at once to analyze the data.
5. Review the results to uncover insights related to Netflix's catalog.

## Prerequisites

- A SQL environment such as MySQL, PostgreSQL, or SQLite.
- Access to the Netflix dataset (`netflix_titles` table).
- Basic understanding of SQL queries and database management.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
