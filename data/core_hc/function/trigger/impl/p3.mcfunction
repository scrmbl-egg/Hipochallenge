#>core_hc:trigger/impl/p3
#
# Trigger for setting the player's perk to 3.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s p3 matches 0 \
    run \
    scoreboard players enable @s p3

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                p3:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                p3:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s p3
scoreboard players enable @s p3

## commands
function hc:perk/select/3

