#>core_hc:trigger/impl/recon
#
# Trigger for setting the player's class to recon.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s recon matches 0 \
    run \
    scoreboard players enable @s recon

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                recon:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                recon:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s recon
scoreboard players enable @s recon

## commands
function hc:class/select/recon
