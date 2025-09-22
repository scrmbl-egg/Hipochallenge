#>hipochallenge:abilities/class/tank/kit3/spirit/owner_apply
#
# Applies the spirit owner attribute modifer to the player executing this function
#
# @context minecraft:player

function hipochallenge:util/attribute/add_modifier_array \
    with storage minecraft:hipochallenge \
    consts.classes[{internal_name:"tank"}].\
    kits[{id:3}].tank_k3_data.spirit.owner_debuff.modifiers
