#>core_hc:mode/casual/intermission/on_tick
#
# Function called each tick of the intermission state of the casual game mode.
#
# @returns
#   Result: The next state ID. Nothing when the state must continue. 0 is
#       reserved for ending the match.

# get stopwatch seconds
execute store result score __$hc_secs __hc.Intermission \
    run \
    stopwatch query hc:casual/intermission 1

# put difference in bossbar value and name
scoreboard players operation \
    __$hc_remaining __hc.Intermission = __$hc_duration_secs __hc.Intermission
execute store result bossbar hc:casual/intermission value \
    run \
    scoreboard players operation \
    __$hc_remaining __hc.Intermission -= __$hc_secs __hc.Intermission
bossbar set hc:casual/intermission name { \
    translate:"", \
    fallback:"%1$s \u231b | %2$s", \
    with:[ \
        {score:{name:"__$hc_remaining",objective:"__hc.Intermission"}}, \
        { \
            translate:"hc.selection.kit_and_perk", \
            fallback:"Select your kit & perk", \
        }, \
    ], \
}

# if duration reaches end, go to round state
execute if score \
    __$hc_secs __hc.Intermission >= __$hc_duration_secs __hc.Intermission \
    run \
    return 3
