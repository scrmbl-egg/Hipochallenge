#>core_hc:game/match/try_cancel/from_team1_surrender
#
# Ends a match prematurely, freeing all resources. Announces the second team
# as the winners of the match.

# send warning if there is no match to cancel
execute unless function core_hc:game/match/try_cancel \
    run \
    return run \
    function std:empty

function hc:msg/all/send { \
    text:{ \
        translate:"", \
        fallback:"%s surrendered. Match cancelled.", \
        with:[], \
    }, \
}

# free memory
