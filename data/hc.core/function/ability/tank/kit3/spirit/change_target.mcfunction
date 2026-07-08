#>hc.core:ability/tank/kit3/spirit/change_target
#
# Changes the target of all spirits whose owner UUID matches the provided owner_uuid
# to the player executing this function to the player whose UUID is target_uuid.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the player who owns the spirit(s) to update
#   target_uuid: #[uuid] int[] @ 4
#       UUID of the new target player

$execute as @e[ \
    type=minecraft:allay, \
    tag=hc.TankKit3Spirit, \
    nbt={ \
        data:{ \
            "hc:entity/spirit":{ \
                owner_uuid:$(owner_uuid), \
            }, \
        }, \
    } \
] \
    run \
    data modify entity @s data."hc:entity/spirit".target_uuid \
    set value $(target_uuid)
