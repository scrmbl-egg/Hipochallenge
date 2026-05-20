#>hc:ability/assault/kit3/on_assault_shield_used
#
# Executes all commands when the player uses the assault's shield.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assault/kit3/used_assault_shield

function hc:msg/debug/send_info {text:"\"assault shield used\""}
