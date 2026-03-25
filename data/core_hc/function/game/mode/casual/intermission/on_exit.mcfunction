#>core_hc:mode/casual/intermission/on_exit
#
# Function called when exiting the intermission state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/intermission

# remove bossbar
bossbar remove hc:casual/intermission

# free memory
scoreboard objectives remove __hc.Intermission
