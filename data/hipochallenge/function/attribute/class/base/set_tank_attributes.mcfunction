#>hipochallenge:attribute/class/base/set_tank_attributes
#
# Applies the class player attributes of the tank class.

function core_hc:attribute/class/apply_attributes \
    with storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"tank"}].attributes

# TODO: change function to support new constants
# tank kit 3 starts with armor modifier
#execute if predicate hipochallenge:kit/is_kit3 \
    run \
    function hipochallenge:attribute/class/modifiers/tank/kit3/spirit/add_owner_debuff
