#>hc:game/match/request
#
# Requests a match for the currently selected mode.
#
# @context player
# @returns
#   Result: 0 when match couldn't be requested, 1 when the match is successfully
#       requested.

## check if match is being played and fail if one is being played
execute if predicate hc:game/match/is_being_played \
    run \
    return run \
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.cannot_request_match_when_match_is_being_played", \
            fallback:"A match can't be requested because a match is already being played", \
        }, \
    }
execute if data storage hc:main vars.game_context.match_requested \
    run \
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.cannot_request_match_when_match_is_being_requested", \
            fallback:"A match can't be requested because a match is already being requested", \
        }, \
    }

# add match host tag to player (and also the will join match tag)
tag @s add hc.MatchHost
tag @s add hc.WillJoinMatch

# init match request logic (this also handles the display)
function core_hc:game/match/request/init

# play sound
# TODO: play a notification sound
