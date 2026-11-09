#>hc.core:game/mode/casual/round_overtime/on_enter
#
# Function called when entering the round_overtime state of the casual game
# mode.

## CREATE STOPWATCH
# HACK: this stopwatch is a placeholder, this must be substituted with a proper
# check that all players from a team are dead.
stopwatch create hc:casual/round_overtime

## TITLE
title @a[predicate=hc:team/is_in_match_team] times 0.1s 2s 0.1s
title @a[predicate=hc:team/is_in_match_team] title ""
title @a[predicate=hc:team/is_in_match_team] subtitle { \
    translate:"hc.round.sudden_death", \
    fallback:"Sudden Death", \
    color:"red", \
}
