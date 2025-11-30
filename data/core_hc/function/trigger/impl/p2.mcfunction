#>core_hc:trigger/impl/p2
#
# Trigger for setting the player's perk to 2.
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
                p2:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                p2:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

## on triggered commands

function hc:perk/select/2

# reset and re-enable
scoreboard players reset @a p2
scoreboard players enable @a p2
