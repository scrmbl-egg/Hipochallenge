#>core_hc:round_status/init
#
# Initialises the game's round status bossbar.
#
# @input
#   round_duration_ticks: #[divisible_by=20] int @ 20..
#       Duration of a game round in ticks.

# reset
bossbar remove hc:round_status

## timer scoreboard setup
# create time scoreboard holder
scoreboard objectives add __hc.RoundTimer dummy

# tps
scoreboard players set __$hc_ticks_per_sec __hc.RoundTimer 20

# get duration ticks from game mode data
execute store result score __$hc_ticks __hc.RoundTimer \
    run \
    data get storage hc:main \
    vars.game_context.current_game_mode.round_duration_ticks

# get seconds (+1 to compensate int division decimal remainder)
execute store result score __$hc_secs __hc.RoundTimer \
    run \
    scoreboard players get __$hc_ticks __hc.RoundTimer
scoreboard players operation \
    __$hc_secs __hc.RoundTimer /= __$hc_ticks_per_sec __hc.RoundTimer
scoreboard players add __$hc_secs __hc.RoundTimer 1

## create bossbar
bossbar add hc:round_status ""
bossbar set hc:round_status color green
bossbar set hc:round_status players @a[predicate=hc:team/is_in_match_pvp_team]
bossbar set hc:round_status style progress
bossbar set hc:round_status visible true
bossbar set hc:round_status name { \
    translate:"hc.bossbar.round_status.name", \
    fallback:"\u231b %1$s | %2$s - %3$s", \
    with:[ \
        { \
            score:{name:"__$hc_secs",objective:"__hc.RoundTimer"}, \
        }, \
        {storage:"hc:main",nbt:"vars.game_context.team1_wins"}, \
        {storage:"hc:main",nbt:"vars.game_context.team2_wins"}, \
    ], \
}
execute store result bossbar hc:round_status max \
    run \
    data get storage hc:main \
    vars.game_context.current_game_mode.round_duration_ticks
execute store result bossbar hc:round_status max \
    run \
    data get storage hc:main \
    vars.game_context.current_game_mode.round_duration_ticks

# set value




# free memory
data remove storage hc:temp round_status_init
