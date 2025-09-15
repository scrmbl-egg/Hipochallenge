#>hipochallenge:msg/send_player_death
#
# Prints a message in the chat for when a player dies during a match.
#
# @input
#   victim_uuid: #[uuid] int[] @ 4
#       UUID of the player that died.

$tellraw @a[predicate=hipochallenge:team/is_in_match_team] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.match_feed",fallback:"Match feed"} \
        }, \
    }, \
    { \
        bold:true, \
        color:"dark_red", \
        text:">> " \
    }, \
    { \
        translate:"hc.msg.match_feed.player_died", \
        fallback:"%s has died", \
        with:[ \
            {selector:"@p[nbt={UUID:$(victim_uuid)}]"}, \
        ], \
    }, \
]
