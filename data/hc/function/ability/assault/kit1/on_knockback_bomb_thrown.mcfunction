#>hc:ability/assault/kit1/on_knockback_bomb_thrown
#
# Executes all commands when the player throws the assault's knockback bomb.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assault/kit1/used_knockback_bomb

function hc:msg/debug/send_info {text:"\"knockback bomb thrown\""}
