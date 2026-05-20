#>hc:ability/assault/kit3/on_pushing_projectile_thrown
#
# Executes all commands when the player throws the assault's pushing projectile.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assault/kit3/used_pushing_projectile

function hc:msg/debug/send_info {text:"\"pushing projectile thrown\""}
