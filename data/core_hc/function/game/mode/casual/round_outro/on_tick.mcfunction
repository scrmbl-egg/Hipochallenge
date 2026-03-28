#>core_hc:game/mode/casual/round_outro/on_tick
#
# Function called each tick of the round_outro state of the casual game mode.

return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"intermission"}].id
