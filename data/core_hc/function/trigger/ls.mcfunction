#>core_hc:trigger/ls
#
# Trigger for listing all available user commands / triggers.
#
# @context player

# TODO: implement function!
# TODO: detect if triggers can be used through predicates

# send msg
function hc:msg/debug/send_info { \
    text:[ \
        { \
            text:"Function not implemented yet, sailor!", \
        }, \
    ] \
}

# reset and re-enable
scoreboard players reset @s ls
scoreboard players enable @s ls
