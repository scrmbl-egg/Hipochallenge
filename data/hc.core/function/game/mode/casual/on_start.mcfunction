#>hc.core:game/mode/casual/on_start
#
# Function that is called at the start of the casual mode.

## SCOREBOARDS
scoreboard objectives add __hc.Casual dummy

# TODO: remove this line at some point
scoreboard objectives setdisplay sidebar __hc.Casual

## MODE VARIABLES

# team won rounds
scoreboard players set hc:team1_wins __hc.Casual 0
scoreboard players set hc:team2_wins __hc.Casual 0

# current round
scoreboard players set hc:round __hc.Casual 0

# remaining time of the state
scoreboard players set hc:state_remaining_ticks __hc.Casual -1
scoreboard players set hc:state_remaining_secs __hc.Casual 0

# TODO: maybe it would be interesting to use "mm:ss" instead of "ss" for the
# formatted remaining time

# max amount of rounds (double rounds_to_win and subtract 1)
execute store result score hc:max_rounds __hc.Casual \
    run \
    compute default integer hc:game/mode/casual/max_rounds
