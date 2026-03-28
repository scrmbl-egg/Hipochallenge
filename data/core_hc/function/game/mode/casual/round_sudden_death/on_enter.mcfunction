#>core_hc:game/mode/casual/round_overtime/on_enter
#
# Function called when entering the round_overtime state of the casual game
# mode.

## CREATE STOPWATCH
stopwatch create hc:casual/round_overtime

## TITLE
title @a[predicate=hc:team/is_in_match_team] times 0.1s 2s 0.1s
title @a[predicate=hc:team/is_in_match_team] title ""
title @a[predicate=hc:team/is_in_match_team] subtitle { \
    translate:"hc.round.sudden_death", \
    fallback:"Sudden Death", \
    color:"red", \
}
