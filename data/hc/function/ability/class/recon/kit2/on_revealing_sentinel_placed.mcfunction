#>hc:ability/class/recon/kit2/on_revealing_sentinel_placed
#
# Executes all commands when the player places the recon's revealing sentinel.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit2/used_revealing_sentinel

function hc:msg/debug/send_info {text:"\"placed revealing sentinel\""}
