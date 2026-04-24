#>hc:msg/debug/send_info
#
# Prints an information message in the debug chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[tag=hc.Debug] [ \
    {text:"",color:"gray",italic:true}, \
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
    {translate:"hc.msg.info",fallback:"INFO",bold:true,italic:false}, \
    {text:"] ",bold:true,italic:false}, \
    $(text), \
]
