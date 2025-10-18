#>hc:msg/private/send
#
# Prints a message in the player's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @s [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                { \
                    bold:true, \
                    color:"blue", \
                    text:">> ", \
                }, \
                { \
                    translate:"hc.msg.private", \
                    fallback:"Private message", \
                }, \
            ], \
        }, \
    }, \
    { \
        bold:true, \
        color:"blue", \
        text:">> " \
    }, \
    $(text), \
]
