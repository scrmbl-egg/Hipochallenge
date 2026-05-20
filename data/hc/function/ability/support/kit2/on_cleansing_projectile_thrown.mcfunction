#>hc:ability/support/kit2/on_cleansing_projectile_thrown
#
# Executes all commands when the player throws the support's cleansing
# projectile.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/support/kit2/used_cleansing_projectile

function hc:msg/debug/send_info {text:"\"cleansing projectile thrown\""}

# TODO: implement cleansing projectile
