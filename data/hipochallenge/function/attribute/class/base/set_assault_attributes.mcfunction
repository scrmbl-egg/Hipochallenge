#>hipochallenge:attribute/class/base/set_assault_attributes
#
# Applies the class player attributes of the assault class.

function core_hc:attribute/class/apply_attributes \
    with storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"assault"}].attributes
