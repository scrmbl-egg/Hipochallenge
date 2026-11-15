#>hc.core:trigger/impl/join
#
# Trigger for accepting a match request.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s join matches 0 \
    run \
    scoreboard players enable @s join

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                join:{min:"std:types/int/min",max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                join:{min:1,max:"std:types/int/max"}, \
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
