#>core_hc:ability/tank/kit1/castle/get_furthest_teammate_uuid
#
# Gets the furthest teammate's UUID.
#
# @input
#   team: #[team] string
#       Team of the teammate whose UUID is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.
# @writes
#   hc:temp castle.tp.other_uuid

$execute as @a[limit=1,sort=furthest,team=$(team),tag=!hc.Dead] \
    run \
    data modify storage hc:temp castle.tp.other_uuid set from entity @s UUID
