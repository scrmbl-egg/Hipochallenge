#>core_hc:equipment/armor/apply_trim
#
# Modifies the player's armor trim. Only happens if the material of the loot
# table trim is "quartz".
#
# @context player
# @input
#   slot: ::java::world::entity::mob::player::PlayerEquipmentSlot,
#       Player equipment slot where the armor item is located.
#   trim: ::java::world::component::predicate::TrimPredicate
#       Trim data that is going to be applied to the armor item.

$execute if data entity @s \
    equipment.$(slot).components."minecraft:trim"{material:"minecraft:quartz"} \
    run \
    item modify entity @s armor.$(slot) { \
        function:"minecraft:set_components", \
        components:{ \
            "minecraft:trim":$(trim), \
        }, \
    }
