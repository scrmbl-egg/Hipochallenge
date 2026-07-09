#>hc.core:game/mode/casual/round_intro/on_enter
#
# Function called when entering the round_intro state of the casual game mode.

## INIT SCOREBOARD HOLDERS
execute store result score hc:state_remaining_ticks __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{key:"hc:casual"}].\
    casual_data.round_intro_duration_seconds 20


# increment current round number
scoreboard players add hc:round __hc.Casual 1


# show round title ("round X" or "final round")
title @a[predicate=hc:team/is_in_match_team] times 0.1s 3s 0.1s
title @a[predicate=hc:team/is_in_match_team] title ""
execute if score hc:round __hc.Casual < hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.number", \
        fallback:"Round %s", \
        with:[{score:{name:"hc:round",objective:"__hc.Casual"}}], \
    }
execute if score hc:round __hc.Casual >= hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.final", \
        fallback:"Final round", \
    }
