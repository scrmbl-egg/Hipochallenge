#>hipochallenge:attribute/add_modifier
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

$attribute @s $(attribute) modifier add $(id) $(value) $(operation)
