#>core_hc:game/mode/casual/round/on_exit
#
# Function called when exiting the round state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/round

# remove bossbar
bossbar remove hc:casual/round

# free memory
scoreboard players reset __$hc_state_secs __hc.Casual
scoreboard players reset __$hc_state_duration_secs __hc.Casual
scoreboard players reset __$hc_remaining_secs __hc.Casual
