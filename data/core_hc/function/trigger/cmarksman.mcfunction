#>core_hc:trigger/cmarksman
#
# Trigger for setting the player's class to marksman.
#
# @context player

function hc:class/select/marksman

# reset and re-enable
scoreboard players reset @a cmarksman
scoreboard players enable @a cmarksman
