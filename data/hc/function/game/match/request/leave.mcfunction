#>hc:game/match/request/leave
#
# Makes the player leave the match request.
#
# @context player

# play sound
playsound minecraft:ui.stonecutter.take_result ui @s ~ ~1 ~ 0.5 1 0.5

# remove tags (match host tag is removed too)
tag @s remove hc.WillJoinMatch
tag @s remove hc.MatchHost

# disable ability to cancel request if you are host
scoreboard players reset @s cancel

# enable `join` trigger
scoreboard players enable @s join

## msgs
# announce to everyone the player will NOT join
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
        translate:"hc.msg.private.player_will_not_join_match", \
        fallback:"You will not join the match. You can type \"%s\" to join again", \
        with:[ \
            { \
                translate:"", \
                fallback:"/trigger %s", \
                color:"gray", \
                with:[{text:"join",color:"aqua"}], \
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
                    command:"/trigger join", \
                }, \
            }, \
        ], \
    }, \
}
