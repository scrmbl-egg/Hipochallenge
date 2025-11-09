#>hc:ability/class/tank/kit3/on_goat_horn_played
#
# Executes all commands when the player uses the tank's kit 3 goat horn.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/tank/kit3/used_goat_horn

function hc:msg/debug/send_info {text:"\"goat horn kit 3 used\""}

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

function hc:msg/debug/send_info {text:"sucessfully used kit3 horn"}
