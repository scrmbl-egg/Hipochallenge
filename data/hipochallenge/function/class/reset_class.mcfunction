scoreboard players set @s class 0
function hipochallenge:msg/debug/send_info { \
    text:[ \
        {selector:"@s"}, \
        {text:" has reset their class."}, \
    ], \
}

# reset all ability scores
function core_hc:score/reset_all_class_scores
