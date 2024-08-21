#!/bin/bash

# PSQL variable for querying the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Ensure the tables exist only on the first run
if [[ ! -f ".tables_created" ]]; then
  $PSQL "CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(22) PRIMARY KEY,
    games_played INTEGER DEFAULT 0,
    best_game INTEGER
  );"
  
  $PSQL "CREATE TABLE IF NOT EXISTS games (
    game_id SERIAL PRIMARY KEY,
    username VARCHAR(22),
    guesses INTEGER,
    FOREIGN KEY (username) REFERENCES users(username)
  );"

  touch .tables_created
fi

# Function to check if input is an integer
is_integer() {
  [[ $1 =~ ^[0-9]+$ ]]
}

# Prompt for username
echo "Enter your username:"
read USERNAME

#CHECK
# Check if the user already exists
USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
if [[ -z $USER_EXISTS ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # Insert new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')" > /dev/null 2>&1)
else
  # Retrieve user stats
  USER_STATS=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")
  GAMES_PLAYED=$(echo $USER_STATS | cut -d'|' -f1)
  BEST_GAME=$(echo $USER_STATS | cut -d'|' -f2)
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initialize guess count
GUESS_COUNT=0

# Start guessing game
echo "Guess the secret number between 1 and 1000:"

while true; do
  read GUESS

  if ! is_integer "$GUESS"; then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
    GUESS_COUNT=$((GUESS_COUNT + 1))
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
    GUESS_COUNT=$((GUESS_COUNT + 1))
  else
    GUESS_COUNT=$((GUESS_COUNT + 1))
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    #INSERT
    # Insert game data
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(username, guesses) VALUES('$USERNAME', $GUESS_COUNT)" > /dev/null 2>&1)
    #UPDATE
    # Update user data
    $PSQL "UPDATE users SET games_played = games_played + 1 WHERE username='$USERNAME'" > /dev/null 2>&1

    # Update best game if necessary
    if [[ -z $BEST_GAME ]] || [[ $GUESS_COUNT -lt $BEST_GAME ]]; then
      $PSQL "UPDATE users SET best_game = $GUESS_COUNT WHERE username='$USERNAME'" > /dev/null 2>&1
    fi
    
    break
  fi
done
