#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) from games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals), 2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(game_id) FROM games WHERE winner_goals > 2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams full join games on teams.team_id = games.winner_id where round = 'Final' and year = 2018")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT distinct(t.name) FROM teams as t left join games as win on t.team_id = win.winner_id left join games as opp on t.team_id = opp.opponent_id where (win.year = 2014 or opp.year = 2014) and (win.round = 'Eighth-Final' or opp.round = 'Eighth-Final')")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT distinct(name) from teams inner join games on teams.team_id = games.winner_id order by name")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT year, name from teams inner join games on teams.team_id = games.winner_id where round = 'Final' order by year")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name from teams where name like 'Co%' order by name")"
