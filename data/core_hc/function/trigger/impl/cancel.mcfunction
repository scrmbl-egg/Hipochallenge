#>core_hc:trigger/impl/cancel
#
# Trigger for cancelling a match request.
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
                cancel:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                cancel:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset trigger and allow requests again
scoreboard players reset @s cancel
scoreboard players enable @a request

## commands
function hc:game/match/request/cancel

