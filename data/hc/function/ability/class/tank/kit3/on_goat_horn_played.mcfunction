#>hc:ability/class/tank/kit3/on_goat_horn_played
#
# Executes all commands when the player uses the tank's kit 3 goat horn.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/tank/kit3/used_goat_horn

# team with no abilities guard clause
execute as @s unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.not_belonging_to_team_with_abilities", \
            fallback:"You don't belong in a team that is allowed to use this ability", \
        } \
    }

# silenced guard clause
execute as @s if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send {\
        text:{ \
            color:"red", \
            translate:"hc.msg.private.mechanics.silenced", \
            fallback:"You are silenced!", \
        } \
    }

function hc:msg/debug/send_info {text:"sucessfully used kit3 horn"}
