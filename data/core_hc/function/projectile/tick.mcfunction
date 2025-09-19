#>core_hc:projectile/tick
#
# Tick function for all projectiles in the minigame.

# tag all vanilla projectiles entities as game projectiles
## NOTE:
# this tag is later used for other entities that may not be projectiles
# themselves, but they MAY REPRESENT projectiles, for example: an invisible
# armor stand with a specified motion that explodes on contact.
tag @e[ \
    type=#hipochallenge:vanilla_projectiles, \
    tag=!hc.Projectile \
] \
    add hc.Projectile

# TODO: tag specific armor_stands and markers too

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
                        "hc:item_id":"marksman_k2_crossbow", \
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
                        "hc:item_id":"recon_k2_flare_arrow_crossbow", \
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
# clean all arrows
execute as @e[type=#minecraft:arrows,nbt={shake:1b}] at @s \
    run \
    function core_hc:projectile/arrow/clean
