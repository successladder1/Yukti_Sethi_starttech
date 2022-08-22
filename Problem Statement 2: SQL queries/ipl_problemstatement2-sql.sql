
--1. Create a table named �matches� with appropriate data types for columns


CREATE TABLE matches 
(
	id INT PRIMARY KEY,
	city VARCHAR(60),
	date DATE,
	player_of_match VARCHAR(100),
	venue VARCHAR(100),
	neutral_venue VARCHAR(100),
	team1 VARCHAR(100),
	team2 VARCHAR(100),
	toss_winner VARCHAR(100),
	toss_decision VARCHAR(100),
	winner VARCHAR(100),
	result VARCHAR(100),
	result_margin INT,
	eliminator varchar(60),
	method VARCHAR(60),
	umpire1 VARCHAR(100),
	umpire2 VARCHAR(100)
);



--Q-2 Create a table named �deliveries� with appropriate data types for columns.

CREATE TABLE deliveries 
(
	id INT,
	inning INT,
	_over INT,
	ball INT,
	batsman VARCHAR(100),
	non_striker VARCHAR(100),
	bowler VARCHAR(100),
	batsman_runs INT,
	extra_runs INT,
	total_runs INT,
	is_wicket INT,
	dismissal_kind VARCHAR(20),
	player_dismissed VARCHAR(100),
	fielder VARCHAR(60),
	extras_types VARCHAR(60),
	batting_team VARCHAR(60),
	bowling_team VARCHAR(60)
);



--Q-3 Import data from CSV file �IPL_matches.csv� attached in resources to �matches�.

SELECT * FROM matches;



--Q-4 Import data from CSV file �IPL_Ball.csv� attached in resources to �deliveries�.

select * from deliveries;



--Q-5. Select the top 20 rows of the deliveries table.
SELECT TOP 20 *
FROM
deliveries;



--Q-6. Select the top 20 rows of the matches table.
SELECT TOP 20 *
FROM matches;



--Q-7 Fetch data of all the matches played on 2nd May 2013.

SELECT * 
FROM matches
WHERE DATE='2013-05-02';



--Q-8 Fetch data of all the matches where the margin of victory is more than 100 runs.

SELECT * 
FROM matches
WHERE result_margin>100
ORDER BY result_margin DESC;



--Q-9 Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.

SELECT * 
FROM matches
WHERE eliminator='Y'
ORDER BY date DESC;



--Q-10 Get the count of cities that have hosted an IPL match.

SELECT city, COUNT(city) "City Counts"
FROM matches 
GROUP BY city;