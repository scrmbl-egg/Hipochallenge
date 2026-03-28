#>core_hc:game/mode/casual/round_overtime/on_tick
#
# Function called each tick of the round_overtime state of the casual game mode.

# TODO: check that all players of a team are dead instead of this test case
execute if stopwatch hc:casual/round_overtime 5.. \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"round_outro"}].id
