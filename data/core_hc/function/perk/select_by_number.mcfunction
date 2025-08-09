#>core_hc:perk/select_by_number
#
# Selects the player's perk by number.
#
# @input
#   value: int
#       Integer value of the selected perk.

$scoreboard players set @s perk $(value)

$function hipochallenge:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        {text:" has selected perk number $(value)"}, \
    ], \
}
# TODO: see if in debug message, can put perk name instead of number
