#>core_hc:game/mode/casual/level_intro/on_tick
#
# Function called each tick of the level_intro state of the casual game mode.

# if intro duration reaches end, go to intermission state
execute if score __$hc_state_remaining_ticks __hc.Casual matches ..0 \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"intermission"}].id
