#>hipochallenge:team/name/reset_team1_name
#
# Resets the first team's name.

# remove team's custom name NBT
data remove storage minecraft:hipochallenge vars.team_contexts.team1.custom_name

# get set name function parameters
data modify storage minecraft:hipochallenge local_reset_name.team \
    set value "team1"
data modify storage minecraft:hipochallenge local_reset_name.text \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team1.preset.default_name
data modify storage minecraft:hipochallenge local_reset_name.color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team1.preset.name_color

# set preset name as new team name
function core_hc:team/name/set \
    with storage minecraft:hipochallenge local_reset_name

# free memory
data remove storage minecraft:hipochallenge local_reset_name
