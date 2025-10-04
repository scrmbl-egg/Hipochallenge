#>hc:attribute/remove_modifier
#
# Removes an attribute modifier from the player.
#
# @context player
# @input
#   id: string
#       ID of the modifier.
#   attribute: #[id="attribute"] string
#       Attribute name.

$attribute @s $(attribute) modifier remove $(id)
