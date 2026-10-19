
-------------------- Zadatak 1
SELECT match_id, match_report
FROM matches_flat
WHERE match_report ILIKE '%goal%';

--------------Zadatak 2
SELECT match_id, home_team, away_team,
 COALESCE(referee_name, 'Unknown') AS referee_name
FROM matches_flat
LIMIT 20;

------------Zadatak 3

SELECT match_id, match_report,
LENGTH(match_report) AS broj_znakova
FROM matches_flat
WHERE LENGTH(match_report) > 40;

----------Zadatak 4

SELECT match_id, kickoff_ts, home_team, away_team
FROM matches_flat
WHERE kickoff_ts >= '2025-01-01'
AND kickoff_ts < '2025-01-16'
ORDER BY kickoff_ts;


---------Zadatak 5

ovaj ne znam :(


------------------- Zadatak 6


SELECT COUNT(*) AS broj_utakmica
FROM matches_flat
WHERE season = '2024/25'
AND attendance BETWEEN 20000 AND 35000;


-------------------Zadatak 7

SELECT DISTINCT match_id ,first_goal_scorer
FROM matches_flat
WHERE first_goal_scorer ILIKE 'A%'
OR first_goal_scorer LIKE '%-%';


-------------------Zadatak 8
SELECT COUNT(*) AS broj_utakmica
FROM matches_flat
WHERE kickoff_ts >= '2025-03-01'
AND kickoff_ts < '2025-06-01'
AND match_report ILIKE '%win%';