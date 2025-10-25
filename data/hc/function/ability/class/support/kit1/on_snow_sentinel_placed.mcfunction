#>hc:ability/class/support/kit1/on_snow_sentinel_placed
#
# Executes all commands when the player placed the support's snow sentinel.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/support/kit1/used_snow_sentinel

function hc:msg/debug/send_info {text:"\"snow sentinel placed\""}

# TODO: implement snow sentinel
