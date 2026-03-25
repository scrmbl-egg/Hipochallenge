#>core_hc:game/match/try_cancel
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message.
#
# @returns
#   Result: 1 if a match could be cancelled, 0 if there wasn't a match to
#       cancel.

# send warning and return failure if match isn't being played
execute unless predicate hc:game/match/is_being_played \
    run \
    function hc:msg/debug/send_warning { \
        text:{ \
            text:"Attempted to cancel a match when none is being played.", \
        }, \
    }
execute unless predicate hc:game/match/is_being_played \
    run \
    return fail

# end match
function core_hc:game/match/end

# return 1 for success
return 1
