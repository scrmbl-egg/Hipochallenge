#>hipochallenge:team/name/reset_team1_name
#
# Resets the first team's name.

# remove team's custom name NBT
data remove storage minecraft:hipochallenge vars.team_contexts.team1.custom_name

# get set name function parameters
data modify storage hc:temp reset_name set value { \
    team:"team1", \
    text:{}, \
    prefix_color:"", \
    team_color:"", \
}
data modify storage hc:temp reset_name.text \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team1.preset.default_name
data modify storage hc:temp reset_name.prefix_color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team1.preset.name_color
data modify storage hc:temp reset_name.team_color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team1.preset.text_color

# set preset name as new team name
function core_hc:team/name/set \
    with storage hc:temp reset_name

# free memory
data remove storage hc:temp reset_name
