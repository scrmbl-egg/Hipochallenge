#>core_hc:trigger/impl/accept
#
# Trigger for accepting a match request.
#
# @context player

## execution guard
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                accept:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                accept:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# the leave trigger is enabled
scoreboard players reset @s accept
scoreboard players enable @a leave

## commands
# play sound
playsound minecraft:ui.cartography_table.take_result ui @s ~ ~1 ~ 0.5 1 0.5


# tag player
tag @s add hc.WillJoinMatch

# announce to everyone the player will join
function hc:msg/all/send { \
    text:{ \
        translate:"hc.msg.all.player_will_join_match", \
        fallback:"%s will join the match!", \
        color:"green", \
        with:[ \
            {selector:"@s"}, \
        ], \
    }, \
}

# send tip for leaving
function hc:msg/private/send { \
    text:{ \
        translate:"hc.msg.private.match_request_accepted", \
        fallback:"You accepted the match request. Type \"%s\" to leave.", \
        with:[ \
            { \
                translate:"", \
                fallback:"/trigger %s", \
                color:"gray", \
                with:[{text:"leave",color:"aqua"}], \
                hover_event:{ \
                    action:"show_text", \
                    value:[ \
                        { \
                            translate:"hc.key_hint", \
                            fallback:"[%1$s]: %2$s", \
                            bold:true, \
                            with:[ \
                                { \
                                    translate:"key.mouse.left", \
                                    fallback:"Left Button", \
                                }, \
                                { \
                                    translate:"multiplayer.confirm_command.suggest_command", \
                                    fallback:"Copy to Chat Screen", \
                                    color:"white", \
                                    bold:false, \
                                }, \
                            ], \
                            color:"gold", \
                        }, \
                    ], \
                }, \
                click_event:{ \
                    action:"suggest_command", \
                    command:"/trigger leave", \
                }, \
            }, \
        ], \
    }, \
}
