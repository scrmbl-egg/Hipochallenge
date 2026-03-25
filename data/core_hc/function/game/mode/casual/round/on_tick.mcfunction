#>core_hc:mode/casual/round/on_tick
#
# Function called each tick of the round state of the casual game mode.

# get stopwatch seconds
execute store result score __$hc_secs __hc.Round \
    run \
    stopwatch query hc:casual/round 1

# put difference in bossbar value and name
scoreboard players operation \
    __$hc_remaining __hc.Round = __$hc_duration_secs __hc.Round
execute store result bossbar hc:casual/round value \
    run \
    scoreboard players operation \
    __$hc_remaining __hc.Round -= __$hc_secs __hc.Round

bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"__$hc_remaining",objective:"__hc.Round"}}, \
    ], \
}

# if round ends, end game
execute if score \
    __$hc_secs __hc.Round >= __$hc_duration_secs __hc.Round \
    run \
    return 0
