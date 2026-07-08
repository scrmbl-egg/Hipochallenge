#>hc:game/match/request/join
#
# Makes a player join the match request.
#
# @context player

# tag player as a joining player
tag @s add hc.WillJoinMatch

# enable `leave` trigger
scoreboard players enable @s leave

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
        translate:"hc.msg.private.player_will_join_match", \
        fallback:"You will join the match. Type \"%s\" to leave", \
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

# play sound
playsound minecraft:ui.cartography_table.take_result ui @s ~ ~1 ~ 0.5 1 0.5
