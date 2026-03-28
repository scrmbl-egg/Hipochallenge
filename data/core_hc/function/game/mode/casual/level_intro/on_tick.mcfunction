#>core_hc:game/mode/casual/level_intro/on_tick
#
# Function called each tick of the level_intro state of the casual game mode.

# get stopwatch seconds
execute store result score __$hc_state_secs __hc.Casual \
    run \
    stopwatch query hc:casual/level_intro 1

# if intro duration reaches end, go to intermission state
execute if score \
    __$hc_state_secs __hc.Casual >= __$hc_state_duration_secs __hc.Casual \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"intermission"}].id
