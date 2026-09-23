#>hc.core:equipment/item/loot_items
#
# Gives the items of a kit from its loot tables.
# Warning: the item in the weapon.offhand slot is replaced.
#
# @context player
# @input
#   hotbar: ::java::data::loot::LootTableRef
#       Loot table for items that will be equipped in the player's hotbar.
#   offhand: ::java::data::loot::LootTableRef
#       Loot table for item which will be equipped in the player's offhand.

# hotbar
$loot replace entity @s container.0 loot $(hotbar)

# offhand
$loot replace entity @s weapon.offhand loot $(offhand)
