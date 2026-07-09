#>hc.core:game/mode/casual/round_intro/on_tick
#
# Function called each tick of the round_intro state of the casual game mode.

# when timer ends, go to round state
execute if score hc:state_remaining_ticks __hc.Casual matches ..0 \
    run \
    return run \
    data get storage hc:main consts.game.modes[{key:"hc:casual"}].\
    states[{key:"round"}].id
