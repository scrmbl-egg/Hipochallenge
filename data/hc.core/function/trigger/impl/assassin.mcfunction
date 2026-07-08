#>hc.core:trigger/impl/assassin
#
# Trigger for setting the player's class to assassin.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s assassin matches 0 \
    run \
    scoreboard players enable @s assassin

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                assassin:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                assassin:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s assassin
scoreboard players enable @s assassin

## commands
function hc:class/select/assassin

