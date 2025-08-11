#>hipochallenge:attribute/class/base/set_marksman_attributes
#
# Applies the class player attributes of the marksman class.

function core_hc:attribute/class/apply_attributes \
    with storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"marksman"}].attributes
