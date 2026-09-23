#>hc.core:equipment/armor/loot_class_armor
#
# Equips all the armor loot tables from the class.
#
# @context player
# @input
#   head: ::java::data::loot::LootTableRef
#       Loot table of the player's head slot item.
#   chest: ::java::data::loot::LootTableRef
#       Loot table of the player's chest slot item.
#   legs: ::java::data::loot::LootTableRef
#       Loot table of the player's legs slot item.
#   feet: ::java::data::loot::LootTableRef
#       Loot table of the player's feet slot item.

# head item
$loot replace entity @s armor.head loot $(head)

# chest item
$loot replace entity @s armor.chest loot $(chest)

# legs item
$loot replace entity @s armor.legs loot $(legs)

# feet item
$loot replace entity @s armor.feet loot $(feet)
