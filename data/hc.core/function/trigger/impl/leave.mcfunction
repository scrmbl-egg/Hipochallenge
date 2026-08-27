#>hc.core:trigger/impl/leave
#
# Trigger for leaving a match request.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s leave matches 0 \
    run \
    scoreboard players enable @s leave

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                leave:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                leave:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset, but don't re-enable
scoreboard players reset @s leave

## commands
function hc:game/match/request/leave
