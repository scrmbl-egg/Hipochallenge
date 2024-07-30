# WARNING: Unsafe function!
# This function initializes all variables in the game. This is a dangerous function to execute
# because these values are changed during the game, and resetting them in this function may
# cause A LOT of unexpected behaviour.


# TODO: Initialise minecraft:hipochallenge variables here.


data modify storage minecraft:hipochallenge current_game_state set value 0
data modify storage minecraft:hipochallenge is_competitive_mode set value true
data modify storage minecraft:hipochallenge users_playing set value 0