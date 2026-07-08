#>hc:ability/marksman/kit3/on_el_diablo_bullet_used
#
# Executes all commands when the player uses the diablo bullet.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit3/used_el_diablo_bullet

function hc:msg/debug/send_info {text:"\"el diablo bullet used\""}
