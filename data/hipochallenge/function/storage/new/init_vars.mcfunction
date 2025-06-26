# WARNING: Unsafe function!
# This function initializes all variables in the game. This is a dangerous
# function to execute because these values are changed during the game, and
# resetting them in this function may cause A LOT of unexpected behaviour.

# TODO: Initialise minecraft:hipochallenge variables here.

# reset
data remove storage minecraft:hipochallenge vars

## GAME CONTEXTS
data modify storage minecraft:hipochallenge vars.game_context set value { \
    current_state:0b, \
    current_game_mode_id:0b, \
    current_level_id:0b, \
    banned_level_ids:[], \
    users_playing:0, \
    current_round:1, \
    team1_wins:0, \
    team2_wins:0, \
}

## TEAM CONTEXTS
data modify storage minecraft:hipochallenge vars.team_contexts set value { \
    team1: { \
        custom_name:"Team 1", \
        preset_id:0b, \
        players:[], \
    }, \
    team2: { \
        custom_name:"Team 2", \
        preset_id:0b, \
        players:[], \
    }, \
}
