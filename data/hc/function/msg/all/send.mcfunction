#>hc:msg/all/send
#
# Prints a message in the chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a [ \
    { \
        text:"", \
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
    $(text), \
]
