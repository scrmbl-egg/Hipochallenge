#>hc:ability/assault/kit1/on_ticking_bomb_thrown
#
# Executes all commands when the player throws the assault's ticking bomb.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assault/kit1/used_ticking_bomb

function hc:msg/debug/send_info {text:"\"ticking bomb thrown\""}
