#>hc.core:ability/assassin/kit1/clear_crystal_amulet
#
# Clears the crystal amulet item from the player, and plays some fx.
#
# @context player

# clear item
clear @s *[ \
    minecraft:custom_data~{"hc:item/id":"hc:assassin/kit1/crystal_amulet"} \
] 1

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/assassin/kit1/crystal_amulet_cleared
