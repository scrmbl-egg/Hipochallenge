advancement revoke @s \
    only core_hc:class/tank/kit3/used_redirect_spirit

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
execute as @s if predicate hipochallenge:mechanics/is_silenced run \
    return run function hipochallenge:msg/private/send \
    {text: \
        { \
            color:"red", \
            translate:"hc.msg.private.mechanics.silenced", \
            fallback:"You are silenced!", \
        } \
    }

function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k3_redirect_spirit,cd_score:tank_kit3_redirect_spirit_cd}

# see: \spirit\main
tag @s add redirected_spirit
