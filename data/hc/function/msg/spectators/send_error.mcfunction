#>hc:msg/spectators/send_error
#
# Prints an error message in the spectator's chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=hc.Spectators] [ \
    {text:"",color:"red"}, \
    { \
        text:">> ", \
        color:"gray", \
        bold:true, \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"gray"}, \
                {translate:"hc.msg.spectators",fallback:"Spectator message"}, \
            ], \
        }, \
    }, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.error",fallback:"ERROR",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
