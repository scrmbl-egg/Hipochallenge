#>core_hc:class/select_by_number
#
# Selects the player's class by number.
#
# @input
#   value: int
#       Integer value of the selected class.

$scoreboard players set @s class $(value)

$function hipochallenge:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        {text:" has selected class number $(value)"}, \
    ], \
}
# TODO: in debug message, put class name instead of number
