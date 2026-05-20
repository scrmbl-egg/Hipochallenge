#>hc:ability/support/kit1/on_gravity_well_placed
#
# Executes all commands when the player placed the support's deception effigy.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/support/kit1/used_gravity_well

function hc:msg/debug/send_info {text:"\"gravity well placed\""}

# TODO: implement gravity well
