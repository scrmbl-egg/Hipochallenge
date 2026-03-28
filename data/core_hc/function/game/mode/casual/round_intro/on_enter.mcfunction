#>core_hc:game/mode/casual/round_intro/on_enter
#
# Function called when entering the round_intro state of the casual game mode.


## CREATE STOPWATCH
stopwatch create hc:casual/round_intro


# increment current round number
scoreboard players add __$hc_round __hc.Casual 1


# show round title ("round X" or "final round")
title @a[predicate=hc:team/is_in_match_team] times 0.1s 3s 0.1s
title @a[predicate=hc:team/is_in_match_team] title ""
execute if score __$hc_round __hc.Casual < __$hc_max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.number", \
        fallback:"Round %s", \
        with:[{score:{name:"__$hc_round",objective:"__hc.Casual"}}], \
    }
execute if score __$hc_round __hc.Casual >= __$hc_max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.final", \
        fallback:"Final round", \
    }
