#>hc:ability/class/assassin/kit2/on_stun_mechanism_triggered
#
# Executes all commands when the player uses the stun mechanism.

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/assassin/kit2/used_stun_mechanism

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

# setup temporary schema
data modify storage hc:temp stun_mechanism set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
    team:"", \
    radius:0, \
}

# get owner uuid
data modify storage hc:temp stun_mechanism.owner_uuid set from entity @s UUID

# get enemy team
function core_hc:team/get_enemy_team { \
    out_storage:"hc:temp", \
    out_nbt:"stun_mechanism.team", \
}

# get radius
data modify storage hc:temp stun_mechanism.radius \
    set from storage hc:main \
    consts.classes[{internal_name:"assassin"}].\
    kits[{id:2}].assassin_k2_data.stun_mechanism.radius

# give effects to targets
function core_hc:ability/assassin/kit2/stun_mechanism/give_effects \
    with storage hc:temp stun_mechanism

# show fx
function core_hc:fx/ability/assassin/kit2/stun_mechanism_used \
    with storage hc:temp stun_mechanism

# free memory
data remove storage hc:temp stun_mechanism
