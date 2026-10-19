 

 ------------------------ Zadatak 1
 SELECT match_id, stadium_capacity - attendance AS empty_seats
 FROM  workspace.default.matches_flat
 ORDER BY empty_seats DESC
 LIMIT 5 ;


 ------------------------ Zadatak 2


 SELECT DISTINCT home_team, referee_name
 FROM workspace.default.matches_flat ;

 ------------------------ Zadatak 3
SELECT COUNT( match_id) AS broj_utakmica
FROM workspace.default.matches_flat
WHERE away_goals_ht > home_goals_ht
AND home_goals > away_goals;

---------------------------Zadatak 4

SELECT match_id, home_team, away_team,
(home_goals + away_goals) - (home_goals_ht + away_goals_ht) AS goals_second_half
FROM workspace.default.matches_flat
ORDER BY goals_second_half DESC 
LIMIT 1 ;


--------------------------Zadatak 5

SELECT COUNT(*) match_id
FROM workspace.default.matches_flat
WHERE season = '2023/24'
AND weather IN ('snow', 'fog');

----------------------Zadatak 6

SELECT match_id,  kickoff_ts, home_team, away_team
FROM workspace.default.matches_flat
WHERE home_team = 'Northport United' AND away_team = 'Northport City'
OR home_team = 'Northport City' AND away_team = 'Northport United'
ORDER BY kickoff_ts ASC ;

-------------------Zadatak 7

SELECT  match_id, kickoff_ts
FROM workspace.default.matches_flat
WHERE season = '2024/25'
ORDER BY kickoff_ts ASC
LIMIT 3;

---------------Zadtak 8

SELECT match_id , first_goal_scorer
FROM matches_flat
WHERE first_goal_scorer IN ("Sean O'Neill");
