#>hc:ability/assault/kit1/on_smoke_bomb_thrown
#
# Executes all commands when the player throws the assault's smoke bomb.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/assault/kit1/used_smoke_bomb

function hc:msg/debug/send_info {text:"\"smoke bomb thrown\""}
