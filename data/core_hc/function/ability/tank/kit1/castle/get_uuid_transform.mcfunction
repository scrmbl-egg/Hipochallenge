#>core_hc:ability/tank/kit1/castle/get_uuid_transform
#
# Gets the furthest teammate's position and rotation from his UUID.
#
# @input
#   uuid: #[uuid] int[] @ 4
#       UUID of the detected teammate, whose data is going to be obtained.
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.
# @writes
#   Position and rotation of the specified UUID.

# get position and rotation arrays
## NOTE:
# This way we only evaluate the UUID twice instead of five times, one for every
# component
$execute as @n[nbt={UUID:$(uuid)}] \
    run \
    data modify storage $(out_storage) $(out_nbt).position \
    set from entity @s Pos
$execute as @n[nbt={UUID:$(uuid)}] \
    run \
    data modify storage $(out_storage) $(out_nbt).rotation \
    set from entity @s Rotation
