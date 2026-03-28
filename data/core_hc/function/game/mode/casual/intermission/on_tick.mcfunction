#>core_hc:game/mode/casual/intermission/on_tick
#
# Function called each tick of the intermission state of the casual game mode.
#
# @returns
#   Result: The next state ID. Nothing when the state must continue. 0 is
#       reserved for ending the match.

# get stopwatch seconds
execute store result score __$hc_state_secs __hc.Casual \
    run \
    stopwatch query hc:casual/intermission 1

# put difference in bossbar value and name
scoreboard players operation \
    __$hc_remaining_secs __hc.Casual = __$hc_state_duration_secs __hc.Casual
execute store result bossbar hc:casual/intermission value \
    run \
    scoreboard players operation \
    __$hc_remaining_secs __hc.Casual -= __$hc_state_secs __hc.Casual
bossbar set hc:casual/intermission name { \
    translate:"", \
    fallback:"%1$s \u231b | %2$s", \
    with:[ \
        {score:{name:"__$hc_remaining_secs",objective:"__hc.Casual"}}, \
        { \
            translate:"hc.selection.kit_and_perk", \
            fallback:"Select your kit & perk", \
        }, \
    ], \
}

# if duration reaches end, go to round_intro state
execute if score \
    __$hc_state_secs __hc.Casual >= __$hc_state_duration_secs __hc.Casual \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"round_intro"}].id
