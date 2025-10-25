#>hc:ability/class/recon/kit1/on_low_visibility_area_placed
#
# Executes all commands when the player places the recon's low visibility area.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/recon/kit1/used_low_visibility_area

function hc:msg/debug/send_info {text:"\"low visibility area placed\""}
