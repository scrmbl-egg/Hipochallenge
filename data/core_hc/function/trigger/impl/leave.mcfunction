#>core_hc:trigger/impl/leave
#
# Trigger for leaving a match request.
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
                leave:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                leave:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# the leave trigger is enabled
scoreboard players reset @s leave
scoreboard players enable @s accept

## commands
# play sound
playsound minecraft:ui.stonecutter.take_result ui @s ~ ~1 ~ 0.5 1 0.5

# tag player
tag @s remove hc.WillJoinMatch

# announce to everyone the player will join
function hc:msg/all/send { \
    text:{ \
        translate:"hc.msg.all.player_will_not_join_match", \
        fallback:"%s will not join the match", \
        color:"red", \
        with:[ \
            {selector:"@s"}, \
        ], \
    }, \
}

# send tip for leaving
function hc:msg/private/send { \
    text:{ \
        translate:"hc.msg.private.left_match_request", \
        fallback:"You will not participate in the match. You can type \"%s\" to join again", \
        with:[ \
            { \
                translate:"", \
                fallback:"/trigger %s", \
                color:"gray", \
                with:[{text:"accept",color:"aqua"}], \
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
                    command:"/trigger accept", \
                }, \
            }, \
        ], \
    }, \
}
