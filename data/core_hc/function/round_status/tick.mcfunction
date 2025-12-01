#>core_hc:round_status/tick
#
# Ticks the round status bossbar, decreasing remaining time and updating text.

# remove 1 from timer
scoreboard players remove __$hc_ticks __hc.RoundStatusTimer 1

# convert to seconds (+1 to compensate int division decimal remainder)
scoreboard players operation \
    __$hc_secs __hc.RoundStatusTimer = __$hc_ticks __hc.RoundStatusTimer
scoreboard players operation \
    __$hc_secs __hc.RoundStatusTimer /= __$hc_tps __hc.RoundStatusTimer
scoreboard players add __$hc_secs __hc.RoundStatusTimer 1

# update name
bossbar set hc:round_status name { \
    translate:"hc.bossbar.round_status.name", \
    fallback:"\u231b %1$s | %2$s - %3$s", \
    shadow_color:[0.0f, 0f, 0f, 1f], \
    with:[ \
        { \
            score:{name:"__$hc_secs",objective:"__hc.RoundStatusTimer"}, \
            bold:true, \
        }, \
        {storage:"hc:main",nbt:"vars.game_context.team1_wins"}, \
        {storage:"hc:main",nbt:"vars.game_context.team2_wins"}, \
    ], \
}

## set colors
## TODO: discuss if hardcoded values should be used for changing colors

# yellow if 60 seconds left
execute if score __$hc_secs __hc.RoundStatusTimer matches 60 \
    run \
    bossbar set hc:round_status color yellow
# red if 10 seconds left
execute if score __$hc_secs __hc.RoundStatusTimer matches 10 \
    run \
    bossbar set hc:round_status color red

## set bossbar value
execute store result bossbar hc:round_status value \
    run \
    scoreboard players get __$hc_secs __hc.RoundStatusTimer

## remove bossbar when timer ends
execute if score __$hc_ticks __hc.RoundStatusTimer matches ..0 \
    run \
    function core_hc:round_status/remove
