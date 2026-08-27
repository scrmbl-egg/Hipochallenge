#>hc:util/attribute/remove_modifier
#
# Removes an attribute modifier from the player.
#
# @context entity
# @input
#   id: string
#       ID of the modifier.
#   attribute: #[id="attribute"] string
#       Attribute name.

$attribute @s $(attribute) modifier remove $(id)
