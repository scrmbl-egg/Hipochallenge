#>core_hc:kit/select_by_number
#
# Selects the player's kit by number.
#
# @input
#   value: int
#       Integer value of the selected kit.

$scoreboard players set @s hc.Kit $(value)

$function hc:msg/debug/send_info { \
    text:[ \
        "", \
        {selector:"@s"}, \
        {text:" has selected kit number $(value)"}, \
    ], \
}
# TODO: see if in debug message, can put kit name instead of number
