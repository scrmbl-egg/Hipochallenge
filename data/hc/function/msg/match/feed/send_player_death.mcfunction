#>hc:msg/match/feed/send_player_death
#
# Prints a message in the chat for when a player dies during a match.
#
# @input
#   victim_uuid: #[uuid] int[] @ 4
#       UUID of the player that died.

$function hc:msg/match/send { \
    text:{ \
        translate:"hc.msg.match.player_died", \
        fallback:"%s has died", \
        with:[{selector:"@p[nbt={UUID:$(victim_uuid)}]"}], \
    }, \
}
