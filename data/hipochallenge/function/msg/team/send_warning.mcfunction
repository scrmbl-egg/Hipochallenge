#>hipochallenge:msg/team/send_warning
#
# Prints a warning message in a specific team's chat.
#
# @input
#   team: #[team] string
#       Team that will receive the message.
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=$(team)] [ \
    { \
        text:"", \
        color:"gold", \
        hover_event:{ \
            action:"show_text",\
            value:{translate:"hc.msg.team",fallback:"Team message"}, \
        }, \
    }, \
    { \
        bold:true, \
        color:"yellow", \
        text:">> ", \
    }, \
    { \
        bold:true, \
        text:"[", \
    }, \
    { \
        bold:true, \
        translate:"hc.msg.warning", \
        fallback:"WARNING", \
    }, \
    { \
        bold:true, \
        text:"] ", \
    }, \
    $(text), \
]
