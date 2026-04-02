#>core_hc:ability/tank/kit1/castle/get_furthest_teammate_transform
#
# Gets the furthest teammate's position and rotation.
#
# @input
#   other_uuid: #[uuid] int[] @ 4
#       UUID of the detected teammate, whose data is going to be obtained.
# @writes
#   hc:temp castle.tp
#       other_pos_x
#       other_pos_y
#       other_pos_z
#       other_yaw
#       other_pitch

# get position and rotation arrays

## NOTE:
# This way we only evaluate the UUID twice instead of five times, one for every
# component
$execute as @n[nbt={UUID:$(other_uuid)}] \
    run \
    data modify storage hc:temp castle.other_data.pos \
    set from entity @s Pos
$execute as @n[nbt={UUID:$(other_uuid)}] \
    run \
    data modify storage hc:temp castle.other_data.rot \
    set from entity @s Rotation

# unpack position
data modify storage hc:temp castle.tp.other_pos_x \
    set from storage hc:temp castle.other_data.pos[0]
data modify storage hc:temp castle.tp.other_pos_y \
    set from storage hc:temp castle.other_data.pos[1]
data modify storage hc:temp castle.tp.other_pos_z \
    set from storage hc:temp castle.other_data.pos[2]

# unpack rotation
data modify storage hc:temp castle.tp.other_yaw \
    set from storage hc:temp castle.other_data.rot[0]
data modify storage hc:temp castle.tp.other_pitch \
    set from storage hc:temp castle.other_data.rot[1]

# free memory
data remove storage hc:temp castle.other_data
