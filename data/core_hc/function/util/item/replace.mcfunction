#>core_hc:util/item/replace
#
# Performs the `loot replace` command with dynamic parameters.
#
# @context (player | minecraft:mannequin)
# @input
#   slot: ::java::world::entity::mob::player::PlayerEquipmentSlot
#       Equipment slot where the item will be replaced.
#   loot_table: (#[id="loot_table"] string | ::java::data::loot::LootTable)
#       Loot table that will be inserted in the slot.

$loot replace entity @s $(slot) loot $(loot_table)
