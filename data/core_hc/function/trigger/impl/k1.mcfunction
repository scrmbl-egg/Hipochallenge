#>core_hc:trigger/impl/k1
#
# Trigger for setting the player's kit to 1.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s k1 matches 0 \
    run \
    scoreboard players enable @s k1

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k1:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                k1:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s k1
scoreboard players enable @s k1

## commands
function hc:kit/select/1
