#>hc:msg/all/send_error
#
# Prints an error message in the chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a [ \
    {text:"",color:"red"}, \
    { \
        text:">> ", \
        color:"white", \
        bold:true, \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"white"}, \
                {translate:"hc.msg.all",fallback:"Global message"}, \
            ], \
        }, \
    }, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.error",fallback:"ERROR",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
