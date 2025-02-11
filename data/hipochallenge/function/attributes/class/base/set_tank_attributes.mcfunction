# apply attributes
function hipochallenge:attributes/class/base/apply_class_attributes with storage minecraft:hipochallenge consts.classes.tank.attributes

# special cases

    # TODO: change function to support new constants
    # tank kit 3 starts with armor modifier
    execute if predicate hipochallenge:kit/is_kit3 run function hipochallenge:attributes/class/modifiers/tank/kit3/spirit/add_debuff
