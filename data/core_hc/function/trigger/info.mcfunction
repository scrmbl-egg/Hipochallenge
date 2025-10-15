#>core_hc:trigger/info
#
# Trigger for displaying information dialog for guiding new players.
#
# @context player

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

# reset and re-enable
scoreboard players reset @s info
scoreboard players enable @s info
