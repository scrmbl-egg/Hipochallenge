#>hc:game/match/try_cancel
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message.
#
# @input
#   reason: ::java::util::text::Text
#       Text where the reason of the cancellation is stated.

# end match. on failure, just return early
execute unless function core_hc:game/match/end \
    run \
    return run \
    function std:empty

# show title when match was ended
title @a[predicate=hc:team/is_in_match_team] times 0s 3s 0.2s
title @a[predicate=hc:team/is_in_match_team] title ""
title @a[predicate=hc:team/is_in_match_team] subtitle { \
    translate:"hc.match_cancelled", \
    fallback:"Match cancelled", \
    color:"red", \
}

$function hc:msg/all/send { \
    text:[ \
        { \
            translate:"hc.msg.all.match_was_cancelled", \
            fallback:"Match cancelled: %s", \
            color:"red", \
            with:[[{text:"",color:"white"},$(reason)]], \
        }, \
    ], \
}
