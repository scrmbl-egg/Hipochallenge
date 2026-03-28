#>core_hc:game/mode/casual/round/on_tick
#
# Function called each tick of the round state of the casual game mode.

# get stopwatch seconds
execute store result score __$hc_state_secs __hc.Casual \
    run \
    stopwatch query hc:casual/round 1

# put difference in bossbar value and name
scoreboard players operation \
    __$hc_remaining_secs __hc.Casual = __$hc_state_duration_secs __hc.Casual
execute store result bossbar hc:casual/round value \
    run \
    scoreboard players operation \
    __$hc_remaining_secs __hc.Casual -= __$hc_state_secs __hc.Casual

bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"__$hc_remaining_secs",objective:"__hc.Casual"}}, \
    ], \
}

# if time expires, go to overtime
execute if score \
    __$hc_state_secs __hc.Casual >= __$hc_state_duration_secs __hc.Casual \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"round_sudden_death"}].id
