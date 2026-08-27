#>hc:util/attribute/add_modifier
#
# Adds an attribute modifier to the executing entity.
#
# @input
#   id: string
#       ID of the modifier.
#   attribute: #[id="attribute"] string
#       Attribute name.
#   value: double
#       Value of the attribute modifier.
#   operation: ::java::util::attribute::AttributeOperation
#       Attribute operation.

## NOTE:
# `hc:util/attribute/add_modifier_bulk` can't exist because adding modifiers can
# only be done one entity at a time. sucks
# - dani

$attribute @s $(attribute) modifier add $(id) $(value) $(operation)
