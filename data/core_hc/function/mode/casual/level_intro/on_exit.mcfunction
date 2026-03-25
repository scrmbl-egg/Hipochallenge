#>core_hc:mode/casual/level_intro/on_exit
#
# Function called when exiting the level_intro state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/level_intro

# free memory
scoreboard objectives remove __hc.LevelIntro
data remove storage hc:temp level_intro
