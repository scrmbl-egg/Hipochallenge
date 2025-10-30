#>core_hc:ability/assassin/kit1/clear_crystal_amulet
#
# Clears the crystal amulet item from the player, and plays some fx.
#
# @context player

# clear item
clear @s *[minecraft:custom_data~{"hc:item/id":"assassin_k1_crystal_amulet"}] 1

# play fx
execute at @s \
    run \
    function core_hc:fx/ability/assassin/kit1/crystal_amulet_cleared
