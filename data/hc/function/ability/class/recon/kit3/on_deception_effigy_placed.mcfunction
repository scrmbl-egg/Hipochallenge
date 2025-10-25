#>hc:ability/class/recon/kit3/on_deception_effigy_placed
#
# Executes all commands when the player placed the recon's deception effigy.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit3/used_deception_effigy

function hc:msg/debug/send_info {text:"\"deception effigy placed\""}
