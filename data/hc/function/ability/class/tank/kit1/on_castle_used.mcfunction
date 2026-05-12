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

# set up local data
data modify storage hc:temp castle set value { \
    tag_furthest_teammate_args:{ \
        team:"", \
        tag:"__hc.TankKit1CastledEntity", \
    }, \
    swap_args:{ \
        self_pos_x:0.0, \
        self_pos_y:0.0, \
        self_pos_z:0.0, \
        self_yaw:0.0, \
        self_pitch:0.0, \
        other_tag:"__hc.TankKit1CastledEntity", \
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
    out_nbt:"castle.tag_furthest_teammate_args.team", \
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

# tag furthest teammate: "__hc.TankKit1CastledEntity"
function core_hc:ability/tank/kit1/castle/tag_furthest_teammate \
    with storage hc:temp castle.tag_furthest_teammate_args

# decompose transform result in swap_args
data modify storage hc:temp castle.swap_args.other_pos_x \
    set from entity @n[tag=__hc.TankKit1CastledEntity] Pos[0]
data modify storage hc:temp castle.swap_args.other_pos_y \
    set from entity @n[tag=__hc.TankKit1CastledEntity] Pos[1]
data modify storage hc:temp castle.swap_args.other_pos_z \
    set from entity @n[tag=__hc.TankKit1CastledEntity] Pos[2]
data modify storage hc:temp castle.swap_args.other_yaw \
    set from entity @n[tag=__hc.TankKit1CastledEntity] Rotation[0]
data modify storage hc:temp castle.swap_args.other_pitch \
    set from entity @n[tag=__hc.TankKit1CastledEntity] Rotation[1]

# swap
function core_hc:ability/tank/kit1/castle/swap_players \
    with storage hc:temp castle.swap_args

# remove tag from other player/entity
tag @n[tag=__hc.TankKit1CastledEntity] remove __hc.TankKit1CastledEntity

# free memory
data remove storage hc:temp castle
