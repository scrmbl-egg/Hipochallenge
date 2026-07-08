#>hc.core:trigger/impl/cd_item
#
# Trigger for enabling or disabling item cooldown (training mode only).
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s cd_item matches 0 \
    run \
    scoreboard players enable @s cd_item

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                cd_item:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                cd_item:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s cd_item
scoreboard players enable @s cd_item

## commands
function hc:msg/debug/send_warning { \
    text:"\"Trigger not yet implemented, sailor!\"", \
}
