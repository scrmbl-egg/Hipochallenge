#>core_hc:trigger/impl/list
#
# Trigger for listing all available user commands / triggers.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s list matches 0 \
    run \
    scoreboard players enable @s list

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                list:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                list:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s list
scoreboard players enable @s list

## commands
function core_hc:trigger/print_available
