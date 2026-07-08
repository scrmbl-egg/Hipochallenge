#>hc.core:projectile/class/tank/trident/tick
#
# Tick function for the tank class trident.
#
# @context minecraft:trident

# tick fx
function hc.core:fx/projectile/class/tank/trident/tick

# killing entity actions
execute if entity @s[nbt={DealtDamage:true}] \
    run \
    function hc.core:projectile/class/tank/trident/set_owner_cooldown_and_kill
