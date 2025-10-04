#>core_hc:class/select_by_number
#
# Selects the player's class by number.
#
# @input
#   value: int
#       Integer value of the selected class.

# set class score
$scoreboard players set @s hc.Class $(value)

# construct debug message
data modify storage hc:temp dbg_msg.text set value [ \
    "", \
    {selector:"@s"}, \
    " has selected the ", \
    {}, \
    " class", \
]
$data modify storage hc:temp dbg_msg.text[3] \
    set from storage \
    hc:main consts.classes[{id:$(value)}].name.fallback

# print message
function hipochallenge:msg/debug/send_info with storage hc:temp dbg_msg

# free memory
data remove storage hc:temp dbg_msg
