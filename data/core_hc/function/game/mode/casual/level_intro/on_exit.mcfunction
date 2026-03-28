#>core_hc:game/mode/casual/level_intro/on_exit
#
# Function called when exiting the level_intro state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/level_intro

# free memory
scoreboard players reset __$hc_state_secs __hc.Casual
scoreboard players reset __$hc_state_duration_secs __hc.Casual
data remove storage hc:temp level_intro
