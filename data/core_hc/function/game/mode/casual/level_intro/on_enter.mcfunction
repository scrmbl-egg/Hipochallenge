#>core_hc:game/mode/casual/level_intro/on_enter
#
# Function called when entering the level_intro state of the casual game mode.

## INIT SCOREBOARD HOLDERS
# start timer
execute store result score __$hc_state_remaining_ticks __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.level_intro_duration_seconds 20


## DATA
data modify storage hc:temp level_intro set value { \
    display_subtitle_args:{ \
        text:{}, \
    }, \
}
# get level name for subtitle
data modify storage hc:temp level_intro.display_subtitle_args.text \
    set from storage hc:main vars.game_context.level.name

## SETUP STOPWATCH
stopwatch create hc:casual/level_intro


## DISPLAY MODE AND LEVEL TITLES
title @a[predicate=hc:team/is_in_match_team] times 0s 6s 0.75s
# display mode name
title @a[predicate=hc:team/is_in_match_team] title { \
    translate:"hc.mode.casual", \
    fallback:"Casual", \
    color:"green", \
}
# display level name (subtitle)
execute as @a[predicate=hc:team/is_in_match_team] \
    run \
    function hc:util/title/display_subtitle \
    with storage hc:temp level_intro.display_subtitle_args


## FX
playsound minecraft:entity.player.levelup \
    voice @a[predicate=hc:team/is_in_match_team] 0 10000 0 1 1 1
