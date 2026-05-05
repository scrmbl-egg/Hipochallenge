#>core_hc:trigger/impl/tank
#
# Trigger for setting the player's class to tank.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s tank matches 0 \
    run \
    scoreboard players enable @s tank

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                tank:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                tank:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s tank
scoreboard players enable @s tank

## commands
function hc:class/select/tank
