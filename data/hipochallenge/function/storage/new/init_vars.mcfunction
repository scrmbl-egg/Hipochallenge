# WARNING: Unsafe function!
# This function initializes all variables in the game. This is a dangerous
# function to execute because these values are changed during the game, and
# resetting them in this function may cause A LOT of unexpected behaviour.

# TODO: Initialise minecraft:hipochallenge variables here.

# reset
data remove storage minecraft:hipochallenge vars

## GAME VARIABLES

data modify storage minecraft:hipochallenge vars.game_context.current_state set value 0
data modify storage minecraft:hipochallenge vars.game_context.selected_mode_index set value 0
data modify storage minecraft:hipochallenge vars.game_context.users_playing set value 0
data modify storage minecraft:hipochallenge vars.game_context.current_round set value 1
data modify storage minecraft:hipochallenge vars.game_context.current_level_index set value 0
data modify storage minecraft:hipochallenge vars.game_context.team1_wins set value 0
data modify storage minecraft:hipochallenge vars.game_context.team2_wins set value 0

## TEAMS

# team 1
data modify storage minecraft:hipochallenge vars.team_contexts.team1.custom_name set value "Team 1"
data modify storage minecraft:hipochallenge vars.team_contexts.team1.color_id set from storage minecraft:hipochallenge consts.teams.neutral.color_id
data modify storage minecraft:hipochallenge vars.team_contexts.team1.dust_color set from storage minecraft:hipochallenge consts.teams.neutral.dust_color
data modify storage minecraft:hipochallenge vars.team_contexts.team1.text_color set from storage minecraft:hipochallenge consts.teams.neutral.text_color
data modify storage minecraft:hipochallenge vars.team_contexts.team1.armor_color set from storage minecraft:hipochallenge consts.teams.neutral.armor_color
data modify storage minecraft:hipochallenge vars.team_contexts.team1.trim_material set from storage minecraft:hipochallenge consts.teams.neutral.trim_material

# team 2
data modify storage minecraft:hipochallenge vars.team_contexts.team2.custom_name set value "Team 2"
data modify storage minecraft:hipochallenge vars.team_contexts.team2.color_id set from storage minecraft:hipochallenge consts.teams.neutral.color_id
data modify storage minecraft:hipochallenge vars.team_contexts.team2.dust_color set from storage minecraft:hipochallenge consts.teams.neutral.dust_color
data modify storage minecraft:hipochallenge vars.team_contexts.team2.text_color set from storage minecraft:hipochallenge consts.teams.neutral.text_color
data modify storage minecraft:hipochallenge vars.team_contexts.team2.armor_color set from storage minecraft:hipochallenge consts.teams.neutral.armor_color
data modify storage minecraft:hipochallenge vars.team_contexts.team2.trim_material set from storage minecraft:hipochallenge consts.teams.neutral.trim_material
