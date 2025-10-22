#>core_hc:trigger/p2
#
# Trigger for setting the player's perk to 2.
#
# @context player

function hc:perk/select/2

# reset and re-enable
scoreboard players reset @a p2
scoreboard players enable @a p2
