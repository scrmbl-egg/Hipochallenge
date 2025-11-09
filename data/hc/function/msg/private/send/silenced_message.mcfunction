#>hc:msg/private/send/silenced_message
#
# Sends a message to the player telling them they are silenced.
#
# @context player

function hc:msg/private/send { \
    text:{ \
        translate:"hc.msg.private.mechanics.silenced", \
        fallback:"You are silenced!", \
    } \
}
