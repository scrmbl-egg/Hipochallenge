#>core_hc:mode/casual/round/on_exit
#
# Function called when exiting the round state of the casual game mode.

# remove stopwatch
stopwatch remove hc:casual/round

# remove bossbar
bossbar remove hc:casual/round

# free memory
scoreboard objectives remove __hc.Round
