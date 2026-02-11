#>core_hc:trigger/impl/ls
#
# Trigger for listing all available user commands / triggers.
#
# @context player

## execution guard
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                ls:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                ls:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s ls
scoreboard players enable @s ls

## commands
# send msg
function hc:msg/debug/send_info { \
    text:[ \
        { \
            text:"Function not implemented yet, sailor!", \
        }, \
    ] \
}
