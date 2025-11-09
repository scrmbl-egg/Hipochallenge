#>hc:msg/private/send_error/not_in_team_with_abilities
#
# Sends an error message to the player telling them they're not in a team that
# allows the use of the ability they've just tried to use.
#
# @context player

function hc:msg/private/send_error { \
    text:{ \
        translate:"hc.msg.private.error.not_in_team_with_abilities", \
        fallback:"You don't belong in a team that is allowed to use this ability", \
    } \
}
