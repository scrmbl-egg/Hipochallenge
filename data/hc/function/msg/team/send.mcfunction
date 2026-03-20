#>hc:msg/team/send
#
# Prints a message in a specific team's chat.
#
# @input
#   team: #[team] string
#       Team that will receive the message.
#   text: ::java::util::text::Text
#       Text component that will be printed.

$tellraw @a[team=$(team)] [ \
    { \
        text:"", \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"yellow"}, \
                {translate:"hc.msg.team",fallback:"Team message"}, \
            ], \
        }, \
    }, \
    {text:">> ",color:"yellow",bold:true}, \
    $(text), \
]
