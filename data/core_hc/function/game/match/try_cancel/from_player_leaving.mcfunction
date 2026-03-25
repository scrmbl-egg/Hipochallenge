#>core_hc:game/match/try_cancel/from_player_leaving
#
# Ends a match prematurely, freeing all resources. Announces a player left the
# server, and thus the match can't continue.

execute unless predicate hc:game/match/is_being_played \
    run \
    return run \
    function std:empty
