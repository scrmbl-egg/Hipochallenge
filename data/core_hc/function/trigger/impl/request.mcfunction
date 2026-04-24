#>core_hc:trigger/impl/request
#
# Trigger for requesting a match

## execution guard
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                request:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                request:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# disable ability to make more requests, and enable cancel trigger for host
scoreboard players reset @a request
scoreboard players enable @s cancel

## commands
function hc:game/match/request
