#>hc.core:game/mode/casual/round/on_enter
#
# Function called when entering the round state of the casual game mode.

## INIT SCOREBOARDS HOLDERS
# store duration
execute store result score hc:state/remaining_ticks __hc.Casual \
    run \
    compute default integer hc:game/mode/casual/round/duration_ticks


## SETUP BOSSBAR
bossbar add hc:casual/round ""

execute store result bossbar hc:casual/round max \
    run \
    compute default integer hc:game/mode/casual/round/duration_ticks
execute store result bossbar hc:casual/round value \
    run \
    compute default integer hc:game/mode/casual/round/duration_ticks

bossbar set hc:casual/round color green
bossbar set hc:casual/round players @a[predicate=hc:team/is_in_match_team]
bossbar set hc:casual/round style progress
bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"hc:state/remaining_secs",objective:"__hc.Casual"}}, \
    ], \
}
bossbar set hc:casual/round visible true
# TODO: add translation for round bossbar
