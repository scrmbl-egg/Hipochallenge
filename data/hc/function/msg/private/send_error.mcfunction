#>hc:msg/private/send_error
#
# Prints an error message in the player's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @s [ \
    { \
        text:"", \
        color:"red", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.private",fallback:"Private message"} \
        }, \
    }, \
    { \
        bold:true, \
        color:"blue", \
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
