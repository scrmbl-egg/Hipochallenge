#>hc:ability/class/assault/kit2/on_harpoon_used
#
# Executes all commands when the player uses the assault's harpoon.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assault/kit2/used_harpoon

function hc:msg/debug/send_info {text:"\"harpoon used\""}
