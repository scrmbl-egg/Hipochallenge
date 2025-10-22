#>core_hc:trigger/cassassin
#
# Trigger for setting the player's class to assassin.
#
# @context player

function hc:class/select/assassin

# reset and re-enable
scoreboard players reset @a cassassin
scoreboard players enable @a cassassin
