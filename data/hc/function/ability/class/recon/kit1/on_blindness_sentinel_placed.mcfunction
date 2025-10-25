#>hc:ability/class/recon/kit1/on_blindness_sentinel_placed
#
# Executes all commands when the player places the recon's blindness sentinel.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit1/used_blindness_sentinel

function hc:msg/debug/send_info {text:"\"blindness sentinel placed\""}
