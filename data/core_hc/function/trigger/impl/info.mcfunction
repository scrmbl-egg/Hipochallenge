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

# don't run anything if it's 0 or uninitialized
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
# TODO: this should probably go into the dialog/ directory instead of in-lined
# in a function, but minecraft makes me restart the whole server if I want to
# slightly update it, so it stays here for now
dialog show @s { \
    type:"minecraft:notice", \
    title:{ \
        translate:"hc.trigger.info.dialog.title", \
        fallback:"Information", \
    }, \
    body:{ \
        type:"minecraft:plain_message", \
        width:400, \
        contents:[ \
            { \
                translate:"hc.trigger.info.dialog.body", \
                fallback:"NOT TRANSLATED! args: %1$s", \
                with:[ \
                    "Hipochallenge: Phoenix", \
                ], \
            }, \
        ], \
    }, \
    can_close_with_escape:true, \
    pause:true, \
}

# TODO: Remember to use fallback text from en_US.json from the resource pack
