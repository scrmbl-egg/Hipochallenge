#>hc:msg/private/send_error
#
# Prints an error message in the player's chat.
#
# @context player
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @s [ \
    { \
        text:"", \
        color:"red", \
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
    {translate:"hc.msg.error",fallback:"ERROR",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
