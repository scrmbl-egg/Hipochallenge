#>core_hc:trigger/k3
#
# Trigger for setting the player's kit to 3.
#
# @context player

function hc:kit/select/3

# reset and re-enable
scoreboard players reset @a k3
scoreboard players enable @a k3
