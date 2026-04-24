#>hc:msg/debug/send_error
#
# Prints an error message in the debug chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[tag=hc.Debug] [ \
    {text:"",color:"red",italic:true}, \
    { \
        text:">> ", \
        color:"green", \
        italic:false, \
        bold:true, \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"green"}, \
                {translate:"hc.msg.debug",fallback:"Debug"}, \
            ], \
        }, \
    }, \
    {text:"[",bold:true,italic:false}, \
    {translate:"hc.msg.error",fallback:"ERROR",bold:true,italic:false}, \
    {text:"] ",bold:true,italic:false}, \
    $(text), \
]
