#>hc:ability/class/tank/kit1/on_castle_used
#
# Executes all commands when the player uses the castle ability.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/tank/kit1/used_castle

# team with no abilities guard clause
execute unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error/not_in_team_with_abilities

# silenced guard clause
execute if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send/silenced_message

# set temporary schema
data modify storage hc:temp castle set value { \
    get_furthest_teammate_uuid_args:{ \
        team:"", \
        out_storage:"hc:temp", \
        out_nbt:"castle.get_uuid_transform_args.uuid", \
    }, \
    get_uuid_transform_args:{ \
        uuid:[I; 0, 0, 0, 0], \
        out_storage:"hc:temp", \
        out_nbt:"castle.get_uuid_transform_result", \
    }, \
    get_uuid_transform_result:{ \
        position:[0, 0, 0], \
        rotation:[0, 0], \
    }, \
    swap_args:{ \
        self_pos_x:0.0, \
        self_pos_y:0.0, \
        self_pos_z:0.0, \
        self_yaw:0.0, \
        self_pitch:0.0, \
        other_uuid:[I; 0, 0, 0, 0], \
        other_pos_x:0.0, \
        other_pos_y:0.0, \
        other_pos_z:0.0, \
        other_yaw:0.0, \
        other_pitch:0.0, \
    }, \
}

# get player team
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"castle.get_furthest_teammate_uuid_args.team", \
}

# get self position and rotation
data modify storage hc:temp castle.swap_args.self_pos_x \
    set from entity @s Pos[0]
data modify storage hc:temp castle.swap_args.self_pos_y \
    set from entity @s Pos[1]
data modify storage hc:temp castle.swap_args.self_pos_z \
    set from entity @s Pos[2]
data modify storage hc:temp castle.swap_args.self_yaw \
    set from entity @s Rotation[0]
data modify storage hc:temp castle.swap_args.self_pitch \
    set from entity @s Rotation[1]

# get furthest teammate UUID
function core_hc:ability/tank/kit1/castle/get_furthest_teammate_uuid \
    with storage hc:temp castle.get_furthest_teammate_uuid_args
#>_
# @out
#   hc:temp castle.get_uuid_transform_args
#       uuid

# copy teammate's uuid in swap_args
data modify storage hc:temp castle.swap_args.other_uuid \
    set from storage hc:temp castle.get_uuid_transform_args.uuid

# get furthest teammate position and rotation
function core_hc:ability/tank/kit1/castle/get_uuid_transform \
    with storage hc:temp castle.get_uuid_transform_args
#>_
# @out
#   hc:temp castle.get_uuid_transform_result
#       position
#       rotation

# decompose transform result in swap_args
data modify storage hc:temp castle.swap_args.other_pos_x \
    set from storage hc:temp castle.get_uuid_transform_result.position[0]
data modify storage hc:temp castle.swap_args.other_pos_y \
    set from storage hc:temp castle.get_uuid_transform_result.position[1]
data modify storage hc:temp castle.swap_args.other_pos_z \
    set from storage hc:temp castle.get_uuid_transform_result.position[2]
data modify storage hc:temp castle.swap_args.other_yaw \
    set from storage hc:temp castle.get_uuid_transform_result.rotation[0]
data modify storage hc:temp castle.swap_args.other_pitch \
    set from storage hc:temp castle.get_uuid_transform_result.rotation[1]

# swap
function core_hc:ability/tank/kit1/castle/swap_players \
    with storage hc:temp castle.swap_args

# free memory
data remove storage hc:temp castle
