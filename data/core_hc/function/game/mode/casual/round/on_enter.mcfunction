#>core_hc:game/mode/casual/round/on_enter
#
# Function called when entering the round state of the casual game mode.

## INIT SCOREBOARDS HOLDERS
scoreboard players set __$hc_state_duration_secs __hc.Casual 0
scoreboard players set __$hc_state_secs __hc.Casual 0
scoreboard players set __$hc_remaining_secs __hc.Casual 0

# store duration
execute store result score __$hc_state_duration_secs __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.round_duration_seconds


## SETUP STOPWATCH
stopwatch create hc:casual/round


## SETUP BOSSBAR
bossbar add hc:casual/round ""
bossbar set hc:casual/round color green
bossbar set hc:casual/round players @a[predicate=hc:team/is_in_match_team]
bossbar set hc:casual/round style progress
bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"__$hc_remaining_secs",objective:"__hc.Casual"}}, \
    ], \
}
bossbar set hc:casual/round visible true
execute store result bossbar hc:casual/round max \
    run \
    scoreboard players get __$hc_state_duration_secs __hc.Casual
