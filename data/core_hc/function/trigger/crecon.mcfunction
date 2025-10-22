#>core_hc:trigger/crecon
#
# Trigger for setting the player's class to recon.
#
# @context player

function hc:class/select/recon

# reset and re-enable
scoreboard players reset @a crecon
scoreboard players enable @a crecon
