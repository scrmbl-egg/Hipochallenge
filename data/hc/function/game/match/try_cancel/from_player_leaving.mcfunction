#>hc:game/match/try_cancel/from_player_leaving
#
# Ends a match prematurely, freeing all resources. Announces a player left the
# server, and thus the match can't continue.

function hc:game/match/try_cancel { \
    reason:{ \
        translate:"hc.match_cancelled.player_left_match", \
        fallback:"A player left the game and the match can't continue", \
    }, \
}
