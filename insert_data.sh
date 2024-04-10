#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  if [[ $YEAR != "year" ]]
  then
    #insert winning TEAM
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into teams, $WINNER
    fi
    #insert opponent team
    INSERT_TEAM2_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ $INSERT_TEAM2_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into teams, $OPPONENT
    fi
    #get team_id1
      TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #get team_id2
      TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #insert year
    INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_ID1, $TEAM_ID2, $WINNERGOALS, $OPPONENTGOALS)")
    if [[ $INSERT_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into games, $YEAR : $ROUND : $TEAM_ID1 : $TEAM_ID2 : $WINNERGOALS : $OPPONENTGOALS
    fi
  fi
done