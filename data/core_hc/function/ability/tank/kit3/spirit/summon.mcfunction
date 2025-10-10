#>core_hc:ability/tank/kit3/spirit/summon
#
# Summons a spirit for the player executing this function, taking the player's
# data as reference.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the spirit's owner.

$summon minecraft:allay ~ ~ ~ { \
    NoGravity:true, \
    Silent:true, \
    Invulnerable:true, \
    Team:"hc.NoCollisionEntity", \
    PersistenceRequired:true, \
    NoAI:true, \
    CanPickUpLoot:false, \
    Tags:["hc.TankKit3Spirit","hc.KillOnRoundEnd"], \
    data:{ \
        "hc:entity/spirit":{ \
            owner_uuid:$(owner_uuid), \
            target_uuid:$(owner_uuid), \
            goal_uuid:[I; 0, 0, 0, 0], \
        }, \
    }, \
    Passengers:[ \
        { \
            id:"minecraft:interaction", \
            width:0.45f,\
            height:-0.75f,\
        }, \
        { \
            id:"minecraft:interaction", \
            width:0.45f,\
            height:0.15f,\
        }, \
    ], \
}
## NOTE:
# - first spirit/allay target is always the owner.
# - an interaction passenger is necessary to prevent removing or putting items
#   in the allay's hand
