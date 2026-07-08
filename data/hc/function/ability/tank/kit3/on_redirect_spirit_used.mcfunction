#>hc:ability/tank/kit3/on_redirect_spirit_used
#
# Executes all commands when the player uses the tank's kit 2 goat horn.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/tank/kit3/used_redirect_spirit

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

# TODO: OUTDATED, remove this!!!!

#function hc:ability/cooldown/handle_item_cd {item_id:tank_k3_redirect_spirit,cd_score:tank_kit3_redirect_spirit_cd}
#tag @s add redirected_spirit
