#>hc.core:trigger/impl/request
#
# Trigger for requesting a match

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s request matches 0 \
    run \
    scoreboard players enable @s request

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                request:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                request:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

## commands
function hc:game/match/request
