advancement revoke @s \
    only core_hc:class/tank/kit1/used_goat_horn

function hipochallenge:msg/debug/send_info {text:"used kit1 horn"}

# team with no abilities guard clause
execute as @s unless predicate hipochallenge:team/is_in_pvp_team run \
    return run \
    function hipochallenge:msg/private/send_error \
    {text: \
        { \
            translate:"hc.msg.private.error.not_belonging_to_team_with_abilities", \
            fallback:"You don't belong in a team that is allowed to use this ability", \
        } \
    }

# silenced guard clause
execute as @s if predicate hipochallenge:mechanic/is_silenced run \
    return run function hipochallenge:msg/private/send \
    {text: \
        { \
            color:"red", \
            translate:"hc.msg.private.mechanics.silenced", \
            fallback:"You are silenced!", \
        } \
    }

# no cooldown, item must be deleted due to it being a goat horn
# score: tank_kit1_goat_horn_cd
clear @s *[custom_data={item_id:tank_k1_goat_horn}] 1

# get team
function core_hc:team/get_self_team { \
    out_storage:"minecraft:hipochallenge", \
    out_nbt:"local_give_buffs_params.team", \
}
# gives ownership of:
    # local_self_team

# give buffs to team
# in:
    # local_self_team
function hipochallenge:abilities/class/tank/kit1/goat_horn/give_buffs_st with storage minecraft:hipochallenge

# vfx
execute at @s \
    run \
    function hipochallenge:vfx/abilities/class/tank/kit1/goat_horn_use

# free memory and remove tags
data remove storage minecraft:hipochallenge local_self_team
