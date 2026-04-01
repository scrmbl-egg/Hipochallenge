#>core_hc:game/mode/casual/round/on_tick
#
# Function called each tick of the round state of the casual game mode.

## UPDATE BOSSBAR
# put remaining seconds in bossbar value and name
bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"hc:state_remaining_secs",objective:"__hc.Casual"}}, \
    ], \
}
execute store result bossbar hc:casual/round value \
    run \
    scoreboard players get hc:state_remaining_ticks __hc.Casual


## if time expires, go to sudden death
execute if score hc:state_remaining_ticks __hc.Casual matches ..0 \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"round_sudden_death"}].id
