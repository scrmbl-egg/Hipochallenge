#>hipochallenge:kit/reset
#
# Resets the player's kit.
#
# @context player

scoreboard players set @s hc.Kit 0
function hipochallenge:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        " has reset their kit.", \
    ], \
}
