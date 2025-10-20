#>core_hc:equipment/armor/apply_dyed_color
#
# Modifies the player's armor color. Only happens if the
# "hc:item/armor/apply_team_dye_color" custom data component is present in
# the item.
#
# @context player
# @input
#   slot: ::java::world::entity::mob::player::PlayerEquipmentSlot,
#       Player equipment slot where the armor item is located.
#   dyed_color: (#[canonical] #[color="composite_rgb"] int | #[color="dec_rgb"] [float] @ 3)
#       RGB of the color that is going to be applied to the armor item.

$item modify entity @s armor.$(slot) { \
    function:"minecraft:set_components", \
    components:{ \
        "minecraft:dyed_color":$(dyed_color), \
    }, \
}
