#>hc.core:game/mode/casual/level_intro/on_enter
#
# Function called when entering the level_intro state of the casual game mode.

## INIT SCOREBOARD HOLDERS
# start timer
execute store result score hc:state_remaining_ticks __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{key:"hc:casual"}].\
    casual_data.level_intro_duration_seconds 20


## DISPLAY MODE AND LEVEL TITLES
title @a[predicate=hc:team/is_in_match_team] times 0s 6s 0.75s
# display mode name
title @a[predicate=hc:team/is_in_match_team] title { \
    translate:"hc.mode.casual", \
    fallback:"Casual", \
    color:"green", \
}
# display level name (subtitle)
title @a[predicate=hc:team/is_in_match_team] subtitle { \
    storage:"hc:main", \
    nbt:"vars.game_context.level.name", \
    interpret:true, \
}

## FX
playsound minecraft:entity.player.levelup \
    voice @a[predicate=hc:team/is_in_match_team] 0 10000 0 1 1 1
