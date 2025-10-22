#>core_hc:trigger/p3
#
# Trigger for setting the player's perk to 3.
#
# @context player

function hc:perk/select/3

# reset and re-enable
scoreboard players reset @a p3
scoreboard players enable @a p3
