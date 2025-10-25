#>hc:ability/class/marksman/kit1/on_smoke_arrow_crossbow_shot
#
# Executes all commands when the player shoots the marksman smoke arrow
# crossbow.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/marksman/kit1/used_smoke_arrow_crossbow

function hc:msg/debug/send_info {text:"\"smoke arrow crossbow shot\""}
