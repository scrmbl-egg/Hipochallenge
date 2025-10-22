#>core_hc:trigger/p1
#
# Trigger for setting the player's perk to 1.
#
# @context player

function hc:perk/select/1

# reset and re-enable
scoreboard players reset @a p1
scoreboard players enable @a p1
