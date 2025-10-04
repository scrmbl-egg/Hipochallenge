#>hc:msg/debug/send_error
#
# Prints an error message in the debug chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[tag=hc.Debug] [ \
    { \
        text:"", \
        color:"red", \
        italic:true, \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.debug",fallback:"Debug"}, \
        }, \
    }, \
    { \
        bold:true, \
        italic:false, \
        color:"green", \
        text:">> ", \
    }, \
    { \
        bold:true, \
        italic:false, \
        text:"[", \
    }, \
    { \
        bold:true, \
        italic:false, \
        translate:"hc.msg.error", \
        fallback:"ERROR", \
    }, \
    { \
        bold:true, \
        italic:false, \
        text:"] ", \
    }, \
    $(text), \
]
