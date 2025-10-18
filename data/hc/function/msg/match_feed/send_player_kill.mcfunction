#>hc:msg/send_player_kill
#
# Prints a message in the chat for when a player is killed by another during a
# match.
#
# @input
#   attacker_uuid: #[uuid] int[] @ 4
#       UUID of the player that killed another player.
#   victim_uuid: #[uuid] int[] @ 4
#       UUID of the player that was killed by another player.

$tellraw @a[predicate=hc:team/is_in_match_team] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                { \
                    bold:true, \
                    color:"dark_red", \
                    text:">> ", \
                }, \
                { \
                    translate:"hc.msg.match_feed", \
                    fallback:"Match feed", \
                }, \
            ], \
        }, \
    }, \
    { \
        bold:true, \
        color:"dark_red", \
        text:">> " \
    }, \
    { \
        translate:"hc.msg.match_feed.player_killed_player", \
        fallback:"%1$s has killed %2$s", \
        with:[ \
            {selector:"@p[nbt={UUID:$(attacker_uuid)}]"}, \
            {selector:"@p[nbt={UUID:$(victim_uuid)}]"}, \
        ], \
    }, \
]
