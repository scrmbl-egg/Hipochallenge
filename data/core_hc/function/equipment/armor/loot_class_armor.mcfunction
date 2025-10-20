#>core_hc:equipment/armor/loot_class_armor
#
# Equips all the armor loot tables from the class.
#
# @context player
# @input
#   head: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table of the player's head slot item.
#   chest: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table of the player's chest slot item.
#   legs: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table of the player's legs slot item.
#   feet: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table of the player's feet slot item.

# head item
$loot replace entity @s armor.head loot $(head)

# chest item
$loot replace entity @s armor.chest loot $(chest)

# legs item
$loot replace entity @s armor.legs loot $(legs)

# feet item
$loot replace entity @s armor.feet loot $(feet)
