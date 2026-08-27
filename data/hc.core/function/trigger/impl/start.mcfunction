#>hc.core:trigger/impl/start
#
# Trigger for starting the match.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s start matches 0 \
    run \
    scoreboard players enable @s start

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    type:"minecraft:any_of", \
    terms:[ \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                start:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            type:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                start:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset
scoreboard players reset @s start

# commands
function hc:game/match/start
