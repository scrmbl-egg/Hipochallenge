#>core_hc:round_status/init
#
# Initialises the game's round status bossbar.

# reset
function core_hc:round_status/remove

## timer scoreboard setup
# create time scoreboard holder
scoreboard objectives add __hc.RoundStatusTimer dummy

# set tps
scoreboard players set __$hc_tps __hc.RoundStatusTimer 20

# get duration ticks from game mode data
execute store result score __$hc_ticks __hc.RoundStatusTimer \
    run \
    data get storage hc:main \
    vars.game_context.mode.round_duration_seconds 20

# get seconds (+1 to compensate int division decimal remainder)
scoreboard players operation \
    __$hc_secs __hc.RoundStatusTimer = __$hc_ticks __hc.RoundStatusTimer
scoreboard players operation \
    __$hc_secs __hc.RoundStatusTimer /= __$hc_tps __hc.RoundStatusTimer
scoreboard players add __$hc_secs __hc.RoundStatusTimer 1

## create bossbar
bossbar add hc:round_status ""
bossbar set hc:round_status color green
bossbar set hc:round_status players @a[predicate=hc:team/is_in_match_pvp_team]
bossbar set hc:round_status style progress
bossbar set hc:round_status visible true
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
execute store result bossbar hc:round_status max \
    run \
    data get storage hc:main \
    vars.game_context.mode.round_duration_seconds

# set value
execute store result bossbar hc:round_status value \
    run \
    scoreboard players get __$hc_secs __hc.RoundStatusTimer
