#>core_hc:round_status/tick
#
# Ticks the round status bossbar, decreasing remaining time and updating text.

# remove 1 from timer
scoreboard players remove __$hc_ticks __hc.RoundTimer 1

# convert to seconds (+1 to compensate int division decimal remainder)
scoreboard players operation \
    __$hc_secs __hc.RoundTimer = __$hc_ticks __hc.RoundTimer
scoreboard players operation \
    __$hc_secs __hc.RoundTimer /= __$hc_ticks_per_sec __hc.RoundTimer
scoreboard players add __$hc_secs __hc.RoundTimer 1

# update name
bossbar set hc:round_status name { \
    translate:"hc.bossbar.round_status.name", \
    fallback:"%1$s \u231b | %2$s - %3$s", \
    with:[ \
        { \
            score:{name:"__$hc_secs",objective:"__hc.RoundTimer"}, \
        }, \
        {storage:"hc:main",nbt:"vars.game_context.team1_wins"}, \
        {storage:"hc:main",nbt:"vars.game_context.team2_wins"}, \
    ], \
}

# set bossbar value
data modify storage hc:temp round_status_tick.set_value set value { \
    bossbar:"hc:round_status", \
    value:0, \
}
execute store result storage hc:temp round_status_tick.set_value.value \
    int 1 \
    run \
    scoreboard players get __$hc_ticks __hc.RoundTimer

function core_hc:util/bossbar/set_value \
    with storage hc:temp round_status_tick.set_value

# remove bossbar when timer ends
execute if score __$hc_ticks __hc.RoundTimer matches ..0 \
    run \
    function core_hc:round_status/remove

# free memory
data remove storage hc:temp round_status_tick
