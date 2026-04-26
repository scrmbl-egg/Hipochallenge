#>core_hc:trigger/impl/marksman
#
# Trigger for setting the player's class to marksman.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s marksman matches 0 \
    run \
    scoreboard players enable @s marksman

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                marksman:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                marksman:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s marksman
scoreboard players enable @s marksman

## commands
function hc:class/select/marksman
