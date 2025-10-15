#>core_hc:trigger/ls
#
# Trigger for listing all available user commands / triggers.
#
# @context player

# TODO: implement function!
# TODO: detect if triggers can be used through predicates

# ls is always available, no check necessary
data modify storage hc:temp ls.text append value { \
    text:"Function not implemented yet, sailor!", \
}

# send msg
function hc:msg/private/send with storage hc:temp ls

# reset and re-enable
scoreboard players reset @s ls
scoreboard players enable @s ls
