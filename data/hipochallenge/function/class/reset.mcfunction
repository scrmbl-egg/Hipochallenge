#>hipochallenge:class/reset
#
# Resets the player's class.
#
# @context player

scoreboard players set @s hc.Class 0
function hipochallenge:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        " has reset their class.", \
    ], \
}

# reset all ability scores
function core_hc:score/reset_all_class_scores
