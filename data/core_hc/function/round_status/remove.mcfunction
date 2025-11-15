#>core_hc:round_status/remove
#
# Removes the round status bossbar.

# remove scoreboard
scoreboard objectives remove __hc.RoundTimer

# remove bossbar
bossbar remove hc:round_status
