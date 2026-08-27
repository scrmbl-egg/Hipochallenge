#>hc.core:trigger/impl/k3
#
# Trigger for setting the player's kit to 3.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s k3 matches 0 \
    run \
    scoreboard players enable @s k3

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k3:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k3:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s k3
scoreboard players enable @s k3

## commands
function hc:kit/select/3
