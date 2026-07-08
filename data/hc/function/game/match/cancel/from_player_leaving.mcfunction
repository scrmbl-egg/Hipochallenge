#>hc:game/match/cancel/from_player_leaving
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message, specifying a player left the
# match.

function hc:game/match/cancel_with_reason { \
    reason:{ \
        translate:"hc.match_cancelled.player_left_match", \
        fallback:"A player left the match and it can't continue", \
    }, \
}
