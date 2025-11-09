#>hc:ability/class/tank/kit3/on_bubble_shield_used
#
# Executes all commands when the player uses the bubble shield ability.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/tank/kit3/used_bubble_shield

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

function hc:msg/debug/send_info { \
    text:"\"successfully placed bubble shield\"", \
}
