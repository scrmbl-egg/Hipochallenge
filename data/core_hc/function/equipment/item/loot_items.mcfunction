#>core_hc:equipment/item/loot_items
#
# Gives the items of a kit from its loot tables.
# Warning: the item in the weapon.offhand slot is replaced.
#
# @context player
# @input
#   hotbar: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table for items that will be equipped in the player's hotbar.
#   offhand: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table for item which will be equipped in the player's offhand.

# hotbar
$loot replace entity @s container.0 loot $(hotbar)

# offhand
$loot replace entity @s weapon.offhand loot $(offhand)
