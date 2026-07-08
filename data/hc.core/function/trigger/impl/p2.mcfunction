#>hc.core:trigger/impl/p2
#
# Trigger for setting the player's perk to 2.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s p2 matches 0 \
    run \
    scoreboard players enable @s p2

# don't run anything if it's 0 or uninitialized
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

# reset and re-enable
scoreboard players reset @s p2
scoreboard players enable @s p2

## commands
function hc:perk/select/2
