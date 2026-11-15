#>hc.core:game/mode/casual/round_intro/on_exit
#
# Function called when exiting the round_intro state of the casual game mode.

# "fight!" or "go!" title
title @a[predicate=hc:team/is_in_match_team] times 0.25s 0.6s 0.15s
title @a[predicate=hc:team/is_in_match_team] title ""
execute if score hc:round __hc.Casual < hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.fight", \
        fallback:"Fight!", \
        color:"green", \
    }
execute if score hc:round __hc.Casual >= hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.fight", \
        fallback:"Fight!", \
        color:"dark_red", \
        bold:true, \
    }


# TODO: unblock player movement
