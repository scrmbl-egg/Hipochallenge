#>core_hc:game/mode/tick
#
# Updates the current game mode.

## NOTE:
# This function takes advantage of a quirk (or feature) where returning no
# integer from a function and attempting to store the result in a valid
# location for said integer doesn't cause mutation.
#
# This way we only need to compare if the current state ID isn't equal to the
# previous, since an on_tick_function not returning an ID means nothing is
# stored, and thus, the state just keeps going like specified in the
# documentation.

## NOTE:
# before running this function, a predicate check is ran:
#
# hc:mode/is_match_being_played
#
# This predicate, internally, ONLY checks if the current state ID is between
# 1 and INT32_MAX or INT32_MIN and -1. Which means that checking the following
# storage location (within the scope of this function):
#
# hc:main vars.game_context.mode.state
#
# ...is SAFE and won't be null!
#
# This also implies that when an on_tick_function returns 0, a special routine
# must be ran in order to properly run the exit function and set that same
# location back to an empty object {}.

## setup local scoreboard (for quick comparisons without macros)
scoreboard objectives add __hc.GameModeTick dummy

## get current game mode state ID (set to 0 just as an initial default)
scoreboard players set hc:last_id __hc.GameModeTick 0
execute store result score hc:last_id __hc.GameModeTick \
    run \
    data get storage hc:main vars.game_context.mode.state.id

## run game mode's own tick function (no result)
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.preset.on_tick_function", \
}

## get next state ID by running current state's ON_TICK_FUNCTION
# save in score for comparison (use current ID as default)
scoreboard players operation \
    hc:next_id __hc.GameModeTick = hc:last_id __hc.GameModeTick
execute store result score hc:next_id __hc.GameModeTick \
    run \
    function std:function/call_from_nbt { \
        function_storage:"hc:main", \
        function_nbt:"vars.game_context.mode.state.on_tick_function", \
    }

## compare (exit early if they are the same)
execute if score \
    hc:last_id __hc.GameModeTick = hc:next_id __hc.GameModeTick \
    run \
    return run \
    scoreboard objectives remove __hc.GameModeTick
# else...

## transition to new state
# setup state/set function arg
data modify storage hc:temp gm_tick set value { \
    set_state_args:{id:0}, \
}
execute store result storage hc:temp gm_tick.set_state_args.id \
    int 1 \
    run \
    scoreboard players get hc:next_id __hc.GameModeTick
# call function
function core_hc:game/mode/state/set \
    with storage hc:temp gm_tick.set_state_args

# free storage
scoreboard objectives remove __hc.GameModeTick
data remove storage hc:temp gm_tick
