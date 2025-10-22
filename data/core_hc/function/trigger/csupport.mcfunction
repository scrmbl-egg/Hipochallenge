#>core_hc:trigger/csupport
#
# Trigger for setting the player's class to support.
#
# @context player

function hc:class/select/support

# reset and re-enable
scoreboard players reset @a csupport
scoreboard players enable @a csupport
