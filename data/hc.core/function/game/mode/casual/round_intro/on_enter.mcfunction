#>hc.core:game/mode/casual/round_intro/on_enter
#
# Function called when entering the round_intro state of the casual game mode.

## INIT SCOREBOARD HOLDERS
execute store result score hc:state/remaining_ticks __hc.Casual \
    run \
    compute default integer hc:game/mode/casual/round_intro/duration_ticks


# increment current round number
scoreboard players add hc:round __hc.Casual 1

## SHOW ROUND TITLE
title @a[predicate=hc:team/is_in_match_team] times 0.2s 2.6s 0.2s
title @a[predicate=hc:team/is_in_match_team] title ""

# "Round X"
execute if score hc:round __hc.Casual < hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.number", \
        fallback:"Round %s", \
        with:[{score:{name:"hc:round",objective:"__hc.Casual"}}], \
        color:"yellow", \
    }
# "Final Round" (has "with" component with the round number just in case)
execute if score hc:round __hc.Casual = hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.final", \
        fallback:"Final round", \
        with:[{score:{name:"hc:round",objective:"__hc.Casual"}}], \
        color:"red", \
    }
# "Extra Round (X)" (unused, but still included just in case)
execute if score hc:round __hc.Casual > hc:max_rounds __hc.Casual \
    run \
    title @a[predicate=hc:team/is_in_match_team] subtitle { \
        translate:"hc.round.extra", \
        fallback:"Extra Round (%s)", \
        with:[{score:{name:"hc:round",objective:"__hc.Casual"}}], \
        color:"#b768d6", \
    }

# TODO: tp players and block player movement
