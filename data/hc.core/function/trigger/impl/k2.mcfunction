#>hc.core:trigger/impl/k2
#
# Trigger for setting the player's kit to 2.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s k2 matches 0 \
    run \
    scoreboard players enable @s k2

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k2:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k2:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s k2
scoreboard players enable @s k2

## commands
function hc:kit/select/2
