#>core_hc:util/on_login
#
# Executes the functions for a player who just returned to the game.
#
# @context player

# TODO: this function should probably handle the cases where the player leaves
# mid-game and returns. which includes making them join the hc.NotPlaying team,
# and warping/tping them to the lobby

#team join hc.NotPlaying

# play fx
function core_hc:fx/util/on_login

# display message
function hc:msg/private/send { \
    text:[ \
        { \
            translate:"hc.login_message", \
            fallback:"Welcome back to %1$s, %2$s!\n\n- Type \"%3$s\" in the chat to list all available triggers/commands.", \
            with:[ \
                "HIPOCHALLENGE: Phoenix", \
                {selector:"@s"}, \
                [ \
                    { \
                        text:"", \
                        hover_event:{ \
                            action:"show_text", \
                            value:[ \
                                "", \
                                { \
                                    translate:"hc.key_hint", \
                                    fallback:"[%1$s]: %2$s", \
                                    with:[ \
                                        { \
                                            translate:"key.mouse.left", \
                                            fallback:"Left Button", \
                                        }, \
                                        { \
                                            translate:"multiplayer.confirm_command.suggest_command", \
                                            fallback:"Copy to Chat Screen", \
                                            color:"white", \
                                        }, \
                                    ], \
                                    color:"gold", \
                                }, \
                            ], \
                        }, \
                        click_event:{ \
                            action:"suggest_command", \
                            command:"/trigger ls", \
                        }, \
                    }, \
                    {text:"/trigger ",color:"gray"}, \
                    {text:"ls",color:"aqua"}, \
                ], \
            ], \
        }, \
    ], \
}
# damn that's big - scrmbl-egg
