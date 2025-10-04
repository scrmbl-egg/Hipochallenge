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
        color:"red", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.all",fallback:"Global message"}, \
        }, \
    }, \
    { \
        bold:true, \
        color:"white", \
        text:">> ", \
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
