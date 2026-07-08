#>hc.core:projectile/class/tank/trident/set_owner_cooldown_and_kill
#
# Sets the owner's trident cooldown, kills the trident, and shows fx.
#
# @context minecraft:trident

# set cooldown (origin is Owner, don't set if creative mode)
execute on origin \
    if entity @s[ \
        gamemode=!creative, \
        predicate=hc:trigger/is_projectile_cooldown_enabled \
    ] \
    store result score @s hc.TankKit2TridentCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:tank"}].\
    kits[{id:2}].tank_k2_data.trident.cooldown_ticks

# return asap without setting cooldown if projectile cooldown is disabled
execute on origin \
    if entity @s[ \
        gamemode=!creative, \
        predicate=hc:trigger/is_projectile_cooldown_disabled \
    ] \
    run \
    function hc:ability/tank/kit2/give_trident

# show vanish fx
function hc.core:fx/projectile/class/tank/trident/vanish

# kill entity
function std:entity/kill_self_and_passengers
