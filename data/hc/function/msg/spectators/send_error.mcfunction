#>hc:msg/spectators/send_error
#
# Prints an error message in the spectator's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=hc.Spectators] [ \
    { \
        text:"", \
        color:"red", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                { \
                    bold:true, \
                    color:"gray", \
                    text:">> ", \
                }, \
                { \
                    translate:"hc.msg.spectators", \
                    fallback:"Spectator message", \
                }, \
            ], \
        }, \
    }, \
    { \
        bold:true, \
        color:"gray", \
        text:">> " \
    }, \
    { \
        bold:true, \
        text:"[", \
    }, \
    { \
        bold:true, \
        translate:"hc.msg.error", \
        fallback:"ERROR", \
    }, \
    { \
        bold:true, \
        text:"] ", \
    }, \
    $(text), \
]
