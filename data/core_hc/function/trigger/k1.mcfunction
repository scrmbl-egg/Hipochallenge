#>core_hc:trigger/k1
#
# Trigger for setting the player's kit to 1.
#
# @context player

function hc:kit/select/1

# reset and re-enable
scoreboard players reset @a k1
scoreboard players enable @a k1
