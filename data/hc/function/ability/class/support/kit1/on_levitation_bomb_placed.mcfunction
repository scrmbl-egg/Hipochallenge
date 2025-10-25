#>hc:ability/class/support/kit1/on_levitation_bomb_placed
#
# Executes all commands when the player placed the support's levitation bomb.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/support/kit1/used_levitation_bomb

function hc:msg/debug/send_info {text:"levitation bomb placed"}

# TODO: implement levitation bomb
