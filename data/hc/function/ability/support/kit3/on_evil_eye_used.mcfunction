#>hc:ability/support/kit3/on_evil_eye_used
#
# Executes all commands when the player uses the support's evil eye.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/support/kit3/used_evil_eye

function hc:msg/debug/send_info {text:"\"evil eye used\""}
