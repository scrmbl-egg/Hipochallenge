#>hc:msg/all/send_warning
#
# Prints a warning message in the chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a [ \
    { \
        text:"", \
        color:"gold", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"white"}, \
                {translate:"hc.msg.all",fallback:"Global message"}, \
            ], \
        }, \
    }, \
    {text:">> ",color:"white",bold:true}, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.warning",fallback:"WARNING",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
