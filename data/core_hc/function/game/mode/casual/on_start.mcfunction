#>core_hc:game/mode/casual/on_start
#
# Function that is called at the start of the casual mode.

## SCOREBOARDS
scoreboard objectives add __hc.Casual dummy

scoreboard objectives setdisplay sidebar __hc.Casual

## STORE MODE VARIABLES
# current round
scoreboard players set __$hc_round __hc.Casual 0

# max amount of rounds (double rounds_to_win and subtract 1)
execute store result score __$hc_max_rounds __hc.Casual \
    run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    casual_data.rounds_to_win 2
scoreboard players remove __$hc_max_rounds __hc.Casual 1
