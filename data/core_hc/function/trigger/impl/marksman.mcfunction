#>core_hc:trigger/impl/marksman
#
# Trigger for setting the player's class to marksman.
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
                marksman:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                marksman:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

## on triggered commands

function hc:class/select/marksman

# reset and re-enable
scoreboard players reset @a marksman
scoreboard players enable @a marksman
