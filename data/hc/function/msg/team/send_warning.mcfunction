#>hc:msg/team/send_warning
#
# Prints a warning message in a specific team's chat.
#
# @input
#   team: #[team] string
#       Team that will receive the message.
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=$(team)] [ \
    {text:"",color:"gold"}, \
    { \
        text:">> ", \
        color:"yellow", \
        bold:true, \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"yellow"}, \
                {translate:"hc.msg.team",fallback:"Team message"}, \
            ], \
        }, \
    }, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.warning",fallback:"WARNING",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
