#>hc:game/match/cancel
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message.
#
# @returns
#   Result: 0 if no match was cancelled, 1 if it was successfully cancelled.

# end match. on failure, just return early
execute unless function hc.core:game/match/end \
    run \
    return fail

# show title when match was ended
title @a[predicate=hc:team/is_in_match_team] times 0s 3s 0.2s
title @a[predicate=hc:team/is_in_match_team] title ""
title @a[predicate=hc:team/is_in_match_team] subtitle { \
    translate:"hc.match_cancelled", \
    fallback:"Match cancelled", \
    color:"red", \
}

# return 1 for success
return 1
