#>hc:msg/private/send_error/not_in_team_with_armor
#
# Sends an error message to the player telling them they're not in a team that
# is allowed to equip armor.
#
# @context player

function hc:msg/private/send_error { \
    text:{ \
        translate:"hc.msg.private.error.not_in_team_with_armor", \
        fallback:"You don't belong in a team that is allowed to equip armor", \
    } \
}
