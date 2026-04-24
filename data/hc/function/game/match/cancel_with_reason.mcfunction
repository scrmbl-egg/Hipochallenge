#>hc:game/match/cancel_with_reason
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message.
#
# @input
#   reason: ::java::util::text::Text
#       Text where the reason of the cancellation is stated.

# if match was cancelled, send reason message
$execute if function hc:game/match/cancel \
    run \
    function hc:msg/all/send { \
        text:[ \
            { \
                translate:"hc.msg.all.match_was_cancelled", \
                fallback:"Match cancelled: %s", \
                color:"red", \
                with:[[{text:"",color:"white"},$(reason)]], \
            }, \
        ], \
    }
