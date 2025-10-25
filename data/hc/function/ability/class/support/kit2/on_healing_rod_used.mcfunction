#>hc:ability/class/support/kit2/on_healing_rod_used
#
# Executes all commands when the player uses the support's healing rod.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/support/kit2/used_healing_rod

function hc:msg/debug/send_info {text:"\"healing rod used\""}

# TODO: implement healing rod
