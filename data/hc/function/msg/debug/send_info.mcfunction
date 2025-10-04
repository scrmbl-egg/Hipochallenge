#>hc:msg/debug/send_info
#
# Prints an information message in the debug chat.
#
# @input
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[tag=hc.Debug] [ \
    { \
        text:"", \
        color:"gray", \
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
        translate:"hc.msg.info", \
        fallback:"INFO", \
    }, \
    { \
        bold:true, \
        italic:false, \
        text:"] ", \
    }, \
    $(text), \
]
