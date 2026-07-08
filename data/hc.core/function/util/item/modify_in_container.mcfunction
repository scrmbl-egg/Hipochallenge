#>hc.core:util/item/modify_in_container
#
# Applies an item modifier in a specific "container.*" equipment slot.
#
# @context player
# @input
#   index: int @ 0..35
#       Index of the container. Must be from 0 to 35 (inclusive).
#   modifier: (#[id="item_modifier"] string | ItemModifier)
#       Modifier that is going to be applied to the item.

# TODO: in the future, a better function for this should go into mc_std

$item modify entity @a container.$(index) $(modifier)
