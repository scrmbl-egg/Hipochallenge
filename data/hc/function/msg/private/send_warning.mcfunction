#>hc:msg/private/send_warning
#
# Prints a warning message in the player's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @s [ \
    { \
        text:"", \
        color:"gold", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.private",fallback:"Private message"}, \
        }, \
    }, \
    { \
        bold:true, \
        color:"green", \
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
