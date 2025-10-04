#>hc:msg/team/send_error
#
# Prints an error message in a specific team's chat.
#
# @input
#   team: #[team] string
#       Team that will receive the message.
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=$(team)] [ \
    { \
        text:"", \
        color:"red", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.team",fallback:"Team message"} \
        }, \
    }, \
    { \
        bold:true, \
        color:"yellow", \
        text:">> " \
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
