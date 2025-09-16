#>hipochallenge:msg/spectators/send_warning
#
# Prints a warning message in the spectator's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=hc.Spectators] [ \
    { \
        text:"", \
        color:"gold", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.spectators",fallback:"Spectator message"}, \
        }, \
    }, \
    { \
        bold:true, \
        color:"gray", \
        text:">> ", \
    }, \
    { \
        bold:true, \
        text:"[", \
    }, \
    { \
        bold:true, \
        translate:"hc.msg.warning", \
        fallback:"WARNING", \
    }, \
    { \
        bold:true, \
        text:"] ", \
    }, \
    $(text), \
]
