USE ETLHIVE;
SELECT * FROM MOVIES1;
-- 1.Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
SELECT MOVIE_NAME FROM MOVIES1 WHERE GENRE = 'DRAMA';

-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
SELECT MOVIE_NAME, LEAD_STAR FROM MOVIES1 WHERE LEAD_STAR = 'AAMIR KHAN';
SELECT MOVIE_NAME, LEAD_STAR FROM MOVIES1 WHERE LEAD_STAR LIKE 'AAMIR KHAN%';

-- 3.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset
SELECT MOVIE_NAME, DIRECTOR FROM MOVIES1 WHERE DIRECTOR = 'RAM GOPAL VERMA';

-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
SELECT MOVIE_NAME, NUMBER_OF_SCREENS FROM MOVIES1 WHERE NUMBER_OF_SCREENS > 1000;

-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset.
SELECT MOVIE_NAME, REVENUE FROM MOVIES1 WHERE REVENUE > 700000000;

-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
SELECT MOVIE_NAME, BUDGET FROM MOVIES1 WHERE BUDGET < 10000000 ;


-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop = revenue – budget)
SELECT MOVIE_NAME, REVENUE-BUDGET AS FLOP_RATIO FROM MOVIES1 WHERE REVENUE-BUDGET < 0 ;   

-- 8.Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
SELECT MOVIE_NAME, REVENUE-BUDGET AS PROFIT FROM MOVIES1 WHERE REVENUE-BUDGET > 0;

-- 9.Retrieve the names and loss of all the Bollywood movies in the dataset.(loss = revenue – budget)
SELECT MOVIE_NAME, REVENUE-BUDGET AS LOSS FROM MOVIES1 WHERE REVENUE-BUDGET < 0 ; 

-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
SELECT MOVIE_NAME, RELEASE_PERIOD FROM MOVIES1 WHERE RELEASE_PERIOD = 'HOLIDAY';

-- 11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
SELECT MOVIE_NAME, LEAD_STAR, DIRECTOR FROM MOVIES1 WHERE  LEAD_STAR = 'AKSHAY KUMAR' AND DIRECTOR = 'PRIYADARSHAN';

-- 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
SELECT MOVIE_NAME FROM MOVIES1 WHERE MOVIE_NAME LIKE 'A%';

-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
SELECT MOVIE_NAME FROM MOVIES1 WHERE MOVIE_NAME LIKE '%A';

-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
SELECT MOVIE_NAME FROM MOVIES1 WHERE MOVIE_NAME LIKE '_A%';

-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
SELECT MOVIE_NAME, MUSIC_DIRECTOR FROM MOVIES1 WHERE MUSIC_DIRECTOR = 'AMIT TRIVEDI';

-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
SELECT MOVIE_NAME, GENRE, LEAD_STAR FROM MOVIES1 WHERE GENRE = 'COMEDY' AND LEAD_STAR = 'AKSHAY KUMAR';

-- 17. Retrieve the names of movies and star name 'Khan' in the dataset.
SELECT MOVIE_NAME, LEAD_STAR FROM MOVIES1 WHERE LEAD_STAR like '%khan%';

-- 18. Retrieve all the information of movies race and race2 in the dataset.
SELECT * FROM MOVIES1 WHERE MOVIE_NAME IN ('RACE', 'RACE2');

-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
SELECT MOVIE_NAME,GENRE FROM MOVIES1 WHERE GENRE = 'THRILLER';

-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
SELECT MOVIE_NAME, BUDGET FROM MOVIES1 ORDER BY BUDGET DESC;

-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
SELECT MOVIE_NAME, BUDGET FROM MOVIES1 ORDER BY BUDGET DESC LIMIT 5;

-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
SELECT MOVIE_NAME, REVENUE FROM MOVIES1 
ORDER BY REVENUE DESC LIMIT 10;

-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
SELECT MOVIE_NAME, LEAD_STAR FROM MOVIES1 WHERE LEAD_STAR = 'SALMAN KHAN'
ORDER BY REVENUE DESC LIMIT 5;

-- 24. Retrieve the names of top 5 floped movies in the dataset.
SELECT MOVIE_NAME, REVENUE-BUDGET AS FLOP_AMOUNT FROM MOVIES1 
ORDER BY REVENUE-BUDGET ASC LIMIT 5;

-- 25. Retrieve the names of top 5 hit movies in the dataset.
SELECT MOVIE_NAME, REVENUE-BUDGET AS PROFIT FROM MOVIES1 
ORDER BY REVENUE-BUDGET DESC LIMIT 5;

-- 26. Which is the second movie released on maximum screens.
SELECT MOVIE_NAME, NUMBER_OF_SCREENS FROM MOVIES1 ORDER BY NUMBER_OF_SCREENS DESC LIMIT 2;

-- 27. Which is the 10th movies with highest budget
SELECT MOVIE_NAME FROM MOVIES1 ORDER BY BUDGET DESC LIMIT 9,1;

-- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
SELECT MOVIE_NAME FROM MOVIES1 WHERE LEAD_STAR = 'AMITABH BACHCHAN' ORDER BY BUDGET DESC LIMIT 1,1;

-- 29. Which are the flopped movies of Akshay Kumar.
SELECT MOVIE_NAME, REVENUE-BUDGET AS FLOP_AMOUNT FROM MOVIES1 
WHERE LEAD_STAR = 'AKSHAY KUMAR' AND REVENUE-BUDGET < 0
ORDER BY REVENUE-BUDGET ASC;

-- 30. With which director Sharukh Khan have given the biggest hit movie.
SELECT LEAD_STAR, DIRECTOR, REVENUE-BUDGET AS PROFIT FROM MOVIES1
WHERE LEAD_STAR = 'SHAHRUKH KHAN' 
ORDER BY REVENUE-BUDGET DESC 
LIMIT 1;
