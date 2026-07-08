#>hc.core:game/mode/casual/round/on_exit
#
# Function called when exiting the round state of the casual game mode.

# remove bossbar
bossbar remove hc:casual/round

# free memory
scoreboard players reset hc:state_secs __hc.Casual
scoreboard players reset hc:state_duration_secs __hc.Casual
scoreboard players reset hc:remaining_secs __hc.Casual
