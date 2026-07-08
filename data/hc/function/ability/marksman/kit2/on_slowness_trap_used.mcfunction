#>hc:ability/marksman/kit2/on_slowness_trap_used
#
# Executes all commands when the player uses the slowness trap.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit2/used_slowness_trap

function hc:msg/debug/send_info {text:"\"used slowness trap\""}
