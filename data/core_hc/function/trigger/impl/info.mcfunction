#>core_hc:trigger/impl/info
#
# Trigger for displaying information dialog for guiding new players.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s info matches 0 \
    run \
    scoreboard players enable @s info

# don't run anything if it's 0 or uninitialised
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                info:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                info:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s info
scoreboard players enable @s info

## commands
# show dialog
#dialog show @s core_hc:info
dialog show @s { \
    type:"minecraft:notice", \
    title:{ \
        translate:"hc.trigger.info.dialog.title", \
        fallback:"Information", \
    }, \
    body:{ \
        type:"minecraft:plain_message", \
        contents:[ \
            {text:"Information body here"}, \
        ], \
    }, \
    can_close_with_escape:true, \
    pause:true, \
}
