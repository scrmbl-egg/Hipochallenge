#>core_hc:fx/equipment/equip_armor
#
# Runs the visual and sound effects for equipping armor.
#
# @context player
# @input
#   dust_color: [float] @ 3
#       Color of the dust particles.

$particle minecraft:dust{color:$(dust_color),scale:3} \
    ~ ~1 ~ 0.333 0.75 0.333 1 60 normal
