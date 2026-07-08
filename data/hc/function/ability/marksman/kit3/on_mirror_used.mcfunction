#>hc:ability/marksman/kit3/on_mirror_used
#
# Executes all commands when the player uses the mirror.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit3/used_mirror

function hc:msg/debug/send_info {text:"\"place mirror\""}
