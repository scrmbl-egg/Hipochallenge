#>hc:ability/assault/kit2/on_void_bow_shot
#
# Executes all commands when the player uses the assault's void bow.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/assault/kit2/used_void_bow

function hc:msg/debug/send_info {text:"\"void bow shot\""}
