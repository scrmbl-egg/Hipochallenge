#>hc.core:game/mode/casual/round/on_enter
#
# Function called when entering the round state of the casual game mode.

## INIT SCOREBOARDS HOLDERS
# store duration
execute store result score hc:state_remaining_ticks __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.round_duration_seconds 20


## SETUP BOSSBAR
bossbar add hc:casual/round ""

execute store result bossbar hc:casual/round max \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.round_duration_seconds 20
execute store result bossbar hc:casual/round value \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.round_duration_seconds 20

bossbar set hc:casual/round color green
bossbar set hc:casual/round players @a[predicate=hc:team/is_in_match_team]
bossbar set hc:casual/round style progress
bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        { \
            storage:"hc:main", \
            nbt:"vars.game_context.mode.preset.casual_data.round_duration_seconds", \
        }, \
    ], \
}
bossbar set hc:casual/round visible true
# TODO: add translation for round bossbar
