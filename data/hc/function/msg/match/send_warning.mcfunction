#>hc:msg/match/send_warning
#
# Prints a warning message in the chat for all players that are playing or
# spectating the current match.

$tellraw @a[predicate=hc:team/is_in_match_team] [ \
    {text:"",color:"gold"}, \
    { \
        text:">> ", \
        color:"dark_red", \
        bold:true, \
        hover_event:{ \
            action:"show_text",\
            value:[ \
                "", \
                {text:">> ",bold:true,color:"dark_red"}, \
                {translate:"hc.msg.match",fallback:"Match message"}, \
            ], \
        }, \
    }, \
    {text:"[",bold:true}, \
    {translate:"hc.msg.warning",fallback:"WARNING",bold:true}, \
    {text:"] ",bold:true}, \
    $(text), \
]
