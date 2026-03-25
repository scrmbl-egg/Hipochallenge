#>core_hc:mode/casual/level_intro/on_enter
#
# Function called when entering the level_intro state of the casual game mode.

## SCOREBOARDS
scoreboard objectives add __hc.LevelIntro dummy

# store duration
execute store result score __$hc_duration_secs __hc.LevelIntro \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.level_intro_duration_seconds


## DATA
data modify storage hc:temp level_intro set value { \
    display_title_args:{ \
        text:{}, \
    }, \
    display_subtitle_args:{ \
        text:{}, \
    }, \
}
# get mode & level name for titles
data modify storage hc:temp level_intro.display_title_args.text \
    set from storage hc:main vars.game_context.mode.preset.name
data modify storage hc:temp level_intro.display_subtitle_args.text \
    set from storage hc:main vars.game_context.level.name

## SETUP STOPWATCH
stopwatch create hc:casual/level_intro


## DISPLAY MODE AND LEVEL TITLES
title @a[predicate=hc:team/is_in_match_team] times 0s 6s 0.75s
# display mode name
execute as @a[predicate=hc:team/is_in_match_team] \
    run \
    function hc:util/title/display_title \
    with storage hc:temp level_intro.display_title_args
# display level name (subtitle)
execute as @a[predicate=hc:team/is_in_match_team] \
    run \
    function hc:util/title/display_subtitle \
    with storage hc:temp level_intro.display_subtitle_args


## FX
playsound minecraft:entity.player.levelup \
    voice @a[predicate=hc:team/is_in_match_team] 0 10000 0 1 1 1


# memory freed in exit function
