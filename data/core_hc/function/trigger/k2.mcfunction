#>core_hc:trigger/k2
#
# Trigger for setting the player's kit to 2.
#
# @context player

function hc:kit/select/2

# reset and re-enable
scoreboard players reset @a k2
scoreboard players enable @a k2
