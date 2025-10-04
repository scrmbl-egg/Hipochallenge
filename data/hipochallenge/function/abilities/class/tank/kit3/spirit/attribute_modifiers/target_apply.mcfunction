#>hipochallenge:abilities/class/tank/kit3/spirit/target_apply
#
# Applies the spirit target attribute modifer to the player executing this function
#
# @context minecraft:player

function hipochallenge:util/attribute/add_modifier_array \
    with storage hc:main \
    consts.classes[{internal_name:"tank"}].\
    kits[{id:3}].tank_k3_data.spirit.buff.modifiers
