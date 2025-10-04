#>hc:kit/reset
#
# Resets the player's kit.
#
# @context player

scoreboard players set @s hc.Kit 0
function hc:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        " has reset their kit.", \
    ], \
}
