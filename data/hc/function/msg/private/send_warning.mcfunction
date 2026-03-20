#>hc:msg/private/send_warning
#
# Prints a warning message in the player's chat.
#
# @context player
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @s [ \
    { \
        text:"", \
        color:"gold", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"blue"}, \
                {translate:"hc.msg.private",fallback:"Private message"}, \
            ], \
        }, \
    }, \
    {text:">> ",color:"blue",bold:true}, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.warning",fallback:"WARNING",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
