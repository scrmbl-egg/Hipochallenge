#>hipochallenge:attribute/class/base/set_assassin_attributes
#
# Applies the class player attributes of the assassin class.

function core_hc:attribute/class/apply_attributes \
    with storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"assassin"}].attributes
