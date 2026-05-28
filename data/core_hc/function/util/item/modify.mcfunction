#>core_hc:util/item/modify
#
# Dynamically applies an item modifier to an item in a slot.
#
# @context entity
# @input
#   slot: ::java::world::entity::mob::player::PlayerEquipmentSlot
#       Equipment slot where the item will be modified.
#   modifier: (#[id="item_modifier"] string | ItemModifier)
#       Modifier that is going to be applied to the item.

$item modify entity @s $(slot) $(modifier)
