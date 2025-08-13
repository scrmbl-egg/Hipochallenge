#>hipochallenge:team/name/reset_team2_name
#
# Resets the second team's name.

# remove team's custom name NBT
data remove storage minecraft:hipochallenge vars.team_contexts.team2.custom_name

# get set name function parameters
data modify storage hc:temp reset_name set value { \
    team:"team2", \
    text:{}, \
    color:"", \
}
data modify storage hc:temp reset_name.text \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.default_name
data modify storage hc:temp reset_name.color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.name_color

# set preset name as new team name
function core_hc:team/name/set \
    with storage hc:temp reset_name

# free memory
data remove storage hc:temp reset_name
