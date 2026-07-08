#>hc:ability/tank/kit2/give_trident
#
# Gives the player a new trident. This is called after the trident cooldown
# is over.
#
# @context player

# loot trident
loot give @s loot hc:class/tank/item/kit2/trident

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/tank/kit2/trident_given
