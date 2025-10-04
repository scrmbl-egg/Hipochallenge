#>hc:perk/reset
#
# Resets the player's perk.
#
# @context player

scoreboard players set @s hc.Perk 0
function hc:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        " has reset their perk.", \
    ], \
}
