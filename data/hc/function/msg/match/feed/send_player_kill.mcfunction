#>hc:msg/match/feed/send_player_kill
#
# Prints a message in the chat for when a player is killed by another during a
# match.
#
# @input
#   attacker_uuid: #[uuid] int[] @ 4
#       UUID of the player that killed another player.
#   victim_uuid: #[uuid] int[] @ 4
#       UUID of the player that was killed by another player.

$function hc:msg/match/send { \
    text:{ \
        translate:"hc.msg.match.player_killed_player", \
        fallback:"%1$s has killed %2$s", \
        with:[ \
            {selector:"@p[nbt={UUID:$(attacker_uuid)}]"}, \
            {selector:"@p[nbt={UUID:$(victim_uuid)}]"}, \
        ], \
    }, \
}
