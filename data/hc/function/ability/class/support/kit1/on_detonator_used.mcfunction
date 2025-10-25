#>hc:ability/class/support/kit1/on_detonator_used
#
# Executes all commands when the player uses the detonator.
#
# @context player

# revoke detection advancement
advancement revoke @s only core_hc:class/support/kit1/used_detonator

function hc:msg/debug/send_info {text:"\"used levitation bomb detonator\""}

# TODO: implement levitation bomb detonator
