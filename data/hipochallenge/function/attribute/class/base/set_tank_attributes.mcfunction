# apply attributes
function core_hc:attribute/class/apply_attributes \
    with storage minecraft:hipochallenge consts.classes.tank.attributes

# special cases

# TODO: change function to support new constants
# tank kit 3 starts with armor modifier
#execute if predicate hipochallenge:kit/is_kit3 \
    run \
    function hipochallenge:attribute/class/modifiers/tank/kit3/spirit/add_owner_debuff
