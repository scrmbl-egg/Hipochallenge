#>core_hc:game/mode/casual/intermission/on_exit
#
# Function called when exiting the intermission state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/intermission

# remove bossbar
bossbar remove hc:casual/intermission

# free memory
scoreboard players reset __$hc_state_secs __hc.Casual
scoreboard players reset __$hc_state_duration_secs __hc.Casual
scoreboard players reset __$hc_remaining_secs __hc.Casual
