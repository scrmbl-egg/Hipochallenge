#>hipochallenge:msg/spectators/send
#
# Prints a message in the spectator's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=spectators] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.spectators",fallback:"Spectator message"} \
        }, \
    }, \
    { \
        bold:true, \
        color:"gray", \
        text:">> " \
    }, \
    $(text), \
]
