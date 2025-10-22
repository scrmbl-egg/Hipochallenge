#>core_hc:trigger/ctank
#
# Trigger for setting the player's class to tank.
#
# @context player

function hc:class/select/tank

# reset and re-enable
scoreboard players reset @a ctank
scoreboard players enable @a ctank
