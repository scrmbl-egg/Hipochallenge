#>core_hc:trigger/impl/support
#
# Trigger for setting the player's class to support.
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
                support:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                support:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

## on triggered commands

function hc:class/select/support

# reset and re-enable
scoreboard players reset @a support
scoreboard players enable @a support
