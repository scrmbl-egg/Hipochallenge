#>hipochallenge:perk/reset
#
# Resets the player's perk.
#
# @context player

scoreboard players set @s perk 0
function hipochallenge:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        " has reset their perk.", \
    ], \
}
