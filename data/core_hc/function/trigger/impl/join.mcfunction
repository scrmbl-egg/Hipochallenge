#>core_hc:trigger/impl/join
#
# Trigger for accepting a match request.
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
                join:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                join:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset, but don't re-enable
scoreboard players reset @s join

## commands
function hc:game/match/request/join
