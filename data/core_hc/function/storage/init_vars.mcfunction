#>core_hc:storage/init_vars
#
# Initializes all global variables in the datapack.
#
# @returns
#   Result: 1 if all variables are initialized

## WARNING:
# Unsafe function!
#
# This function initializes all variables in the game. This is a dangerous
# function to execute because these values are changed during the game, and
# resetting them in this function may cause A LOT of unexpected behaviour.

## NOTE:
# This file doesn't expose the underlying structure of the global variables
# (`vars`) structure very well, since it uses a combination of individual
# assignments and setup functions.
#
# To actually see the underlying structure well, go to the `mcdoc/main.mcdoc`
# file in this datapack.

## NOTE:
# Whenever a `data remove storage ...` command is seen, it serves as an
# indicator of a value staying null.

function hc:msg/debug/send_info { \
    text:"\"Initializing datapack global variables...\"", \
}

# reload_count is the only variable that must be kept, save temporarily
data modify storage hc:temp init_vars.reload_count \
    set from storage hc:main vars.reload_count

# reset
data remove storage hc:main vars

## RELOAD COUNT
data modify storage hc:main vars.reload_count \
    set from storage hc:temp init_vars.reload_count


## GAME CONTEXT
# match requested
data remove storage hc:main vars.game_context.match_requested

# mode
function hc:game/mode/select {internal_name:"hc:casual"}

# level
data modify storage hc:main vars.game_context.level \
    set from storage hc:main consts.levels[{internal_name:"hc:subdec"}]


## TEAM CONTEXTS
# team1
function hc:team/team1/custom_name/reset
function hc:team/team1/color/set_red
data modify storage hc:main vars.team_contexts.team1.player_profiles \
    set value []

# team2
function hc:team/team2/custom_name/reset
function hc:team/team2/color/set_blue
data modify storage hc:main vars.team_contexts.team2.player_profiles \
    set value []

# free memory
data remove storage hc:temp init_vars

## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
