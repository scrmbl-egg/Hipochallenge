#>hc:ability/class/recon/kit1/on_flash_bomb_thrown
#
# Executes all commands when the player throws the recon's flash bomb.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit1/used_flash_bomb

function hc:msg/debug/send_info {text:"\"flash bomb thrown\""}
