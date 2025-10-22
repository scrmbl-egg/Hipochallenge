#>core_hc:trigger/cassault
#
# Trigger for setting the player's class to assault.
#
# @context player

function hc:class/select/assault

# reset and re-enable
scoreboard players reset @a cassault
scoreboard players enable @a cassault
