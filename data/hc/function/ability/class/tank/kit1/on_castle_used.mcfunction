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
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.not_belonging_to_team_with_abilities", \
            fallback:"You don't belong in a team that is allowed to use this ability", \
        } \
    }

# silenced guard clause
execute if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send { \
        text:{ \
            color:"red", \
            translate:"hc.msg.private.mechanics.silenced", \
            fallback:"You are silenced!", \
        } \
    }

# set temporary schema
data modify storage hc:temp castle set value { \
    get_uuid_params:{ \
        team:"", \
        out_storage:"hc:temp", \
        out_nbt:"castle.tp.other_uuid", \
    }, \
    tp:{ \
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
function core_hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"castle.get_uuid_params.team", \
}

# get self position and rotation
data modify storage hc:temp castle.tp.self_pos_x set from entity @s Pos[0]
data modify storage hc:temp castle.tp.self_pos_y set from entity @s Pos[1]
data modify storage hc:temp castle.tp.self_pos_z set from entity @s Pos[2]
data modify storage hc:temp castle.tp.self_yaw set from entity @s Rotation[0]
data modify storage hc:temp castle.tp.self_pitch set from entity @s Rotation[1]

# get furthest teammate UUID
function core_hc:ability/tank/kit1/castle/get_furthest_teammate_uuid \
    with storage hc:temp castle.get_uuid_params
#>_
# @out
#   hc:temp castle.tp
#        other_uuid

# get furthest teammate position and rotation
function core_hc:ability/tank/kit1/castle/get_furthest_teammate_transform \
    with storage hc:temp castle.tp
#>_
# @out
#   hc:temp castle.tp
#        other_pos_x
#        other_pos_y
#        other_pos_x
#        other_yaw
#        other_pitch

# swap
function core_hc:ability/tank/kit1/castle/swap_players \
    with storage hc:temp castle.tp

# free memory
data remove storage hc:temp castle
