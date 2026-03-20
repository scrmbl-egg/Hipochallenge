#>hc:msg/spectators/send
#
# Prints a message in the spectator's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=hc.Spectators] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"gray"}, \
                {translate:"hc.msg.spectators",fallback:"Spectator message"}, \
            ], \
        }, \
    }, \
    {text:">> ",color:"gray",bold:true}, \
    $(text), \
]
