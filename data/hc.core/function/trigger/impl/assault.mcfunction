#>hc.core:trigger/impl/assault
#
# Trigger for setting the player's class to assault.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s assault matches 0 \
    run \
    scoreboard players enable @s assault

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                assault:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                assault:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s assault
scoreboard players enable @s assault

## commands
function hc:class/select/assault
