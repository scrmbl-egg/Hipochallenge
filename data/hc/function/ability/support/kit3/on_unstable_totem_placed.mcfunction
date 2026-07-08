#>hc:ability/support/kit3/on_unstable_totem_placed
#
# Executes all commands when the player places the support's unstable totem.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/support/kit3/used_unstable_totem

function hc:msg/debug/send_info {text:"\"unstable totem placed\""}
