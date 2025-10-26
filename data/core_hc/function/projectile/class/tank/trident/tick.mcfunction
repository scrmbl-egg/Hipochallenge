#>core_hc:projectile/class/tank/trident/tick
#
# Tick function for the tank class trident.
#
# @context minecraft:trident

# tick fx
function core_hc:fx/projectile/class/tank/trident/tick

# killing entity actions
execute if entity @s[nbt={DealtDamage:true}] \
    run \
    function core_hc:projectile/class/tank/trident/set_owner_cooldown_and_kill
