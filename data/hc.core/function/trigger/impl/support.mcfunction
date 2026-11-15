#>hc.core:trigger/impl/support
#
# Trigger for setting the player's class to support.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s support matches 0 \
    run \
    scoreboard players enable @s support

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                support:{min:"std:types/int/min",max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                support:{min:1,max:"std:types/int/max"}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s support
scoreboard players enable @s support

## commands
function hc:class/select/support
