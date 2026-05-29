#>core_hc:projectile/tick
#
# Tick function for all projectiles in the minigame.

# reset bow detection
## HACK?:
# When resetting bow detection, I decided to put it here because it is the most
# logical place to put it in the many procedures the tick function is composed
# of. However, the cost was moving projectile processing AFTER ability
# processing. I don't remember why we had projectiles processed before
# abilities, so I'm putting this note here in case of any issue.
# - scrmbl-egg
execute as @a[scores={hc.BowShot=1..}] \
    run \
    scoreboard players set @s hc.BowShot 0

# tag all vanilla projectiles entities as game projectiles
## NOTE:
# this tag is later used for other entities that may not be projectiles
# themselves, but they MAY REPRESENT projectiles, for example: an invisible
# armor stand with a specified motion that explodes on contact.
tag @e[ \
    type=#hc:vanilla_projectiles, \
    tag=!hc.Projectile \
] \
    add hc.Projectile

# TODO: tag specific armor_stands and markers too

# tank trident
execute as @e[ \
    type=minecraft:trident, \
    nbt={ \
        item:{ \
            components:{ \
                "minecraft:custom_data":{"hc:item/id":"hc:tank/kit2/trident"}, \
            }, \
        }, \
    } \
] \
    at @s \
    run \
    function core_hc:projectile/class/tank/trident/tick


# marksman kit 2 arrows remove gravity
## NOTE:
# the NoGravity property, instead of being false, it's unset, so instead of
# checking for NoGravity being false, it's necessary to check if it's not
# present
execute as @e[ \
    type=minecraft:arrow, \
    nbt={ \
        weapon:{ \
            components:{ \
                "minecraft:custom_data":{ \
                    "hc:item/id":"hc:marksman/kit2/crossbow", \
                }, \
            }, \
        }, \
    }, \
    nbt=!{NoGravity:true} \
] \
    run \
    function core_hc:projectile/set_no_gravity

# recon flare arrows tick call
execute as @e[ \
    type=minecraft:spectral_arrow, \
    nbt={ \
        weapon:{ \
            components:{ \
                "minecraft:custom_data":{ \
                    "hc:item/id":"recon_k2_flare_arrow_crossbow", \
                }, \
            }, \
        }, \
    } \
] \
    run \
    function core_hc:projectile/class/recon/flare_arrow/tick

# call tick function for any custom projectile implementation
function #extension_hc:projectile/tick

## __ KEEP AT BOTTOM OF FILE __
# clean all projectiles that have no lifetime left
execute as @e[ \
    type=#hc:game_projectiles, \
    tag=hc.Projectile, \
    scores={hc.LifeTimer=..0} \
] \
    at @s \
    run \
    function std:entity/kill_self_and_passengers

# clean all arrows that that have landed
execute as @e[ \
    type=#minecraft:arrows, \
    tag=hc.Projectile, \
    nbt={shake:1b} \
] \
    at @s \
    run \
    function core_hc:projectile/arrow/clean
