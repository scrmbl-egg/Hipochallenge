#>hc:ability/support/kit2/on_slowness_trap_placed
#
# Executes all commands when the player uses the support's slowness trap.
#
# @context player

# TODO: rename this item to poisonous_trap

# revoke detection advancement
advancement revoke @s only core_hc:class/support/kit2/used_slowness_trap

function hc:msg/debug/send_info {text:"slowness trap placed"}

# TODO: implement slowness trap
