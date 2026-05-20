#>hc:ability/tank/kit3/spirit/target_cleanse
#
# Cleanses the spirit target attribute modifer from the player executing this
# function.
#
# @context minecraft:player

function hc:util/attribute/remove_modifier_array \
    with storage hc:main \
    consts.classes[{internal_name:"hc:tank"}].\
    kits[{id:3}].tank_k3_data.spirit.buff.modifiers
