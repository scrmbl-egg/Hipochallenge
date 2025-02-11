# WARNING: Unsafe function!
# This function initializes all variables in the game. This is a dangerous 
# function to execute because these values are changed during the game, and
# resetting them in this function may cause A LOT of unexpected behaviour.

# TODO: Initialise minecraft:hipochallenge variables here.

# reset
data remove storage minecraft:hipochallenge vars

## GAME VARIABLES

data modify storage minecraft:hipochallenge vars.game.current_state set value 0
data modify storage minecraft:hipochallenge vars.game.is_competitive_mode set value true
data modify storage minecraft:hipochallenge vars.game.users_playing set value 0
data modify storage minecraft:hipochallenge vars.game.current_round set value 0
data modify storage minecraft:hipochallenge vars.game.team1.rounds_won set value 0
data modify storage minecraft:hipochallenge vars.game.team2.rounds_won set value 0

## TEAMS

# team 1
data modify storage minecraft:hipochallenge vars.teams.team1.name set value "Team 1"
data modify storage minecraft:hipochallenge vars.teams.team1.has_name_changed set value false

# team 2
data modify storage minecraft:hipochallenge vars.teams.team2.name set value "Team 2"
data modify storage minecraft:hipochallenge vars.teams.team2.has_name_changed set value false
