#>hc:msg/match/send
#
# Prints a message in the chat for all players that are playing or spectating
# the current match.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[predicate=hc:team/is_in_match_team] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",color:"dark_red",bold:true}, \
                {translate:"hc.msg.match",fallback:"Match message"}, \
            ], \
        }, \
    }, \
    {text:">> ",color:"dark_red",bold:true}, \
    $(text), \
]
